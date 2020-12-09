<?php

namespace app\api\controller\v1;

use app\api\controller\Base;
use thans\jwt\facade\JWTAuth;
use think\Db;
use think\Request;

class Goods extends Base
{


    protected  $goods;
    protected function initialize()
    {
        $this->goods = $this->app->make(\app\admin\service\GoodsService::class);
    }


    /**
     * 商品分类
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function category()
    {
        if($this->lang == 'cn'){
            $field = 'id,category_name';
        }else{
            $field = 'id,english_name as category_name';
        }

        $list = Db::name('category')->field($field)->where(['parent_id' => 0])->order('sort', 'asc')->select();
        foreach ($list as $key => $item) {
            $_list = Db::name('category')->field($field)->where(['parent_id' => $item['id']])->select();
            foreach ($_list as $_key => $_item){
                $_list[$_key]['child'] = Db::name('category')->field($field)->where(['parent_id' => $_item['id']])->order('sort', 'asc')->select();
            }
            $list[$key]['child'] = $_list;
        }
        return __success('success',$list);
    }

    /**
     * 商品一级分类
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getFirstCategory()
    {
        if($this->lang == 'cn'){
            $field = 'id,category_name';
        }else{
            $field = 'id,english_name as category_name';
        }
        $list = Db::name('category')->field($field)->where(['parent_id' => 0])->order('sort', 'asc')->select();
        return __success('success',$list);
    }

    /**
     * 获取下级分类
     * @param Request $request
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getNextCategory(Request $request)
    {
        $id = $request->param('id');
        if(empty($id)){
            return __error('The superior id cannot be empty！');
        }
        if($this->lang == 'cn'){
            $field = 'id,category_name';
        }else{
            $field = 'id,english_name as category_name';
        }

        $list = Db::name('category')->field($field)->where(['parent_id' => $id])->order('sort', 'asc')->select();
        return __success('success',$list);
    }



    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index(Request $request)
    {
        //
        $list = $this->goods->getGoodsListByCon($request,$this->lang);
        return __success('success',$list);
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
    public function read(Request $request)
    {
        $id = $request->param('id');
        if(empty($id)){
            return __error('Product id cannot be empty！');
        }

        $goodsInfo = $this->goods->getGoodsInfoById($id,$this->lang);

        if(!$goodsInfo){
            return __error('The product does not exist or has been removed！');
        }
        return __success('success',$goodsInfo);
    }

    /**
     * 收藏
     * @param Request $request
     * @return \think\response\Json
     */
    public function collect(Request $request)
    {
        $goods_id = $request->get('goods_id');
        if(empty($goods_id)){

            return __error('Product id cannot be empty！');

        }

        $result = $this->goods->collect($goods_id,$this->getUserId());
        if($result == 1){

            return __success('success');

        }

        if($result == 2){

            return __success('success');

        }

        if($result == 1002){

            return __error('error');

        }
    }

    /**
     * 加入购物车
     * @param Request $request
     * @return \think\response\Json
     */
    public function addCar(Request $request)
    {
        $goods_id = $request->post('goods_id');
        $num = $request->post('num');
        $attr = $request->post('attr');
        $color = $request->post('color');
        $delivery_place = $request->post('delivery_place');
        if(empty($goods_id)){
            return __error('Product id cannot be empty！');
        }
        if(empty($num) || $num<=0){
            return __error('Quantity must be greater than 0！');
        }

        $res = $this->goods->addShopping($goods_id, $num,$this->getUserId(), $attr, $color,$delivery_place);
        if($res == 1){
            return __success('success');
        }elseif ($res == -1){
            return __error('Inventory shortage！');
        }else{
            return __error('error');
        }
    }

