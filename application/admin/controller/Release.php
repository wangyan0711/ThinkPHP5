<?php

namespace app\admin\controller;

use app\common\controller\Backend;
use think\Db;
use think\Request;
use think\Response;

class Release extends Backend
{
    protected $middleware = ['CheckPermission:Release'];

    protected function initialize()
    {
        $this->service = $this->app->make(\app\admin\service\ReleaseService::class);
    }

    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        //
        $list = $this->service->getReleaseList();
        $this->assign('list', $list);
        return $this->fetch('release/list');
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
        $this->assign('id', $id);
        return $this->fetch();
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
        $data['status'] = $request->put('status');
        $price = $request->put('sell_price');
        if(!empty($price)){
            $data['sell_price'] = $price;
        }
        $res = Db::name('find_goods')->where('id',$id)->update($data);
        if($res){
            return __success('操作成功');
        }else{
            return __error('操作失败');
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
}
