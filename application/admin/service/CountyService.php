<?php
namespace app\admin\service;

use app\admin\model\County;
use think\Db;


/**
 * 公司管理服务
 * Class LoginService
 * @package app\admin\service
 */
class CountyService extends Service
{

    protected function initialize()
    {
        $this->model = new County();
    }

    public function getList(){
        $list = $this->model->paginate(10);
        return $list;
    }

    public function getAllList(){
        $list = $this->model->select();
        return $list;
    }

    /**
     * 修改国家
     * @param $request
     */
    public function update($request){
        $input = $request->param();
        $info = $this->model->where('id','=',$input['id'])->find();
        if($info){
            if($request->file()){
                $res = upload_file($request->file('icon'), 'county', 'image');
                if (!$res['status']){
                    return __error('修改失败！');
                }
                $input['icon'] = $res['path'];
            }
            if($this->model->update($input)){
                return __success('修改成功！');
            }

        }
        return __error('修改失败！');
    }

    /**
     * 添加国家
     * @param $request
     */
    public function create($request){
        $input = $request->param();
        if($request->file()){
            $res = upload_file($request->file('icon'), 'county', 'image');
            if (!$res['status']){
                return __error('添加失败！');
            }
            $input['icon'] = $res['path'];
        }
        if($this->model->insert($input)){
            return __success('添加成功！');
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

    public function destoryCounty($id)
    {
        $isDelete = $this->model->destroy($id);
        if ($isDelete) {
            return true;
        }
        return false;
    }




}