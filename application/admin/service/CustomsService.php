<?php
namespace app\admin\service;

use app\admin\model\Customs;
use think\Db;


/**
 * 公司管理服务
 * Class LoginService
 * @package app\admin\service
 */
class CustomsService extends Service
{

    protected function initialize()
    {
        $this->model = new Customs();
    }

    public function getList(){
        $list = $this->model->order('id desc')->paginate(10);
        foreach ($list as $k => $v){
            $county = Db::name('county')->where('id',$v['c_id'])->find();
            $list[$k]['county'] = $county['name'];
            $list[$k]['encounty'] = $county['enname'];
            $list[$k]['icon'] = $county['icon'];
        }
        return $list;
    }

    /**
     * 添加海关数据
     * @param $request
     */
    public function create($request){
        $input = $request->param();
        if($this->model->insert($input)){
            return __success('添加成功！');
        }
    }

    /**
     * 修改海关数据
     * @param $request
     */
    public function update($request){
        $input = $request->param();
        $info = $this->model->where('id','=',$input['id'])->find();
        if($info){
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

    public function destoryCustoms($id)
    {
        $isDelete = $this->model->destroy($id);
        if ($isDelete) {
            return true;
        }
        return false;
    }




}