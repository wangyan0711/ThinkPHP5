<?php

namespace app\api\controller\v1;

use app\api\controller\Base;
use think\Db;
use think\Request;

class About extends Base
{


    /**
     * 注册协议
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function xieyi(){
        if($this->lang == 'cn'){
            $field = 'id,content';
        }else{
            $field = 'id,english_content as content';
        }
        $xieyi = Db::name('article')->field($field)->where('id',1)->find();
        return __success('success',$xieyi);
    }

    /**
     * 关于我们
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function about(Request $request){
        $id = $request->get('id');
        if($this->lang == 'cn'){
            $field = 'id,content';
        }else{
            $field = 'id,english_content as content';
        }
        $about = Db::name('article')->field($field)->where('id',$id)->find();
        return __success('success',$about);
    }



    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        //
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
        //
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
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request, $id)
    {
        //
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
}
