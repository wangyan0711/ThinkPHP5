<?php
namespace app\admin\service;

use app\admin\model\Admin;

/**
 * 后台登录服务
 * Class LoginService
 * @package app\admin\service
 */
class LoginService extends Service {

    protected function initialize()
    {
        $this->model = new Admin();
    }

    /**
     * 登录
     * @param $username
     * @param $password
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function login($username, $password)
    {
        $adminInfo = $this->model->where('username', '=', $username)->find();
        if(empty($adminInfo))
        {
            return ['code' => 1, 'msg' => '账户不存在，请重新输入！'];
        }

        if($adminInfo['status'] != '1'){
            return ['code' => 1, 'msg' => '该账户已被停用，请联系超级管理员！'];
        }

        if (encryptPassword($password, $adminInfo['salt']) != $adminInfo['password'])
        {
            return ['code' => 1, 'msg' => '密码不正确，请重新输入！'];
        }

        $adminInfo->login_time = time();
        $adminInfo->login_ip = request()->ip();
        $adminInfo->save();

        //储存session数据
        session('admin', $adminInfo);
        return ['code' => 0, 'msg' => '登录成功，正在进入后台系统！', 'admin_info' => $adminInfo];
    }



}