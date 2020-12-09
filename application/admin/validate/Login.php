<?php
namespace app\admin\validate;

use think\Validate;

class Login extends Validate
{

    /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */
    protected $rule = [
        'username' => 'require',
        'password' => 'require',
        'captcha' => 'require',
    ];

    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */
    protected $message = [
        'username.require' => '用户名不能为空！',
        'password.require' => '密码不能为空！',
        'captcha.require' => '验证码不能为空！',
    ];

    /**
     * 应用场景
     * @var \string[][]
     */
    protected $scene = [
        //开启验证码登录
        'captcha_on'  => ['username', 'password', 'captcha'],

        //关闭验证码登录
        'captcha_off' => ['username', 'password'],
    ];




}