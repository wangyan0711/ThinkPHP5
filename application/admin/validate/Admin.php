<?php

namespace app\admin\validate;

use think\Validate;

class Admin extends Validate
{
    /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */
    protected $rule = [
        'id'     => 'require|number|checkId',
        'username'   => 'require|checkOnly',
        'password'  => 'require|max:10',
        'group_id'  => 'require',
    ];

    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */
    protected $message = [
        'username.require'   => '管理员名称必须',
        'password.require'  => '管理员密码必须',
        'group_id.require'  => '角色必须',
    ];

    /**
     * 应用场景
     * @var \string[][]
     */
    protected $scene = [
        //添加管理员
        'add'  => ['username', 'password', 'group_id'],

        //修改管理员
        'edit' => ['id', 'username', 'group_id'],

        //删除管理员
        'del'  => ['id'],
    ];

    /**
     * 检测管理员是否存在
     * @param $value
     * @param $rule
     * @param array $data
     * @return bool|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    protected function checkId($value, $rule, $data = []) {
        $admin = \app\admin\model\admin::where(['id' => $value])->find();
        if (empty($admin)) return '暂无管理员，请稍后再试！';
        return true;
    }

    protected function checkOnly($value, $rule, $data = []){
        $admin = \app\admin\model\admin::where(['username' => $value])->find();
        if ($admin) return '管理员名称已存在，请更换其它名称！';
        return true;
    }
}
