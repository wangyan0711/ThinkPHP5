<?php

namespace app\admin\controller;

use app\common\controller\Backend;
use think\Request;

class Category extends Backend
{

    protected $middleware = ['CheckPermission:Category'];

    protected function initialize()
    {
        $this->service = $this->app->make(\app\admin\service\CategoryService::class);
    }



    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {

        $list = $this->service->getCategoryList();

        $category = $this->service->getCategories();

        $this->assign('list', $list);
        $this->assign('category', $category);
        return $this->fetch('category/list');
    }

    /**
     * 根据分类id获取子分类列表
     * @param $id
     * @return array|string[]
     */
    public function getCategoryListById($id){

        $list = $this->service->getCategoryList($id);

        if (empty($list)){

            return ['status' => 'no list'];

        }
        return ['status' => 'success', 'list' => $list];

    }



    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        //
    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
        //验证参数
        $validate = $this->validate($request->param(), 'app\admin\validate\Category.add');
        if (true !== $validate) {
            return __error($validate);
        }
        if($this->service->create($request->param())){
            return __success('添加成功！');
        }else{
            return __error('添加失败！');
        }

    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        //
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {

        $info = $this->service->find('id', $id);

        $category = $this->service->getCategories();
        $this->assign('info', $info);

        $this->assign('category', $category);
        return $this->fetch();


    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request)
    {

        if($this->service->updateCategory($request->param())){
            return __success('修改成功！');
        }else{
            return __error('修改失败！');
        }
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        //
        $result = $this->service->destoryCategory($id);

        if ($result == 1){

            return  __success('删除成功！');

        }elseif($result == -2){

            return  __error('存在下级分类，清先处理下级分类！');

        }else{

            return  __error('删除失败！');

        }
    }
}
