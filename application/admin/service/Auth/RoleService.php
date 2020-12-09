<?php
namespace app\admin\service\Auth;

use app\admin\model\Role;
use app\admin\service\Service;
use think\Db;

class RoleService extends Service
{
    protected function initialize()
    {
        $this->model = new Role();
    }

    /**
     * 获取角色列表
     * @return \think\Paginator
     * @throws \think\exception\DbException
     */
    public function getRoleList(){
        $role_list = $this->model->paginate(20);
        return $role_list;
    }

    /**
     * 添加角色
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
     * 获取权限，且加上状态
     * @param $id
     * @return array
     * @author: simayubo
     */
    public function getEditCheckedStatus($id){
        $permission = new PermissionService();
        $permissions = $permission->findPermissionWithArray();
        $rule = $this->find('id',$id)->rules;
        $rule = explode(',',$rule);
        $list = array();
        foreach ($permissions as $k => $v) {
            $_on = 'no';
            $_permissions = $v;
            foreach ($v as $_k => $_v){
                if (in_array($_v['id'], $rule)){
                    $_on = 'yes';
                    $_permissions[$_k]['active'] = 'yes';
                }else{
                    $_permissions[$_k]['active'] = 'no';
                }
            }
            $list[$k] = [
                'active'    =>  $_on,
                'list'      =>  $_permissions
            ];
        }
        return $list;
    }

    public function updateRole($request){
        $role = $this->model->find($request['id']);
        if ($role){
            $isUpdate = $role->update($request);
            if ($isUpdate){
                return true;
            }
            return false;
        }
        return false;
    }



    /**
     * 删除角色
     * @param $id
     * @return bool
     */
    public function roleMenu($id)
    {
        $isDelete = $this->model->destroy($id);
        if ($isDelete) {
            return true;
        }
        return false;
    }

}