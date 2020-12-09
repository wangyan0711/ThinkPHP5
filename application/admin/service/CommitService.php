<?php
namespace app\admin\service;

use app\admin\model\Commit;


/**
 * 文章服务
 * Class LoginService
 * @package app\admin\service
 */
class CommitService extends Service {

    protected function initialize()
    {
        $this->model = new Commit();
    }


    public function getList($request){
        $input = $request->param();
        $where = [];
        if (isset($input['status'])) {
            if ($input['status'] == 0) {
                unset($input['status']);
            }
        }
        if (isset($input['status'])) $where[] = ['tp_commit.status', '=', $input['status']];
        $list = $this->model->field('tp_commit.*,tp_user.name')
            ->where($where)
            ->join('tp_user', 'tp_user.id = tp_commit.user_id')
            ->order('tp_commit.id', 'desc')
            ->paginate(15)->each(function($item, $key){
                $item->image = explode(',', $item['image']);
            });
        return $list;
    }


    public function destoryCommit($id)
    {
        $isDelete = $this->model->destroy($id);
        if ($isDelete) {
            return true;
        }
        return false;
    }




}