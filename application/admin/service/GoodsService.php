<?php
namespace app\admin\service;

use app\admin\model\Goods;
use thans\jwt\exception\JWTException;
use thans\jwt\exception\TokenExpiredException;
use thans\jwt\exception\TokenInvalidException;
use thans\jwt\facade\JWTAuth;
use think\Db;


/**
 * 商品服务
 * Class LoginService
 * @package app\admin\service
 */
class GoodsService extends Service {

    protected function initialize()
    {
        $this->model = new Goods();
    }

    /**
     * 获取商品列表
     * @param $request
     * @return \think\Paginator
     * @throws \think\exception\DbException
     */
    public function getAdminGoodsList($request){
        $input = $request->param();
        $where[] = ['tp_goods.status', '>=', -1];
        if (!empty($input['name'])) $where[] = ['tp_goods.name', 'like', '%' . $input['name'] . '%'];
        if (!empty($input['status']) && $input['status'] != 0) $where[] = ['tp_goods.status', '=', $input['status']];
        if (!empty($input['date_star']) && empty($input['date_end'])) {
            $where[] = ['tp_goods.create_time', '>=', strtotime($input['date_star'])];
        } elseif (empty($input['date_star']) && !empty($input['date_end'])) {
            $where[] = ['tp_goods.create_time', '<=', strtotime($input['date_end'])];
        } elseif (!empty($input['date_star']) && !empty($input['date_end'])) {
            $where[] = ['tp_goods.create_time', '>=', strtotime($input['date_star'])];
            $where[] = ['tp_goods.create_time', '<',strtotime($input['date_end'])];
        }
        $list = $this->model
            ->field('tp_goods.*,tp_category.category_name')
            ->where($where)
            ->join('tp_category', 'tp_category.id = tp_goods.category_id')
            ->order(['tp_goods.sort' => 'desc', 'tp_goods.id' => 'desc'])
            ->paginate(20);
        return $list;
    }

    /**
     * 添加商品
     * @param $data
     * @return bool
     */
    public function create($data){
        $data['create_time'] = time();
        $data['pic'] = trim($data['pic'], ',');
        $res = $this->model->insert($data);
        if($res){
            return true;
        }else{
            return  false;
        }
    }

    public function find($field, $value, $columns = ['*']){
        return $this->model->field($columns)->where($field,$value)->find();
    }

    /**
     * 删除商品图库
     * @param $path
     * @param $goods_id
     * @return false|mixed
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function deleteGoodsImage($path, $goods_id)
    {
        //从商品图册中移除
        $goods_info = $this->model->where('id', $goods_id)->find();
        $pic_array = explode(',', trim($goods_info['pic'], ','));
        foreach ($pic_array as $k => $item) {
            if ($item == $path) {
                unset($pic_array[$k]);
            }
        }
        $last_path = implode(',', $pic_array);
        $res = $this->model->where('id', $goods_id)->update(['pic' => $last_path]);
        if (!$res) return false;


        //查询图册
        $res = $this->model->field('pic')->where('id', $goods_id)->find();
        return $res['pic'];
    }


    /**
     * 修改商品
     * @param $request
     * @return bool
     */
    public function updateGoods($request){
        $input = $request->param();
        $input['pic'] = trim($input['pic'], ',');
        $goods = $this->model->find($input['id']);
        if ($goods){
            if($request->file()){
                $res = upload_file($request->file('thumb'), 'goods', 'image');
                if (!$res['status']){
                    return __error('图片修改失败！');
                }
                $input['thumb'] = $res['path'];
            }
            $isUpdate = $goods->update($input);
            if ($isUpdate){
                return true;
            }
            return false;
        }
        return false;
    }


