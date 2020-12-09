<?php

namespace app\admin\validate;

use think\Validate;

class Goods extends Validate
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
        'english_name'  => 'require',
        'category_id'    => 'require|number',
        'thumb_hidden'   => 'require',
        'content'   => 'require',
        'pic'   => 'require',
        'market_price'   => 'require',
        'sell_price'   => 'require',
        'sell_num'   => 'require',
        'stock'   => 'require',
        'sku'   => 'require',
        'delivery_place'   => 'require',
    ];

    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */
    protected $message = [
        'name.require'   => '商品名称不能为空！',
        'english_name.require'  => '英文名称不能为空！',
        'category_id.require'   => '商品分类不能为空！',
        'category_id.number'    => '商品分类数据有误！',
        'thumb.require'   => '商品缩略图不能为空！',
        'content.require'   => '商品详情不能为空！',
        'pic.require'   => '商品图册不能为空！',
        'market_price.require'   => '市场价不能为空！',
        'sell_price.require'   => '售价不能为空！',
        'sell_num.require'   => '销量不能为空！',
        'stock.require'   => '库存不能为空！',
        'sku.require'   => 'SKU属性不能为空！',
        'delivery_place.require'   => '发货地不能为空！',
    ];

    /**
     * 应用场景
     * @var \string[][]
     */
    protected $scene = [
        //添加商品
        'add'  => ['category_id', 'name', 'english_name', 'thumb', 'content', 'pic', 'market_price', 'sell_price', 'sell_num', 'stock', 'sku', 'delivery_place'],

        //修改商品
        'edit' => ['id', 'category_id', 'name', 'english_name', 'thumb', 'content', 'pic', 'market_price', 'sell_price', 'sell_num', 'stock', 'sku', 'delivery_place'],

        //删除商品
        'del'  => ['id'],

        //更改商品状态
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
        $menu = \app\admin\model\Goods::where(['id' => $value])->find();
        if (empty($menu)) return '暂无分类数据，请稍后再试！';
        return true;
    }
}
