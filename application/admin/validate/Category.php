<?php

namespace app\admin\validate;

use think\Validate;

class Category extends Validate
{
    /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */	
	protected $rule = [
        'id'     => 'require|number|checkId',
        'parent_id'    => 'require|number',
        'category_name'  => 'require|max:5',
        'english_name'   => 'require',
        'sort'   => 'max:10|number',
    ];
    
    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */	
    protected $message = [
        'parent_id.require'   => '上级菜单必须',
        'parent_id.number'    => '上级菜单数据有误',
        'category_name.require' => '菜单名称必须',
        'english_name.require' => '菜单名称必须',
        'category_name.max'     => '分类最多不能超过5个字符',
        'sort.number'   => '排序必须为数字',
    ];

    /**
     * 应用场景
     * @var \string[][]
     */
    protected $scene = [
        //添加菜单
        'add'  => ['parent_id', 'category_name', 'english_name', 'sort'],

        //修改菜单
        'edit' => ['id', 'parent_id', 'category_name', 'english_name', 'sort'],

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
        $menu = \app\admin\model\Category::where(['id' => $value])->find();
        if (empty($menu)) return '暂无分类数据，请稍后再试！';
        return true;
    }
}