    /**
     * 通过分类id（或搜索）获取商品列表
     * @param $request
     * @param $lang
     * @return array|false|\think\Paginator
     * @throws \think\exception\DbException
     */
    public function getGoodsListByCon($request,$lang)
    {
        $input = $request->param();
        if(empty($input['pageNumber'])){
            $pageNumber = 20;
        }else{
            $pageNumber = $input['pageNumber'];
        }
        if (empty($input['status'])) {
            $input['status'] = 1;
        }
        $where = [];
        if($lang == 'cn'){
            $field = 'id,name,thumb,sell_num,sell_price,market_price';
            if (!empty($input['key'])) {
                $where[] = ['name', 'like', '%' . $input['key'] . '%'];
            }
        }else{
            if (!empty($input['key'])) {
                $where[] = ['english_name', 'like', '%' . $input['key'] . '%'];
            }
            $field = 'id,english_name as name,thumb,sell_num,sell_price,market_price';
        }

        if (!empty($input['category_id'])) {
            $where[] = ['category_id', '=', $input['category_id']];
        }
        $where[] = ['status', '=', '1'];

        if ($input['status'] == 1) {
            //综合
            $list = $this->model
                ->where($where)
                ->order('sort desc')->field($field)
                ->paginate($pageNumber);
        }
        if ($input['status'] == 2) {
            //销量
            $list = $this->model
                ->where($where)
                ->order('sell_num desc')->field($field)
                ->paginate($pageNumber);
        }
        if ($input['status'] == 3) {
            //最新
            $list = $this->model
                ->where($where)
                ->order('id desc')->field($field)
                ->paginate($pageNumber);
        }

        if ($list) {
            return $list;
        } else {
            return [];
        }
    }

