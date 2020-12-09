<?php
namespace app\admin\service;

use app\admin\model\Sys;


/**
 * 文章分类登录服务
 * Class LoginService
 * @package app\admin\service
 */
class SysService extends Service {

    protected function initialize()
    {
        $this->model = new Sys();
    }


    /**
     * 获取配置列表
     * @return array
     */
    public function getSysList(){
        $config = $this->model->order('sort', 'asc')->select();
        $sort_config = array();
        foreach ($config as $key => $value) {
            $sort_config[$value['id']] = $value;
        }
        return $sort_config;
    }

    public function updateSys($request){
        $input = $request->post();
        if($request->file()){
            $res = upload_file($request->file('3'), 'sys', 'image');
            if (!$res['status']){
                return false;
            }
            $input['3'] = $res['path'];
        }
        $data = [];
        foreach ($input as $k => $v){
            $data[] = array(
                'key' => $k,
                'value' => $v
            );
        }
        foreach ($data as $key => $val){
            $this->model
                ->where(['id' => $val['key']])
                ->update(['value' => $val['value']]);
        }
    }







}