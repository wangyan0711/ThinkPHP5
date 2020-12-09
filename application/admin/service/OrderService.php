<?php
namespace app\admin\service;

use app\admin\model\Order;
use think\Db;


/**
 * 商品服务
 * Class LoginService
 * @package app\admin\service
 */
class OrderService extends Service {

    protected function initialize()
    {
        $this->model = new Order();
    }

    /**
     * 获取订单列表
     * @param $request
     * @return \think\Paginator
     * @throws \think\exception\DbException
     */
    public function getOrderList($request){
        $input = $request->param();
        $where[] = ['tp_order_info.status', '>=', -1];
        if (!empty($input['order_num'])) $where[] = ['tp_order_info.order_num', '=', $input['order_num']];
        if (!empty($input['name'])) $where[] = ['tp_user.name', '=', $input['name']];
        if (!empty($input['status']) && $input['status'] != 0) $where[] = ['tp_order_info.status', '=', $input['status']];
        if (!empty($input['date_star']) && empty($input['date_end'])) {
            $where[] = ['tp_order_info.add_time', '>=', strtotime($input['date_star'])];
        } elseif (empty($input['date_star']) && !empty($input['date_end'])) {
            $where[] = ['tp_order_info.add_time', '<=', strtotime($input['date_end'])];
        } elseif (!empty($input['date_star']) && !empty($input['date_end'])) {
            $where[] = ['tp_order_info.add_time', '>=', strtotime($input['date_star'])];
            $where[] = ['tp_order_info.add_time', '<',strtotime($input['date_end'])];
        }
        $list = $this->model
            ->field('tp_order_info.*,tp_user.name as username')
            ->where($where)
            ->join('tp_user', 'tp_user.id = tp_order_info.user_id')
            ->order('tp_order_info.id desc')
            ->paginate(20);
        return $list;
    }

    /**
     *  获取订单详情
     * @param $id
     * @return array|\PDOStatement|string|\think\Model|null
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getOrderInfo($id){

        $info = $this->model

            ->where([['status', '>', -2], ['id', '=', $id]])

            ->find();



        return $info;

    }


    public function find($field, $value, $columns = ['*']){
        return $this->model->field($columns)->where($field,$value)->find();
    }












}