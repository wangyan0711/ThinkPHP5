<?php

namespace app\admin\controller;

use app\common\controller\Backend;
use think\Db;
use think\Request;

class Guang extends Backend
{

    protected $middleware = ['CheckPermission:Guang'];

    protected function initialize()
    {
        $this->service = $this->app->make(\app\admin\service\GuangService::class);
    }


    /**
     * 广告位置列表
     *
     * @return \think\Response
     */
    public function index()
    {
        //
        $position = Db::name('ad_position')->select();
        $this->assign('position', $position);
        return $this->fetch('ad/list');
    }

    /**
     * 图片列表
     * @param $id
     * @Author wangyan
     */
    public function guang($id){
        $list = $this->service->getAdByPositionId($id);
        $this->assign('list', $list);
        return $this->fetch('ad/ad');
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
        $ad = $this->service->find('id', $id);
        $this->assign('ad', $ad);
        return $this->fetch('ad/edit');
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request)
    {
        //
        $position_id = $this->service->find('id', $request->param('id'));
        $this->service->updateAdById($request);
        return redirect('/admin/guang/guang/'.$position_id['position_id']);
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        $this->service->destoryAd($id);
        return redirect('/admin/guang');
    }
}
