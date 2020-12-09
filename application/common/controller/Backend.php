<?php
namespace app\common\controller;

use think\Controller;
use think\exception\HttpResponseException;
use think\auth\Auth;

class Backend extends Controller
{
    /**
     * 开启登录控制
     * @var bool
     */
    protected $is_login = true;

    /**
     * Service
     * @var
     */
    protected $service;

    /**
     * 初始化数据
     * Admin constructor.
     */
    public function __construct()
    {
        parent::__construct();
        //检测登录情况
        if($this->is_login == true){
            $this->__checkLogin();
        }
        $controller = request()->controller();
        $action = request()->action();
//        $auth = new Auth();
//        if(!$auth->check($controller . '.' . $action, session('admin.id'))){
//            $data = ['type' => 'error', 'code' => 1, 'msg' => '抱歉，您没有权限访问！', 'url' => url('@admin/login/index')];
//            if (!empty($data)) {
//                session('admin', null);
//                throw new HttpResponseException($this->request->isAjax() ? json($data) : exit(msg_error($data['msg'], $data['url'])));
//            }
//        }
//        $this->assign('auth',$auth);
        $this->assign('sidebar',$this->sidebarMenus());
    }

    /**
     * 检测登录
     */
    public function __checkLogin()
    {
        $admin = session('admin');
        //判断是否登录
        if(empty($admin)){
            $data = ['type' => 'error', 'code' => 1, 'msg' => '抱歉，您还没有登录获取访问权限！', 'url' => url('/admin/login')];
        }
        //返回错误信息
        if (!empty($data)) {
            session('admin', null);
            throw new HttpResponseException($this->request->isAjax() ? json($data) : exit(msg_error($data['msg'], $data['url'])));
        }
        $this->assign('admin',$admin);
    }

    public function sidebarMenus()
    {
        $auth = new Auth();
        $MenuService = new \app\admin\service\Auth\MenuService();
        $MenuService->sortMenuSetCache();
        $menu = $MenuService->getMenuList();
        foreach ($menu as $key => $item){
            $value = $item['child'];
            foreach ($value as $_key => $_item) {
                if (!$auth->check($_item['slug'], session('admin.id'))){
                    unset($value[$_key]);
                }
            }
            if (empty($value)){
                $menu[$key]['child'] = [];
            }else{
                $menu[$key]['child'] = $value;
            }
        }
        return $menu;
    }

}