<?php

namespace app\admin\controller;

use app\common\controller\Backend;
use think\Db;
use think\Request;

class Article extends Backend
{

    protected $middleware = ['CheckPermission:article'];

    protected function initialize()
    {
        $this->service = $this->app->make(\app\admin\service\ArticleService::class);
    }

    public function sys_article()
    {
        $list = $this->service->getSysArticleList();
        $this->assign('list' ,$list);
        return $this->fetch('article/sys_article');
    }



    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        //
        $list = $this->service->getArticleList();
        $this->assign('list' ,$list);
        return  $this->fetch('article/list');
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        //
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
        //
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
        //
        $article = $this->service->find('id',$id);
        $article['type_name'] = Db::name('article_category')->where(['id' => $article['type_id']])->value('name');
        $this->assign('article', $article);
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
        if($this->service->updateArticle($request->param())){
            return __success('编辑成功！');
        }else{
            return __error('编辑失败！');
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
    }

    /**
     * 上传商品图片
     * @param Request $request
     * @return mixed
     */
    public function uploadImages(Request $request){
        if ($request->file('file')){
            $res = upload_file($request->file('file'), 'article', 'image');
            if (!$res['status']){
                return __error('图片上传失败！');
            }
            return json(['status' => 'success', 'msg' => 'success', 'path' => $res['path']]);
        }else{
            return __error('图片上传失败！');
        }
    }
}