    /**
     * 直接购买
     * @param Request $request
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function buy(Request $request)
    {
        $input = $request->param();
        if(empty($input['id'])){

            return __error('Missing parameter id！');
        }

        if(empty($input['type'])){
            return __error('Type cannot be empty！');
        }

        if(empty($input['num']) || $input['num']<=0){

            return __error('Quantity must be greater than 0！');

        }

        $user_info = Db::name('user')->find($this->getUserId());

        if($user_info['status'] == 0){

            return __error('This account has been disabled, operation is prohibited！');

        }

        $res = $this->goods->buyGoods($input['id'], $input['num'], $user_info['id'], $input['type'], $input['attr'], $input['color'], $input['delivery_place']);
        if($res == -1){
            return __error('Inventory shortage！');
        }elseif ($res == -2){
            return __error('error');
        }elseif ($res == -3){
            return __error('No supply！');
        }else{
            return __success('success',$res);
        }
    }

    /**
     * 确认订单页面
     * @param Request $request
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function order(Request $request){

        $input = $request->param();

        if(empty($input['data'])){

            return __error('Parameter error！');

        }

        $user_info = Db::name('user')->find($this->getUserId());
        if($user_info['status'] == 0){

            return __error('This account has been disabled, operation is prohibited！');

        }

        $res = $this->goods->order($input['data']);

        if($res == -1){
            return __error('Inventory shortage！');
        }elseif ($res == -2){
            return __error('No supply！');
        }else{
            return __success('success',$res);
        }

    }


    /**
     * 创建订单
     * @param Request $request
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function createOrder(Request $request)
    {

        $input = $request->param();

        if(empty($input['data'])){

            return __error('Parameter error！');

        }

        if(empty($input['address_id'])){

            return __error('Please select the delivery address！');

        }

        $count = Db::name('address')->where(['id' => $input['address_id']])->count();

        if($count<=0){

            return __error('Delivery address does not exist！');

        }

        $user_info = Db::name('user')->find($this->getUserId());

        if($user_info['status'] == 0){

            return __error('This account has been disabled, operation is prohibited！');

        }
        $res = $this->goods->createOrder($input['data'], $user_info['id'], $input['address_id']);
        if($res == -1){
            return __error('Inventory shortage！');
        }elseif ($res == -2){
            return __error('No supply！');
        }elseif ($res == -3){
            return __error('error');
        }else{
            return __success('success',$res);
        }


    }


    /**
     * 购物车结算
     * @param Request $request
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function shoppingCart(Request $request)
    {
        $input = $request->param();
        if(empty($input['data'])){
            return __error('Parameter error！');
        }

        $user_info = Db::name('user')->find($this->getUserId());

        if($user_info['status'] == 0){

            return __error('This account has been disabled, operation is prohibited！');

        }

        $res = $this->goods->shoppingCart($user_info['id'],$input['data']);

        if($res == -1){

            return __error('There are no products！');

        }elseif ($res == -2){

            return __error( 'Products with insufficient inventory！');

        }else{

            return __success('success', $res);

        }

    }

    /**
     * 订单支付页面
     * @param Request $request
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function payOrder(Request $request)
    {

        $input = $request->param();

        if(empty($input['id'])){

            return __error('Missing order id.');

        }

        $user_info = Db::name('user')->find($this->getUserId());

        if($user_info['status'] == 0){

            return __error('This account has been disabled, operation is prohibited.');

        }

        $res = $this->goods->payOrder($user_info['id'], $input['id']);

        if($res == -1){

            return __error('The paying user and the order user id are inconsistent.');

        }elseif ($res == -2){

            return __error('Order has been paid, please do not repay.');

        }else{

            return __success('success', $res);

        }

    }



    /**
     * 找货确认订单页面
     * @param Request $request
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function release_order(Request $request)
    {
        $id = $request->param('id');
        if (empty($id)) {
            return __error('Missing parameter id！');
        }
        $goods_info = Db::name('find_goods')->field('id,name,image as thumb,sku,sell_price,status')->where('id', $id)->find();
        if($goods_info['status']!=2){
            return __error('No supply！');
        }
        $goods_info['num'] = 1;
        return __success('success', $goods_info);
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
