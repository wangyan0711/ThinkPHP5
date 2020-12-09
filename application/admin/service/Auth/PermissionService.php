<?php
namespace app\admin\service\auth;

use app\admin\model\Permission;
use app\admin\service\Service;
use think\helper\Str;

class PermissionService extends Service
{
    protected function initialize()
    {
        $this->model = new Permission();
    }

    /**
     * 获取权限列表
     * @return \think\Paginator
     * @throws \think\exception\DbException
     */
    public function getList(){
        $permission_list = $this->model->paginate(20);
        return $permission_list;
    }

    /**
     * 添加权限
     * @param $data
     * @return bool
     */
    public function create($data){
        $res = $this->model->insert($data);
        if($res){
            return true;
        }else{
            return  false;
        }
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

    /**
     * 修改权限
     * @param $request
     * @return bool|\think\response\Json
     */
    public function updatePermission($request){
        $permission = $this->model->find($request['id']);
        if ($permission){
            $isUpdate = $permission->update($request);
            if ($isUpdate){
                return true;
            }
            return false;
        }
        return false;
    }

    /**
     * 获取所有权限并分组
     */
    public function findPermissionWithArray()
    {
        $permission = $this->model->select();
        $array = [];
        if ($permission) {
            foreach ($permission as $v) {
                array_set($array, $v->name, ['id' => $v->id,'name' => $v->name,'title' => $v->title,'key' => Str::random(16)]);
            }
        }
        return $array;
    }

    /**
     * 删除权限
     * @param $id
     * @return bool
     */
    public function destoryPermission($id)
    {
        $isDelete = $this->model->destroy($id);
        if ($isDelete) {
            return true;
        }
        return false;
    }



}