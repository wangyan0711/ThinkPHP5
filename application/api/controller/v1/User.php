<?php

namespace app\api\controller\v1;

use app\api\controller\Base;
use thans\jwt\middleware\JWTAuth;
use think\Db;
use think\Request;

class User extends Base
{
    protected $userService;
    protected $addressService;

    public function __construct()
    {
        parent::__construct();
        $this->userService = $this->app->make(\app\api\service\UserService::class);
        $this->addressService = $this->app->make(\app\api\service\AddressService::class);
    }

    /**
     * 获取用户信息
     * @return \think\response\Json
     */
    public function getUserInfo()
    {
        $user_info = $this->userService->profile($this->getUserId());
        return __success('success', $user_info);
    }


    /**
     * 修改密码
     * @param Request $request
     * @return \think\response\Js
     *
     * on
     */
    public function updatePassword(Request $request)
    {
        $post = $request->post();
        if(empty($post['old_password'])){
            return __error('Old password cannot be empty！');
        }
        if(empty($post['new_password'])){
            return __error('New password cannot be empty！');
        }
        if($post['old_password'] == $post['new_password']){
            return __error('The old password and the new password cannot be the same！');
        }
        if(empty($post['confirmation_password'])){
            return __error('Confirm password cannot be empty！');
        }

        if($post['new_password']!=$post['confirmation_password']){
            return __error('Inconsistent passwords！');
        }

        return $this->userService->updatePassword($post,$this->getUserId());
    }


    /**
     * 修改用户资料
     * @param Request $request
     * @return mixed
     */
    public function updateUserInfo(Request $request)
    {
        return $this->userService->updateUserInfo($request,$this->getUserId());
    }


    /**
     * 地址列表
     * @param Request $request
     * @return \think\response\Json
     */
    public function addressList(Request $request)
    {
        $list = $this->addressService->addressList($request,$this->getUserId());
        return __success('success',$list);
    }

    /**
     * 添加收货地址
     */
    public function addAddress(Request $request)
    {
        $request = $request->only(['country','province','city','area','name','phone','address','postcode','status']);
        if(empty($request['country'])){
            return __error('The country cannot be empty！');
        }
        if(empty($request['name'])){
            return __error('The name cannot be empty！');
        }
        if(empty($request['phone'])){
            return __error('The phone number cannot be empty！');
        }
        if(!preg_match("/^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}$/",$request['phone'])){
            return __error('Phone format error！');
        }
        if(empty($request['address'])){
            return __error('The detailed address cannot be empty！');
        }
        if(empty($request['postcode'])){
            return __error('The postcode cannot be empty！');
        }
        $result = $this->addressService->addAddress($request,$this->getUserId());
        if($result){
            return __success('success');
        }else{
            return __error('error');
        }
    }

    /**
     * 删除收货地址
     * @param Request $request
     * @return \think\response\Json
     */
    public function delAddress(Request $request)
    {
        $id =$request->get('id');
        if(empty($id)){
            return __error('Address id cannot be empty！');
        }
        $result = $this->addressService->delAddress($id);
        if($result){
            return __success('success');
        }else{
            return __error('error');
        }
    }

    /**
     * 获取地址详情
     * @param Request $request
     * @return \think\response\Json
     */
    public function getAddressInfo(Request $request)
    {
        $id =$request->get('id');
        if(empty($id)){
            return __error('Address id cannot be empty！');
        }


        $info = $this->addressService->getAddressInfo($id);
        if($info){
            return __success('success',$info);
        }else{
            return __error('error');
        }
    }

    /**
     * 修改地址
     * @param Request $request
     * @return \think\response\Json
     */
    public function editAddress(Request $request)
    {
        $request = $request->only(['id','country','province','city','area','name','phone','address','postcode','status']);
        if(empty($request['id'])){
            return __error('Address id cannot be empty！');
        }
        if(empty($request['country'])){
            return __error('The country cannot be empty！');
        }
        if(empty($request['name'])){
            return __error('Consignee name cannot be empty！');
        }
        if(empty($request['phone'])){
            return __error('Consignee phone number cannot be empty！');
        }
        if(!preg_match("/^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}$/",$request['phone'])){
            return __error('Phone format error！');
        }
        if(empty($request['address'])){
            return __error('The detailed address cannot be empty！');
        }
        if(empty($request['postcode'])){
            return __error('The postcode cannot be empty！');
        }
        $result = $this->addressService->editAddress($request,$this->getUserId());
        if($result){
            return __success('success');
        }else{
            return __error('error');
        }
    }

