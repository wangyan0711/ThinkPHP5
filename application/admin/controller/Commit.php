<?php

namespace app\admin\controller;

use app\common\controller\Backend;
use think\Db;
use think\Request;

class Commit extends Backend
{

    protected $middleware = ['CheckPermission:Commit'];

    protected function initialize()
    {
        $this->service = $this->app->make(\app\admin\service\CommitService::class);
    }

    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index(Request $request)
    {
        $list = $this->service->getList($request);
        $this->assign('list', $list);
        $this->assign('get', $request->get());
        return $this->fetch('commit/list');
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
        $result = $this->service->destoryCommit($id);
        if($result){
            return __success('删除成功');
        }else{
            return __error('删除失败');
        }
    }

    public function deal(Request $request, $id){
        if($request->isPost()) {
            $res = Db::name('commit')->where('id',$id)->update(['status' => $request->post('status')]);

            if($res){
                return __success('操作成功');
            }else{
                return __error('操作失败');
            }
        }
        return $this->fetch('commit/deal',['id' => $id]);
    }
}
