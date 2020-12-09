<?php

namespace app\admin\controller;

use app\common\controller\Backend;
use think\Db;
use think\Request;

class Order extends Backend
{

    protected $middleware = ['CheckPermission:Order'];

    protected function initialize()
    {
        $this->service = $this->app->make(\app\admin\service\OrderService::class);
    }


    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index(Request $request)
    {
        $list = $this->service->getOrderList($request);
        $this->assign('list', $list);
        $this->assign('get', $request->get());
        return $this->fetch('order/list');
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
        $goods_order_list = Db::name('order_goods')->where('order_id',$id)->select();
        $order_info = $this->service->getOrderInfo($id);
        $this->assign('goods_order_list',$goods_order_list);
        $this->assign('order_info',$order_info);
        return $this->fetch();
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

    /**
     * 发货页面
     * @param Request $request
     * @param $id
     * @return mixed|\think\response\Json
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function fahuo(Request $request, $id){
        if($request->isPost()) {
            if (empty($request->post('wuliu_gongsi'))) {
                return __error('物流公司不能为空');
            }
            if (empty($request->post('wuliu_num'))) {
                return __error('物流单号不能为空');
            }
            return $this->doFahuo($request, $id);
        }
        return $this->fetch('order/fahuo',['id' => $id]);
    }

    /**
     * 发货
     * @param $request
     * @param $id
     * @return \think\response\Json
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function doFahuo($request, $id)
    {
        $order_info = Db::name('order_info')->where('id',$id)->find();
        if($order_info['status']!=1){
            return __error('当前状态不能发货！');
        }
        $data = $request->only(['wuliu_gongsi', 'wuliu_num']);
        $data['status'] = 2;
        $data['fahuo_time'] = time();

        $res = Db::name('order_info')->where('id',$id)->update($data);
        if($res){
            Db::name('order_goods')->where('order_id',$id)->update(['status' => 2,'fahuo_time' => time()]);
            return __success('发货成功');
        }else{
            return __error('发货失败');
        }

    }




}
