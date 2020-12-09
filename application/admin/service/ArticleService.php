<?php
namespace app\admin\service;

use app\admin\model\Article;


/**
 * 文章服务
 * Class LoginService
 * @package app\admin\service
 */
class ArticleService extends Service {

    protected function initialize()
    {
        $this->model = new Article();
    }

    public function create($request)
    {
        $request['type_id'] = 3;
        $request['time'] = time();
        $res = $this->model->insert($request);
        if ($res){
            return true;
        }else{
            return false;
        }
    }



    /**
     * 获取文章列表
     * @return array|\PDOStatement|string|\think\Collection|\think\model\Collection
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getArticleList(){
        $list = $this->model->field('tp_article.*, tp_article_category.name as type_name')
            ->join('tp_article_category', 'tp_article_category.id = tp_article.type_id')
            ->order(['tp_article.type_id' => 'asc', 'tp_article.id' => 'desc'])
            ->where('tp_article.type_id','>','2')
            ->select();
        return $list;
    }

    /**
     * 获取系统文章列表
     * @return array|\PDOStatement|string|\think\Collection|\think\model\Collection
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getSysArticleList(){
        $list = $this->model->field('tp_article.*, tp_article_category.name as type_name')
            ->join('tp_article_category', 'tp_article_category.id = tp_article.type_id')
            ->order('tp_article.type_id asc')
            ->where('tp_article.type_id','<','3')
            ->select();
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

    public function updateArticle($request){
        $menu = $this->model->find($request['id']);
        if ($menu){
            $isUpdate = $menu->update($request);
            if ($isUpdate){
                return true;
            }
            return false;
        }
        return false;
    }








}