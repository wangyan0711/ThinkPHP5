<?php

namespace app\admin\validate;

use think\Validate;

class Menu extends Validate
{
    /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */	
	protected $rule = [
        'id'     => 'require|number|checkId',
        'pid'    => 'require|number',
        'title'  => 'require|max:10',
        'url'   => 'max:100',
        'icon'   => 'max:20',
        'sort'   => 'max:10|number',
        'status' => 'require|in:0,1',
    ];
    
    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */	
    protected $message = [
        'pid.require'   => '上级菜单必须',
        'pid.number'    => '上级菜单数据有误',
        'title.require' => '菜单名称必须',
        'title.max'     => '名称最多不能超过10个字符',
        'url.max'       => '链接最多不能超过100个字符',
        'status.in'     => '启用状态格式有误',
        'sort.number'   => '排序必须为数字',
    ];

    /**
     * 应用场景
     * @var \string[][]
     */
    protected $scene = [
        //添加菜单
        'add'  => ['pid', 'title', 'url', 'icon', 'sort'],

        //修改菜单
        'edit' => ['id', 'pid', 'title', 'url', 'icon', 'sort'],

        //删除菜单
        'del'  => ['id'],

        //更改菜单状态
        'status'  => ['id'],
    ];

    /**
     * 检测菜单是否存在
     * @param $value
     * @param $rule
     * @param array $data
     * @return bool|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    protected function checkId($value, $rule, $data = []) {
        $menu = \app\admin\model\menu::where(['id' => $value])->find();
        if (empty($menu)) return '暂无菜单数据，请稍后再试！';
        return true;
    }
}
