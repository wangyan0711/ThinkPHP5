<?php
namespace app\api\controller;

use thans\jwt\facade\JWTAuth;
use think\Controller;
use think\Db;

class Base extends Controller
{

    /**
     * @var mixed|string
     */
    protected $lang;

    public function __construct()
    {
        header('Access-Control-Allow-Origin: *');
        parent::__construct();
        $this->lang = Request()->param('lang') ? Request()->param('lang') : 'cn';
    }



    protected function getUserId(){
        return JWTAuth::toUser()['user_id'];
    }

    /**
     * 通过id获取配置值
     * @param $id
     * @return mixed
     */
    protected function getConfigValueById($id){
        return Db::name('config')->where('id','=',$id)->value('value');
    }

    /**
     * 通过Type获取信息
     * @param $type
     * @return array|\PDOStatement|string|\think\Collection|\think\model\Collection
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    protected function getCompanyByType($type,$columns = ['*']){
        return Db::name('company')->field($columns)->where('type',$type)->order('id asc')->select();
    }




}