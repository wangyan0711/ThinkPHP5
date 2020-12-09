<?php

namespace app\admin\controller;

use app\common\controller\Backend;
use think\Request;

/**
 * 权限控制器
 * Class Permission
 * @package app\admin\controller\auth
 */
class Permission extends Backend
{

    protected $middleware = ['CheckPermission:Permission'];

    protected function initialize()
    {
        $this->service = $this->app->make(\app\admin\service\Auth\PermissionService::class);
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
        return $this->fetch('permission/list');
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        return $this->fetch('permission/create');
    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
        //验证参数
        $validate = $this->validate($request->param(), 'app\admin\validate\Permission.add');
        if (true !== $validate) {
            return __error($validate);
        }
        if($this->service->create($request->param())){
            return __success('添加成功！');
        }else{
            return __error('添加失败！');
        }
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
        $permission = $this->service->find('id', $id);
        $this->assign('permission', $permission);
        return $this->fetch('permission/edit');
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
        //验证参数
        $validate = $this->validate($request->param(), 'app\admin\validate\Permission.edit');
        if (true !== $validate) {
            return __error($validate);
        }
        if($this->service->updatePermission($request->param())){
            return __success('编辑成功！');
        }else{
            return __error('编辑失败！');
        }
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
        $this->service->destoryPermission($id);
        return redirect('/admin/permission');
    }
}
