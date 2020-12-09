<?php
namespace app\admin\service;

use app\admin\model\User;
use think\Db;


/**
 * 商品服务
 * Class LoginService
 * @package app\admin\service
 */
class UserService extends Service {

    protected function initialize()
    {
        $this->model = new User();
    }

    public function getUserList($request)
    {
        $input = $request->param();
        $where = [];
        if (isset($input['status'])) {
            if ($input['status'] == 0) {
                unset($input['status']);
            } elseif ($input['status'] == -1) {
                $input['status'] = '0';
            }
        }
        if (!empty($input['name'])) $where[] = ['name', 'like', '%' . $input['name'] . '%'];
        if (!empty($input['email'])) $where[] = ['phone', '=', $input['phone']];
        if (!empty($input['id'])) $where[] = ['id', '=', $input['id']];
        if (isset($input['status'])) $where[] = ['status', '=', $input['status']];
        $list = $this
            ->model
            ->where($where)
            ->order('id', 'desc')
            ->paginate(15);

        return $list;
    }

    public function lock($request)
    {
        if ($this->model->where('id', $request->post('id'))->update(['status' => $request->post('status')])) {
            return $request->post('status');
        } else {
            return false;
        }
    }





    public function find($field, $value, $columns = ['*']){
        return $this->model->field($columns)->where($field,$value)->find();
    }












}