    /**
     * 设置默认地址
     * @param Request $request
     * @return \think\response\Json
     */
    public function setAddressStatus(Request $request)
    {
        $request = $request->get();
        if(empty($request['id'])){
            return __error('Address id cannot be empty！');
        }
        $result = $this->addressService->setAddressStatus($request['id'],$this->getUserId());
        if($result){
            return __success('success');
        }else{
            return __error('error');
        }
    }


    /**
     * 收藏列表
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getCollectList()
    {

        $user_id = $this->getUserId();
        if($this->lang == 'cn'){
            $field = 'id,name,thumb,sell_price';
        }
        else{
            $field = 'id,english_name as name,thumb,sell_price';
        }

        $list = Db::name('collect')->where('user_id',$user_id)->order('id desc')->select();
        foreach ($list as $k => $v){
            $goods_info = Db::name('goods')->where('id',$v['goods_id'])->field($field)->find();
            $list[$k]['goods_name'] = $goods_info['name'];
            $list[$k]['thumb'] = $goods_info['thumb'];
            $list[$k]['sell_price'] = $goods_info['sell_price'];
        }
        return __success('success',$list);
    }

    /**
     * 购物车列表
     * @return \think\response\Json
     */
    public function shopCar()
    {
        $user_id = $this->getUserId();
        $list = $this->userService->shopCar($user_id,$this->lang);
        return __success('success',$list);
    }

    /**
     * 删除购物车
     * @param Request $request
     * @return \think\response\Json
     */
    public function destroyCarById(Request $request)
    {
        
        $ids = $request->get('ids');
        if(empty($ids)){
            return __error('Shopping cart id cannot be empty！');
        }
        $result = $this->userService->destroyCarById($ids);
        if($result){
            return __success('success');
        }else{
            __error('error');
        }

    }

    /**
     * 发布找货需求
     * @param Request $request
     * @return \think\response\Json
     */
    public function findGoods(Request $request)
    {
        $input = $request->only(['county','brand','category_id','name','sku','price','desc','image']);
        if(empty($input['county'])){
            return __error('The area cannot be empty！');
        }
        if(empty($input['brand'])){
            return __error('The brand cannot be empty！');
        }
        if(empty($input['category_id'])){
            return __error('Category cannot be empty！');
        }
        if(empty($input['name'])){
            return __error('Product name cannot be empty！');
        }
        if(empty($input['sku'])){
            return __error('sku attribute cannot be empty！');
        }
        if(empty($input['price'])){
            return __error('Price range cannot be empty！');
        }
        if(empty($input['desc'])){
            return __error('Description cannot be empty！');
        }
        if(empty($input['image'])){
            return __error('Please upload a picture！');
        }
        $input['time'] = time();
        $result = Db::name('find_goods')->insert($input);
        if($result){
            return __success('success');
        }else{
            return __error('error');
        }
    }

    /**
     * 历史找货列表
     * @param Request $request
     * @return \think\response\Json
     * @throws \think\exception\DbException
     */
    public function getFindList(Request $request)
    {
        $status = $request->get('status');
        if(empty($request->get('pageNumber'))){
            $pageNumber = 20;
        }else{
            $pageNumber = $request->get('pageNumber');
        }
        $where = [];
        if($status){
            $where['status'] = $status;
        }
        $list = Db::name('find_goods')
            ->field('id,name,sku,desc,image,county,sell_price,status,time')
            ->where($where)->order('id desc')->paginate($pageNumber)->toArray();
        foreach ($list['data'] as $k => $v){
            $list['data'][$k]['time'] = date('Y-m-d H:i:s',$list['data'][$k]['time']);
        }
        return __success('success',$list);

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
