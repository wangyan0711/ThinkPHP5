<?php

namespace app\admin\controller;

use app\common\controller\Backend;
use think\Request;

class System extends Backend
{
    protected $middleware = ['CheckPermission:System'];

    protected function initialize()
    {
        $this->service = $this->app->make(\app\admin\service\SysService::class);
    }




    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        //
        $config = $this->service->getSysList();
        $this->assign('config',$config);
        return $this->fetch('system/list');
    }

    public function updateSys(Request $request){
        $this->service->updateSys($request);
        return redirect('/admin/system');
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
