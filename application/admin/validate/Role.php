<?php

namespace app\admin\validate;

use think\Validate;

class Role extends Validate
{
    /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */
    protected $rule = [
        'id'     => 'require|number|checkId',
        'title'  => 'require|max:10',
        'rules' => 'require',
    ];

    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */
    protected $message = [
        'title.require'   => '角色名称必须',
        'rules.require'  => '权限必须',
    ];

    /**
     * 应用场景
     * @var \string[][]
     */
    protected $scene = [
        //添加菜单
        'add'  => ['title', 'rules'],

        //修改菜单
        'edit' => ['id', 'title', 'rules'],

        //删除菜单
        'del'  => ['id'],
    ];

    /**
     * 检测角色是否存在
     * @param $value
     * @param $rule
     * @param array $data
     * @return bool|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    protected function checkId($value, $rule, $data = []) {
        $role = \app\admin\model\role::where(['id' => $value])->find();
        if (empty($role)) return '暂无角色，请稍后再试！';
        return true;
    }
}
