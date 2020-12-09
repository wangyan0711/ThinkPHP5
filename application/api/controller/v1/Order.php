<?php

namespace app\api\controller\v1;

use app\api\controller\Base;
use think\Db;
use think\Request;

class Order extends Base
{


    /**
     * 我的订单列表
     * @param Request $request
     * @return \think\response\Json
     * @throws \think\exception\DbException
     */
    public function getOrderList(Request $request)
    {
        $where[] = ['user_id', '=', $this->getUserId()];
        $where[] = ['status', '<>', -2];
        if(empty($request->get('pageNumber'))){
            $pageNumber = 20;
        }else{
            $pageNumber = $request->get('pageNumber');
        }
        if($request->get('status')){
            $where[] = ['status', '=', $request->get('status')];
        }
        if($this->lang == 'cn'){
            $field = 'price,num,goods_thumb,goods_name,sku,intro';
        }else{
            $field = 'price,num,goods_thumb,english_name as goods_name,sku,english_intro as intro';
        }
        $order_list = Db::name('order_info')->where($where)->field('id,order_num,add_time,pay_price,status')->order('id','desc')->paginate($pageNumber)->toArray();
        foreach ($order_list['data'] as $key => $val){
            $order_list['data'][$key]['add_time'] = date("Y-m-d", $val['add_time']);
            $goods_list = Db::name('order_goods')
                ->field($field)
                ->where('order_id',$val['id'])
                ->select();
            foreach ($goods_list as $k => $v){
                if( $v["goods_thumb"] && substr($v["goods_thumb"], 0, 7) !== "http://" && substr($v["goods_thumb"], 0, 8) !== "https://" && substr($v["goods_thumb"], 0, 2) !== "//" ){
                    $goods_list[$k]['goods_thumb'] = 'http://'.$_SERVER['HTTP_HOST'].$v['goods_thumb'];
                }

            }
            $order_list['data'][$key]['goods_list'] = $goods_list;
        }
        return __success('success',$order_list);

    }

    /**
     * 改变订单状态
     * @param Request $request
     * @return \think\response\Json
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function changeStatus(Request $request)
    {
        $id = $request->get('id');
        $status = $request->get('status');
        $order_info = Db::name('order_info')->where('id',$id)->find();
        $data = '';
        switch ($status){
            //收货
            case 3:
                if ($order_info['status'] != 2) {
                    $data = 0;
                    break;
                }
                $res = Db::name('order_info')->where('id', $id)->update(['status' => 3, 'shou_time' => time()]);
                if($res){
                    $data = 1;
                }else{
                    $data = 0;
                }
                break;
            case -2:
                $status = array(-1, 3);
                if (!array_search($order_info['status'], $status)) {
                    $data = 0;
                    break;
                }
                Db::startTrans();
                try {
                    $res = DB::name('order_info')->where(['id' => $id])->update(['status' => -2]);
                    $ress = DB::name('order_goods')->where(['order_id' => $id])->update(['status' => -2]);
                    // 提交事务
                    if ($res && $ress) {
                        DB::commit();
                        $data = 1;
                    } else {
                        DB::rollback();
                        $data = 0;
                    }
                } catch (\Exception $e) {
                    // 回滚事务
                    Db::rollback();
                    $data = 0;
                }
                break;
        }

        if($data == 1){
            return __success('success');
        }else{
            return __error('error');
        }

    }


    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        //
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        //
    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
        //
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        //
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        //
    }
}
