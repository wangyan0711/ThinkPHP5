<?php

namespace app\http\middleware;


use think\auth\Auth;
use think\Env;
use think\facade\Request;
use think\facade\Route;
use traits\controller\Jump;

class CheckPermission
{
    use Jump;
    public function handle($request, \Closure $next, $model)
    {
        $controller = request()->controller();
        $action = request()->action();
        $routeName = $controller . '.' . $action;
        $permission = '';
        switch ($routeName) {
            case $model.'.index':
                $permission = $model.'.list'; break;
            case $model.'.create':
                $permission = $model.'.add'; break;
            case $model.'.save':
                $permission = $model.'.add'; break;
            case $model.'.edit':
                $permission = $model.'.edit'; break;
            case $model.'.update':
                $permission = $model.'.edit'; break;
                break;
            case $model.'.delete':
                $permission = $model.'.delete'; break;
                break;
            default:
                $permission = '';
                break;
        }
        if ($permission != ''){
            $auth = new Auth();
            if (!$auth->check($permission, session('admin.id'))) {
                if ( Request::isAjax() ) {
                    return __error('无操作权限');
                } else {
                    $this->error('无操作权限');
                }
            }
        }

        return $next($request);


    }
}
