<?php

namespace app\admin\controller;

use app\common\controller\Backend;
use think\Request;

class Menu extends Backend
{

    protected $middleware = ['CheckPermission:Menu'];

    protected function initialize()
    {
        $this->service = $this->app->make(\app\admin\service\Auth\MenuService::class);
    }


    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        //
        $list = $this->service->getMenuList();
        $this->assign('list',$list);
        return $this->fetch('menu/list');
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        $menu = $this->service->findByField('pid', 0);
        $this->assign('menu', $menu);
        return $this->fetch('menu/create');

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
        $validate = $this->validate($request->param(), 'app\admin\validate\Menu.add');
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
        $menu_info = $this->service->find('id', $id);
        $menu = $this->service->findByField('pid', 0);
        $this->assign('menu', $menu);
        $this->assign('menu_info', $menu_info);
        return $this->fetch('menu/edit');
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
        $validate = $this->validate($request->param(), 'app\admin\validate\Menu.edit');
        if (true !== $validate) {
            return __error($validate);
        }
        if($this->service->updateMenu($request->param())){
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
        $this->service->destoryMenu($id);
        return redirect('/admin/menu');
    }
}
