<?php

namespace app\admin\controller;

use app\common\controller\Backend;
use think\Request;
use \app\admin\service\Auth\PermissionService;

/**
 * 角色控制器
 * Class Role
 * @package app\admin\controller\auth
 */
class Role extends Backend
{
    protected $middleware = ['CheckPermission:Role'];

    protected function initialize()
    {
        $this->service = $this->app->make(\app\admin\service\Auth\RoleService::class);
    }


    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        //
        $list = $this->service->getRoleList();
        $this->assign('list',$list);
        return $this->fetch('role/list');
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        $permission = new PermissionService();
        $permissions = $permission->findPermissionWithArray();
        $this->assign('permissions', $permissions);
        return $this->fetch('role/create');
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
        $validate = $this->validate($request->param(), 'app\admin\validate\Role.add');
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
        $role = $this->service->find('id', $id);
        $permissions = $this->service->getEditCheckedStatus($id);
        $this->assign('role', $role);
        $this->assign('permissions', $permissions);
        return $this->fetch('role/edit');
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
        $validate = $this->validate($request->param(), 'app\admin\validate\Role.edit');
        if (true !== $validate) {
            return __error($validate);
        }
        if($this->service->updateRole($request->param())){
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
        $this->service->roleMenu($id);
        return redirect('/admin/Role');
    }
}
