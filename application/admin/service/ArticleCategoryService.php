<?php
namespace app\admin\service;

use app\admin\model\ArticleCategory;

use think\facade\Cache;

/**
 * 文章分类服务
 * Class LoginService
 * @package app\admin\service
 */
class ArticleCategoryService extends Service {

    protected function initialize()
    {
        $this->model = new ArticleCategory();
    }

    public function getCategoryList(){
        $list = $this->model->paginate(20);
        return $list;
    }










    /**
     * 详情查询
     * @param $field
     * @param $value
     * @param string[] $columns
     * @return array|\PDOStatement|string|\think\Model|null
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function find($field, $value, $columns = ['*']){
        return $this->model->field($columns)->where($field,$value)->find();
    }








}