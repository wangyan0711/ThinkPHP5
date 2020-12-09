<?php

namespace app\admin\controller;

use app\common\controller\Backend;
use app\admin\Model\Role;
use think\Request;

/**
 * 管理员控制器
 * Class Admin
 * @package app\admin\controller\auth
 */
class Admin extends Backend
{
    protected $middleware = ['CheckPermission:Admin'];

    protected function initialize()
    {
        $this->service = $this->app->make(\app\admin\service\Auth\AdminService::class);
    }


    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        $page_size = 20;
        $username = (string)$this->request->param('username');
        $list = $this->service->getAdminList($username,$page_size);
        $this->assign('list',$list);
        $this->assign('username',$username);
        return $this->fetch('admin/list');

    }

    /**
     * 显示创建资源表单页
     *
     * @return \think\Response
     */
    public function create()
    {
        $group_list = Role::select();
        $this->assign('group_list',$group_list);
        return $this->fetch('admin/create');
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
        $validate = $this->validate($request->param(), 'app\admin\validate\Admin.add');
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
        $admin_info = $this->service->getAdminInfo($id);
        $group_list = Role::select();
        $this->assign('group_list',$group_list);
        $this->assign('admin_info', $admin_info);
        return $this->fetch('admin/edit');
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
        $validate = $this->validate($request->param(), 'app\admin\validate\Admin.edit');
        if (true !== $validate) {
            return __error($validate);
        }
        if($this->service->updateAdmin($request->param())){
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
        $this->service->destoryAdmin($id);
        return redirect('/admin/admin');
    }
}
