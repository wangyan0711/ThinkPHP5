<?php
namespace app\admin\service;

use app\admin\model\Company;


/**
 * 公司管理服务
 * Class LoginService
 * @package app\admin\service
 */
class CompanyService extends Service
{

    protected function initialize()
    {
        $this->model = new Company();
    }


    public function getList($type){
        $list = $this->model->where('type', '=', $type)->select();
        return $list;
    }

    /**
     * 修改图片
     * @param $request
     */
    public function update($request){
        $input = $request->param();
        $info = $this->model->where('id','=',$input['id'])->find();
        if($info){
            if($request->file()){
                $res = upload_file($request->file('icon'), 'scope', 'image');
                if (!$res['status']){
                    return __error('图片修改失败！');
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




}