    /**
     * 获取商品详情
     * @param $id
     * @param $lang
     * @return array|bool|\PDOStatement|string|\think\Model|null
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getGoodsInfoById($id,$lang)
    {
        $field = 'id,name,sell_num,status,sell_price,market_price,pic,content,describe,sell_num,sell_price,market_price,sku,attr,delivery_place,english_name,english_describe,stock,area,create_time';

        $goodsInfo = $this->model->field($field)->where('id', '=', $id)->find();
        if ($goodsInfo['status'] != 1) {
            return false;
        }
        if($lang == 'en'){
            $goodsInfo['name'] = $goodsInfo['english_name'];
            $goodsInfo['describe'] = $goodsInfo['english_describe'];
        }
        $goodsInfo['create_time'] = date("Y-m-d",$goodsInfo['create_time']);
        unset($goodsInfo['english_name'],$goodsInfo['english_describe']);
        //商品轮播图
        $goodsInfo['pic'] = explode(',', $goodsInfo['pic']);
        $goodsInfo['delivery_place'] = explode(',', $goodsInfo['delivery_place']);
        $goodsInfo['attr'] = explode(',', $goodsInfo['attr']);

        $_url = 'http://' . $_SERVER['HTTP_HOST'];
        $goodsInfo['content'] = preg_replace("/src=\"\//", 'src="' . $_url . '/', ($goodsInfo['content']));

        //收藏
        $goodsInfo['goodsKeep'] = 'no';
        $token = JWTAuth::getToken();
        if (!empty($token)) {
            try {
                if (!$user_info = JWTAuth::toUser()) {
                    return $goodsInfo;
                }
            } catch (TokenExpiredException $e) {
                return $goodsInfo;
            } catch (TokenInvalidException $e) {
                return $goodsInfo;
            } catch (JWTException $e) {
                return $goodsInfo;
            }
            $userInfo = JWTAuth::toUser();
            if (!empty($userInfo)) {
                $collect = DB::name('collect')->where(['user_id' => $userInfo['user_id'], 'goods_id' => $id])->find();
                if (!empty($collect)) {
                    $goodsInfo['goodsKeep'] = 'yes';
                }
            }
        }

        if($goodsInfo){
            return $goodsInfo;
        }else{
            return false;
        }
    }

    /**
     * 直接购买
     * @param $id
     * @param $num
     * @param $user_id
     * @param $type
     * @return array|int|\think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function buyGoods($id,$num,$user_id,$type,$attr,$color,$delivery_place)
    {
        if($type == 1){
            $info = Db::name('goods')->where('id','=',$id)->find();
            if($num>$info['stock']){
                return -1;
            }
        }else{
            $info = Db::name('find_goods')->where('id',$id)->find();
            if($info['status']!=2){
                return -3;
            }
        }
        $data =array($id . '_' . $num . '_' . $user_id . '_' . $type . '_' . $attr . '_' . $color . '_' . $delivery_place);
        $return = base64_encode(serialize($data));
        return $return;
    }

    /**
     * 确认订单页面
     * @param $str
     * @return array|bool|int
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function order($str){
        if (empty($str)) {
            return false;
        }
        $array = unserialize(base64_decode($str));
        $list = array();
        foreach ($array as $key => $value) {
            $str_array = explode('_', $value);
            $list[$key] = array(
                'goods_id' => $str_array[0],
                'num' => $str_array[1],
                'user_id' => $str_array[2],
                'type' => $str_array[3],
                'attr' => $str_array[4],
                'color' => $str_array[5],
                'delivery_place' => $str_array[6],
            );
            if (!empty($str_array[7])) {
                $list[$key]['shopping_id'] = $str_array[7];
            }
        }
        $zong_price = 0;
        $goods_list = [];
        foreach ($list as $k => $v){
            if($v['type'] == 1){
                $goods_info = Db::name('goods')->field('id,name,english_name,thumb,sell_price,stock,sku,describe,english_describe')->where('id','=',$v['goods_id'])->find();
                if($v['num']>$goods_info['stock']){
                    return -1;
                }
                $attr = $v['attr'];
                $color = $v['color'];
            }else{
                $goods_info = Db::name('find_goods')->field('id,name,image as thumb,sku,sell_price,status,desc as describe')->where('id',$v['goods_id'])->find();
                $goods_info['english_name'] = '';
                if($goods_info['status']!=2){
                    return -2;
                }
                $attr = '-';
                $color = '-';
            }
            $price = $goods_info['sell_price'] * $v['num'];
            $zong_price += $price;
            $goods_list['goods_list'][$k] = $goods_info;
            $goods_list['goods_list'][$k]['num'] = $v['num'];
            $goods_list['goods_list'][$k]['attr'] = $attr;
            $goods_list['goods_list'][$k]['color'] = $color;
            $goods_list['goods_list'][$k]['delivery_place'] = $v['delivery_place'];
            $type = $v['type'];

            if (!empty($v['shopping_id'])) {
                $goods_list['goods_list'][$k]['shopping_id'] = $v['shopping_id'];
            }
        }
        $goods_list['type'] = $type;
        $goods_list['price'] = $zong_price;
        $goods_list['str'] = $str;
        return $goods_list;
    }

    /**
     * 创建订单
     * @param $id
     * @param $num
     * @param $user_id
     * @param $address_id
     * @return array|int
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function createOrder($data,$user_id,$address_id)
    {
        $res = $this->order($data);
        if ($res == -1) {
            return -1;
        }
        if ($res == -2) {
            return -2;
        }
        $address_info = Db::name('address')->where(['id' => $address_id])->find();
        $order_data = [
            'user_id' => $user_id,
            'order_num' => 'Sp_' . date('YmdH', time()) . rand(1000, 9999),
            'pay_price' => $res['price'],
            'country' => $address_info['country'],
            'province' => $address_info['province'],
            'city' => $address_info['city'],
            'area' => $address_info['area'],
            'addr' => $address_info['address'],
            'postcode' => $address_info['postcode'],
            'phone' => $address_info['phone'],
            'name' => $address_info['name'],
            'add_time' => time(),
            'type' => $res['type']
        ];
        $status = 1;
        Db::startTrans();
        try {
            $order_id = Db::name('order_info')->insertGetId($order_data);
            if($order_id<=0) $status = 0;
            $i = $order_id;
            foreach ($res['goods_list'] as $ey => $val) {
                $_data = [
                    'order_goods_number' => date('YmdHis', time()) . $i++ . $user_id,
                    'order_id' => $order_id,
                    'goods_id' => $val['id'],
                    'user_id' => $user_id,
                    'price' => $val['sell_price'],
                    'num' => $val['num'],
                    'goods_name' => $val['name'],
                    'english_name' => $val['english_name'],
                    'intro' => $val['describe'],
                    'english_intro' => $val['english_describe'],
                    'goods_thumb' => $val['thumb'],
                    'attr' => $val['attr'],
                    'color' => $val['color'],
                    'sku' => $val['color'],
                    'delivery_place' => $val['delivery_place'],
                ];
                $order_goods__id = DB::name('order_goods')->insert($_data);
                if ($order_goods__id <= 0) $status = 0;

                //减库存
                $goods_info = Db::name('goods')->where('id',$val['id'])->find();
                $stock =$goods_info['stock'] - $val['num'];
                $row = Db::name('goods')->where('id',$val['id'])->update(['stock' => $stock]);
                if($row<=0) $status = 0;
                //删购物车
//                if(!empty($val['shopping_id'])){
//                    $_shopping = DB::name('shopping_cart')->where(['id' => $val['shopping_id']])->delete();
//                    if($_shopping<=0) $status = 0;
//                }
            }

            if($status == 0) {
                Db::rollback();
                return -3;
            }

        }catch (Exception $e) {
            Db::rollback();
            return -3;
        }
        // 提交事务
        Db::commit();
        return ['order_id' => $order_id];
    }


    /**
     * 购物车结算
     * @param $user_id
     * @param $data
     * @return int|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function shoppingCart($user_id,$data)
    {
        $shop_list_arr = explode(',', $data);
        $shop_list = [];
        foreach ($shop_list_arr as $k => $v) {
            $str_arr = explode('_', $v);
            $shop_id = $str_arr[0];
            $num = $str_arr[1];
            $shop_list[] = [
                'shop_id' => $shop_id,
                'num' => $num,
            ];
        }
        $data = [];
        foreach ($shop_list as $key => $val) {
            $shopping_info = Db::name('shopping_cart')
                ->field('tp_shopping_cart.*,tp_goods.stock')
                ->where(['tp_shopping_cart.id' => $val['shop_id'], 'tp_goods.status' => 1])
                ->join('tp_goods', 'tp_goods.id = tp_shopping_cart.goods_id')
                ->find();
            if (empty($shopping_info)) {
                return -1;
            }
            if ($val['num'] > $shopping_info['stock']) {
                return -2;//库存不足
            }
            $data[] = $shopping_info['goods_id'] . '_' . $val['num']  . '_' . $user_id . '_' . '1' . '_' . $shopping_info['attr'] . '_' . $shopping_info['color'] . '_' . $shopping_info['delivery_place'] . '_' . $shopping_info['id'];
        }
        $return = base64_encode(serialize($data));
        return $return;
    }

    /**
     * 订单支付页面
     * @param $user_id
     * @param $order_id
     * @return array|int
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function payOrder($user_id, $order_id)
    {
        $order_info = DB::name('order_info')->where(['id' => $order_id])->find();
        if ($order_info['user_id'] != $user_id) {
            return -1;
        }
        if ($order_info['pay_status'] > 0) {
            return -2;
        }
        $data = [
            'order_id' => $order_info['id'],
            'order_num' => $order_info['order_num'],
            'pay_price' => $order_info['pay_price'],

        ];
        return $data;

    }





    /**
     * 收藏
     * @param $goods_id
     * @param $user_id
     * @return int
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function collect($goods_id,$user_id)
    {
        $collect = DB::name('collect')->where(['user_id' => $user_id, 'goods_id' => $goods_id])->find();
        if (empty($collect)) {
            $data = [
                'user_id' => $user_id,
                'goods_id' => $goods_id,
            ];
            $result = DB::name('collect')->insert($data);
            if ($result) {
                return 1;
            } else {
                return 1002;
            }
        } else {
            $result = DB::name('collect')->where('id', '=', $collect['id'])->delete();
            if ($result) {
                return 2;
            } else {
                return 1002;
            }
        }

    }

    /**
     * 加入购物车
     * @param $goods_id
     * @param $num
     * @param $user_id
     * @return int
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function addShopping($goods_id,$num,$user_id,$attr, $color,$delivery_place)
    {
        $goods_info = $this->find('id',$goods_id);

        if (count($goods_info) <= 0 || $goods_info['stock'] < $num) {
            return -1; //库存不足
        }
        $res = Db::name('shopping_cart')
            ->where([
                'goods_id' =>  $goods_id,
                'user_id'  =>  $user_id,
                'attr'  =>  $attr,
                'color'  =>  $color,
                'delivery_place'  =>  $delivery_place,
            ])->find();
        if($res){
            $num =$res['num'] + $num;
            $row =Db::name('shopping_cart')->where('id',$res['id'])->update(['num' => $num]);
            if($row){
                return 1;
            }else{
                return -2; //加入失败
            }
        }else{
            $data = [
                'goods_id' => $goods_id,
                'user_id' => $user_id,
                'num' => $num,
                'attr'  =>  $attr,
                'color'  =>  $color,
                'delivery_place'  =>  $delivery_place,
                'price' => $goods_info['sell_price'],
                'create_time'  =>  time()
            ];
            $row =Db::name('shopping_cart')->insert($data);
            if ($row > 0) {
                return 1;
            } else {
                return -2; //加入失败
            }

        }

    }












}