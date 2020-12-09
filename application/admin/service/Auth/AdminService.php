<?php
namespace app\admin\service\auth;

use app\admin\model\Admin;
use app\admin\service\Service;
use think\Db;
use think\helper\Str;

class AdminService extends Service
{
    protected function initialize()
    {
        $this->model = new Admin();
    }

    /**
     * 获取列表
     * @param string $username
     * @param $page_size
     * @return \think\Paginator
     * @throws \think\exception\DbException
     */
    public function getAdminList(string $username,$page_size)
    {
        $where = [];
        if($username){
            $where[]=['username','like',$username.'%'];
        }
        $admin_list = $this
            ->model
            ->where($where)
            ->field('tp_admin.*,tp_auth_group.title')
            ->join('tp_auth_group_access','tp_admin.id = tp_auth_group_access.uid')
            ->join('tp_auth_group','tp_auth_group_access.group_id = tp_auth_group.id')
            ->paginate($page_size);
        return $admin_list;
    }

    /**
     * 添加管理员
     * @param $data
     * @return bool
     */
    public function create($data){
        $input['username'] = $data['username'];
        $input['salt'] = Str::random(6);
        $input['password'] = encryptPassword($data['password'], $input['salt']);
        $input['create_time'] = time();
        $res = $this->model->insertGetId($input);
        if($res){
            Db::name('auth_group_access')->insert(['uid' => $res, 'group_id' => $data['group_id']]);
            return true;
        }else{
            return  false;
        }
    }

    /**
     * 获取管理员信息
     * @param $id
     * @return array|\PDOStatement|string|\think\Model|null
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getAdminInfo($id){
        return $this->model->join('tp_auth_group_access','tp_admin.id = tp_auth_group_access.uid')->where('id','=',$id)->find();
    }

    public function updateAdmin($request){
        $input['id'] = $request['id'];
        $input['username'] = $request['username'];
        $admin = $this->model->find($request['id']);
        if ($admin){
            if($request['password']){
                $input['password'] = encryptPassword($request['password'], $admin['salt']);
            }
            $isUpdate = $admin->update($input);
            if ($isUpdate){
                Db::name('auth_group_access')->where('uid', '=', $admin['id'])->update(['group_id' => $request['group_id']]);
                return true;
            }
            return false;
        }
        return false;

    }

    /**
     * 删除管理员
     * @param $id
     * @return bool
     */
    public function destoryAdmin($id)
    {
        $isDelete = $this->model->destroy($id);
        if ($isDelete) {
            Db::name('auth_group_access')->where('uid', '=', $id)->delete();
            return true;
        }
        return false;
    }

}