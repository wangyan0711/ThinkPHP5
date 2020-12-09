<?php

namespace app\admin\controller;

use app\common\controller\Backend;
use think\Request;

class Customs extends Backend
{

    protected $middleware = ['CheckPermission:Customs'];

    protected $CountyService;

    protected function initialize()
    {
        $this->service = $this->app->make(\app\admin\service\CustomsService::class);
        $this->CountyService = $this->app->make(\app\admin\service\CountyService::class);
    }


    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        //
        $list = $this->service->getList();

        $this->assign('list',$list);
        return $this->fetch('customs/list');
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        //
        $county = $this->CountyService->getAllList();
        $this->assign('county', $county);
        return $this->fetch();
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
        $this->service->create($request);
        return redirect('/admin/customs');
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
        $county = $this->CountyService->getAllList();
        $this->assign('county', $county);
        $info = $this->service->find('id',$id);
        $this->assign('info',$info);
        return $this->fetch();
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
        $this->service->update($request);
        return redirect('/admin/customs');
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
        $this->service->destoryCustoms($id);
        return redirect('/admin/customs');
    }
}
