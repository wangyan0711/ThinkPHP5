<?php

namespace app\admin\controller;

use app\common\controller\Backend;
use think\Request;

class Goods extends Backend
{

    protected $middleware = ['CheckPermission:Goods'];

    protected $CategoryService;

    protected function initialize()
    {
        $this->service = $this->app->make(\app\admin\service\GoodsService::class);
        $this->CategoryService = $this->app->make(\app\admin\service\CategoryService::class);
    }

    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index(Request $request)
    {
        //
        $list = $this->service->getAdminGoodsList($request);
        $this->assign('list', $list);
        $get = $request->get();
        $this->assign('get', $request->get());
        return $this->fetch('goods/list');
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        //
        $category = $this->CategoryService->getCategories();
        $this->assign('category', $category);
        return $this->fetch();
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
        $validate = $this->validate($request->param(), 'app\admin\validate\Goods.add');
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
        $category = $this->CategoryService->getCategories();
        $this->assign('category', $category);
        $goods_info = $this->service->find('id',$id);
        $imgs = [];
        if (!empty($goods_info['pic'])) {
            $imgs = explode(',', trim($goods_info['pic'], ','));
        }

        $this->assign('imgs', $imgs);
        $this->assign('goods_info', $goods_info);
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
        //
        $this->service->updateGoods($request);
        return redirect('/admin/goods/'.$request->param('id').'/edit');
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
    }


    /**
     * 上传商品图片
     * @param Request $request
     * @return mixed
     */
    public function uploadGoodsImages(Request $request){
        if ($request->file('file')){
            $res = upload_file($request->file('file'), 'goods', 'image');
            if (!$res['status']){
                return __error('图片上传失败！');
            }
            return json(['status' => 'success', 'msg' => 'success', 'path' => $res['path']]);
        }else{
            return __error('图片上传失败！');
        }
    }


    /**
     * 删除商品图片
     * @param Request $request
     * @return array|string[]
     */
    public function deleteGoodsImage(Request $request){
        $path = $request->param('path');
        $good_id = $request->param('goods_id');
        if (empty($path)){
            return ['status' => 'fail', 'msg' => '错误：路径为空'];
        }
        $result = $this->service->deleteGoodsImage($path, $good_id);
        if ($result){
            return ['status' => 'success', 'msg' => '删除成功', 'pic' => $result];
        }else{
            return ['status' => 'success', 'msg' => '删除成功', 'pic' => ''];
        }

    }





}
