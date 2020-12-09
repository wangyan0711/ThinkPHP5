<?php
namespace app\api\service;

use app\api\model\Address;

/**
 * 地址服务
 * Class LoginService
 * @package app\admin\service
 */
class AddressService extends Service {

    protected function initialize()
    {
        $this->model = new Address();
    }


    /**
     * 获取地址列表
     * @param $request
     * @param $user_id
     * @return array|\think\Paginator
     * @throws \think\exception\DbException
     */
    public function addressList($request,$user_id)
    {

        $input = $request->param();
        if(empty($input['pageNumber'])){
            $pageNumber = 20;
        }else{
            $pageNumber = $input['pageNumber'];
        }
        $list = $this->model->where('user_id',$user_id)->paginate($pageNumber);
        if($list){
            return $list;
        }else{
            return [];
        }
    }

    public function addAddress($request,$user_id)
    {
        if($request['status'] == 1){
            //判断该用户是否设置过默认地址
            $where['status'] = 1;
            $where['user_id'] = $user_id;
            $default_addr = $this->model->where($where)->find();
            //如果设置过默认地址,将原默认地址变成普通地址
            if($default_addr){
                $this->model->where(['id' => $default_addr['id']])->update(['status'=>0]);
            }
        }
        $request['user_id'] = $user_id;
        $request['create_time'] = time();
        $result = $this->model->insert($request);
        if($result){
            return true;
        }else{
            return false;
        }
    }

    /**
     * 删除收货地址
     * @param $id
     * @return bool
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function delAddress($id)
    {
        $result = $this->model->where(['id' => $id])->delete();
        if($result){
            return true;
        }else{
            return false;
        }
    }

    /**
     * 获取地址详情
     * @param $id
     * @return array|false|\PDOStatement|string|\think\Model|null
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getAddressInfo($id)
    {
        $address = $this->model->where(['id' => $id])->find();
        if($address){
            $address['province_name'] = get_city_name($address['province']); //省
            $address['city_name'] = get_city_name($address['city']); //市
            $address['area_name'] = get_city_name($address['area']); //区
            return $address;
        }else{
            return  false;
        }
    }

    /**
     * 修改地址
     * @param $request
     * @param $user_id
     * @return bool
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function editAddress($request,$user_id)
    {
        if($request['status'] == 1){
            //判断该用户是否设置过默认地址
            $where['status'] = 1;
            $where['user_id'] = $user_id;
            $default_addr = $this->model->where($where)->find();
            //如果设置过默认地址,将原默认地址变成普通地址
            if($default_addr){
                $this->model->where(['id' => $default_addr['id']])->update(['status'=>0]);
            }
        }
        $area = explode(',',$request['area']);
        $area = array_filter($area);
        $request['province'] = $area[0];
        $request['city'] = $area[1];
        $request['area'] = $area[2];
        $result = $this->model->where(['id' => $request['id']])->update($request);
        if($result){
            return true;
        }else{
            return false;
        }
    }


    /**
     * 设置默认地址
     * @param $id
     * @param $user_id
     * @return bool
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function setAddressStatus($id,$user_id)
    {
        $where['status'] = 1;
        $where['user_id'] = $user_id;
        $default_addr = $this->model->where($where)->find();
        //如果设置过默认地址,将原默认地址变成普通地址
        if($default_addr){
            $this->model->where(['id' => $default_addr['id']])->update(['status'=>0]);
        }
        $result = $this->model->where('id',$id)->update(['status' => 1]);
        if($result){
            return true;
        }else{
            return false;
        }
    }






}