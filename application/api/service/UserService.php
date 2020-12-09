<?php
namespace app\api\service;

use app\api\model\User as UserModel;
use thans\jwt\facade\JWTAuth;
use think\Db;
use think\helper\Str;

/**
 * 前端注册登录
 * Class LoginService
 * @package app\admin\service
 */
class UserService extends Service {

    protected function initialize()
    {
        $this->model = new UserModel();
    }

    /**
     * 注册
     * @param $post
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function register($post)
    {
        $post['salt'] = Str::random(6);
        $post['password'] = encryptPassword($post['password'], $post['salt']);
        $post['create_time'] = time();
        $result = $this->model->where('phone','=',$post['phone'])->find();
        if($result){
            return __error('Phone number already exists！');
        }
        $res = $this->model->insert($post);
        if($res){
//            $token = JWTAuth::builder(['user_id' => $res]);
            return __success('success');
        }else{
            return  __error('error');
        }

    }



    /**
     * 登录
     * @param $username
     * @param $password
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function login($post)
    {
        $userInfo = $this->model->where('phone', '=', $post['account'])->whereOr('email', '=', $post['account'])->find();
        if(empty($userInfo))
        {
            return  __error('The account does not exist, please re-enter！');
        }

        if($userInfo['status'] != '1'){
            return  __error('The account has been disabled, please contact the administrator！');
        }

        if (encryptPassword($post['password'], $userInfo['salt']) != $userInfo['password'])
        {
            return  __error('The password is incorrect, please re-enter！');
        }
        $token = JWTAuth::builder(['user_id' => $userInfo['id']]);
        return __success('success',['token' => $token]);

    }

    /**
     * 获取用户基本信息
     * @param $user_id
     * @return array|\PDOStatement|string|\think\Model|null
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function profile($user_id){
        $user_info = $this->model->where('id', '=', $user_id)->field('id,name, phone, email, real_name, sex')->find();
        return $user_info;
    }

    /**
     * 修改密码
     * @param $post
     * @param $user_id
     * @return \think\response\Json
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function updatePassword($post,$user_id)
    {
        $user_info = $this->model->where('id',$user_id)->find();
        if (encryptPassword($post['old_password'], $user_info['salt']) != $user_info['password'])
        {
            return  __error('The original password is incorrect, please re-enter！');
        }

        $data['password'] = encryptPassword($post['new_password'], $user_info['salt']);
        if($this->model->where('id',$user_id)->update($data)){
            return __success('success');
        }else{
            return __error('error');
        }
    }

    /**
     * 修改资料
     * @param $request
     * @param $user_id
     * @return \think\response\Json
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function updateUserInfo($request,$user_id)
    {
        $user_info = $this->model->find($user_id);
        $input = $request->only(['name','email','phone','real_name','sex']);
        $this->model->where('id',$user_id)->update($input);
        return __success('success');

    }

    /**
     * 购物车列表
     * @param $user_id
     * @param $lang
     * @return array|\PDOStatement|string|\think\Collection
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function shopCar($user_id,$lang)
    {
        if($lang == 'cn'){
            $field = 'tp_shopping_cart.id,tp_shopping_cart.num,tp_shopping_cart.price,tp_goods.thumb,tp_goods.name,tp_goods.describe as intro,tp_goods.sku,tp_goods.status,tp_goods.stock';
        }else{
            $field = 'tp_shopping_cart.id,tp_shopping_cart.num,tp_shopping_cart.price,tp_goods.thumb,tp_goods.english_name as name,tp_goods.english_describe as intro,tp_goods.sku,tp_goods.status,tp_goods.stock';
        }
        $list = Db::name('shopping_cart')
            ->field($field)
            ->where(['tp_shopping_cart.user_id' => $user_id])
            ->join('tp_goods', 'tp_goods.id = tp_shopping_cart.goods_id')
            ->order('tp_shopping_cart.id','desc')
            ->select();
        if($list) {
            foreach ($list as $key => $value) {
                if ($value['stock'] < $value['num']) {
                    $list[$key]['status'] = 0;
                }
            }
            return $list;
        }else{
            return [];
        }
    }

    /**
     * 删除购物车
     * @param $ids
     * @return bool
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function destroyCarById($ids)
    {
        $res = Db::name('shopping_cart')->where('id','in',$ids)->delete();
        if($res){
            return true;
        }else{
            return false;
        }
    }







}