<?php
namespace app\admin\service;

use app\admin\model\Release;


/**
 * 商品服务
 * Class LoginService
 * @package app\admin\service
 */
class ReleaseService extends Service {

    protected function initialize()
    {
        $this->model = new Release();
    }

    public function getReleaseList()
    {
        $list = $this->model
            ->field('tp_find_goods.*,tp_category.category_name')
            ->join('tp_category', 'tp_category.id = tp_find_goods.category_id')
            ->order('tp_find_goods.id desc')
            ->paginate(20);
        return $list;



    }




    public function find($field, $value, $columns = ['*']){
        return $this->model->field($columns)->where($field,$value)->find();
    }












}