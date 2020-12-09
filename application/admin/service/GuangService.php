<?php
namespace app\admin\service;

use app\admin\model\Guang;


/**
 * 广告服务
 * Class LoginService
 * @package app\admin\service
 */
class GuangService extends Service {

    protected function initialize()
    {
        $this->model = new Guang();
    }


    /**
     *
     * 通过广告位id获取广告
     * @param $id
     * @return false
     */
    public function getAdByPositionId($id = ''){
        $where = [];
        if($id){
            $where = ['tp_ad.position_id' => $id];
        }
        $list = $this->model
            ->field('tp_ad.*,tp_ad_position.name,tp_ad_position.size')
            ->join('tp_ad_position', 'tp_ad_position.id = tp_ad.position_id')
            ->where($where)
            ->order('id asc')
            ->select();
        if($list){
            return $list;
        }else{
            return false;
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
     * 修改图片
     * @param $request
     */
    public function updateAdById($request){
        $input = $request->param();
        $image = $this->model->where('id','=',$input['id'])->find();
        if($image){
            if($request->file('image')){
                $res = upload_file($request->file('image'), 'ad', 'image');
                if (!$res['status']){
                    return __error('图片修改失败！');
                }
                $input['image'] = $res['path'];
                if($this->model->update($input)){
                    return __success('图片修改成功！');
                }
            }
        }
        return __error('图片修改失败！');

    }



    /**
     * 删除管理员
     * @param $id
     * @return bool
     */
    public function destoryAd($id)
    {
        $isDelete = $this->model->destroy($id);
        if ($isDelete) {
            return true;
        }
        return false;
    }









}