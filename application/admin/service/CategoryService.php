<?php
namespace app\admin\service;

use app\admin\model\Category;
use think\facade\Cache;

/**
 * 商品分类服务
 * Class LoginService
 * @package app\admin\service
 */
class CategoryService extends Service {

    protected function initialize()
    {
        $this->model = new Category();
    }

    /**
     * 根据parent_id查询分类列表
     * @param int $parent_id
     * @return array|\PDOStatement|string|\think\Collection|\think\model\Collection
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getCategoryList($parent_id = 0){
        $list = $this->model->where([
            'parent_id'     =>  $parent_id,
        ])->order('sort', 'asc')->select();
        return $list;
    }



    /**
     *获取所有分类并写入缓存
     * @return array|\PDOStatement|string|\think\Collection|\think\model\Collection
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getCategorySetCache(){
        $list = $this->model->where(['parent_id' => 0])->order('sort', 'asc')->select();
        foreach ($list as $key => $item) {
            $_list = $this->model->where(['parent_id' => $item['id']])->select();
            foreach ($_list as $_key => $_item){
                $_list[$_key]['child'] = $this->model->where(['parent_id' => $_item['id']])->order('sort', 'asc')->select();
            }
            $list[$key]['child'] = $_list;
        }
        Cache::set('categoryList', $list);
        return $list;
    }


    /**
     * 获取所有分类
     * @return array|mixed|\PDOStatement|string|\think\Collection|\think\model\Collection
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getCategories(){
        $category_list = Cache::get('categoryList');
        if (!$category_list){
            $category_list = $this->getCategorySetCache();
        }
        return $category_list;
    }



    /**
     * 添加菜单
     * @param $data
     * @return bool
     */
    public function create($data){
        $res = $this->model->insert($data);
        if($res){
            $this->getCategorySetCache();
            return true;
        }else{
            return  false;
        }
    }

    /**
     * 删除菜单
     * @param $id
     * @return bool
     */
    public function destoryCategory($id)
    {

        $list = $this->model->where('parent_id', $id)->find();
        if ($list){
            return -2;
        }
        $isDelete = $this->model->destroy($id);
        if ($isDelete){
            $this->getCategorySetCache(); //更新缓存
            return 1;
        }
        return -1;
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

    public function updateCategory($request){
        $Category = $this->model->find($request['id']);
        if ($Category){
            $isUpdate = $Category->update($request);
            if ($isUpdate){
                $this->getCategorySetCache();
                return true;
            }
            return false;
        }
        return false;
    }







}