<?php
namespace app\admin\controller;

use think\captcha\Captcha;
use think\Controller;

class Login extends Controller
{

    protected $service;

    public function __construct()
    {
        parent::__construct();
        $this->service    = $this->app->make(\app\admin\service\LoginService::class);
    }

    /**
     * 生成验证码
     * @return \think\Response
     */
    public function setVerifyCode($id = 1)
    {
        $config =    array(
            'fontSize'    =>    35,    // 验证码字体大小
            'length'      =>    4,     // 验证码位数
            'useNoise'    =>    false, // 关闭验证码杂点
        );
        $captcha = new Captcha($config);
        return $captcha->entry($id);
    }

    /**
     * 验证验证码
     * @param $code
     * @param string $id
     * @return bool
     */
    public function checkVerify($code, $id = '')
    {
        $captcha =new Captcha();
        return $captcha->check($code, $id);
    }

    /**
     * 登录页面
     * @return mixed
     */
    public function index()
    {
        return $this->fetch();
    }

    /**
     * 登录
     * @return mixed|\think\response\Json
     */
    public function login()
    {
        $post = request()->post();
        //验证参数
        $validate = $this->validate($post, 'app\admin\validate\Login.captcha_on');
        if (true !== $validate) {
            return __error($validate);
        }
        //验证验证码
        if (!$this->checkVerify($post['captcha'], 1)) {
            return __error('验证码错误！');
        }

        $adminInfo = $this->service->login($post['username'], $post['password']);
        if($adminInfo['code'] ==1){
            isset($adminInfo['admin_info']['id']) ? $user_id = $adminInfo['admin_info']['id'] : $user_id = '';
            isset($adminInfo['admin_info']['username']) ? $username = $adminInfo['admin_info']['username'] : $username = '';
            \app\admin\service\LogService::loginLog($user_id, $username, 1, 0, "【账号登录】{$adminInfo['msg']}");
            return __error($adminInfo['msg']);
        }
        \app\admin\service\LogService::loginLog($adminInfo['admin_info']['id'], $adminInfo['admin_info']['username'], 1, 1, '【账号登录】登录成功，正在进入系统！');
        return __success($adminInfo['msg']);
    }

    /**
     * 退出登录
     * @return string
     */
    public function logout()
    {
        //清空sesion数据
        session('admin', null);
        return msg_success('退出登录成功', url('/admin/login'));
    }


}