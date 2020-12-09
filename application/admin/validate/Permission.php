<?php

namespace app\admin\validate;

use think\Validate;

class Permission extends Validate
{
    /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */
    protected $rule = [
        'id'     => 'require|number|checkId',
        'name'   => 'require',
        'title'  => 'require|max:10',
        'status' => 'require|in:0,1',
    ];

    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */
    protected $message = [
        'name.require'   => '菜单权限必须',
        'title.require'  => '权限节点必须',
    ];

    /**
     * 应用场景
     * @var \string[][]
     */
    protected $scene = [
        //添加菜单
        'add'  => ['name', 'title'],

        //修改菜单
        'edit' => ['id', 'name', 'title'],

        //删除菜单
        'del'  => ['id'],

        //更改菜单状态
        'status'  => ['id'],
    ];

    /**
     * 检测权限是否存在
     * @param $value
     * @param $rule
     * @param array $data
     * @return bool|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    protected function checkId($value, $rule, $data = []) {
        $permission = \app\admin\model\permission::where(['id' => $value])->find();
        if (empty($permission)) return '暂无权限节点，请稍后再试！';
        return true;
    }
}
