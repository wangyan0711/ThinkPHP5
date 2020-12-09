<?php

namespace app\api\validate;

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
        'name' => 'require',
        'phone' => 'require|checkPhone',
        'email' => 'require|checkEmail',
        'password' => 'require',
        'account' => 'require',
    ];
    
    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */	
    protected $message = [
        'name.require' => 'name cannot be empty！',
        'phone.require' => 'phone cannot be empty！',
        'password.require' => 'password cannot be empty！',
        'email.require' => 'email cannot be empty！',
        'account.require' => 'account cannot be empty！',
    ];

    /**
     * 应用场景
     * @var \string[][]
     */
    protected $scene = [
        //注册
        'register'  => ['name', 'phone', 'email', 'password'],

        //登录
        'login' => ['account', 'password'],
    ];

    /**
     * 检测手机号是否正确
     * @param $val
     */
    protected function checkPhone($val)
    {
        if(!preg_match("/^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}$/",$val)){
            return 'phone format error！';
        }
        return true;

    }

    /**
     * 检测邮箱是否正确
     * @param $val
     * @return bool|string
     */
    protected function checkEmail($val)
    {
        if(!preg_match("/^([A-z0-9]{6,18})(\w|\-)+@[A-z0-9]+\.([A-z]{2,3})$/",$val)){
            return 'email format error！';
        }
        return true;

    }


}
