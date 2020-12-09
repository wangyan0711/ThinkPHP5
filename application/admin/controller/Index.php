<?php
namespace app\admin\controller;
use app\common\controller\Backend;
use think\Db;

class Index extends Backend
{

    /**
     * 后台主页
     * @return mixed
     */
    public function index()
    {
        //销售额
        $sell_price = Db::name('order_info')->where('status', '>', '-1')->sum('pay_price');
        $this->assign('sell_price', $sell_price);

        //网站流量
        $click_num =  Db::name('goods')->sum('click_num');
        $this->assign('click_num', $click_num);

        //添加到购物车数量
        $car_num = Db::name('goods')->sum('car_num');
        $this->assign('car_num', $car_num);

        //会员数量
        $user_num = Db::name('user')->where('status',1)->count();
        $this->assign('user_num',$user_num);

        //支付订单数量
        $order_num = Db::name('order_info')->where('status','>',-1)->count();

        $this->assign('order_num',$order_num);

        //加入购物车转换率
        $car_rate = ($car_num/$click_num)*100;
        $this->assign('car_rate', $car_rate);

        //达到结账转换率
        $sell_rate = ($order_num/$click_num)*100;
        $this->assign('sell_rate',$sell_rate);

        //商品数量
        $goods_num = Db::name('goods')->where('status',1)->count();
        $this->assign('goods_num',$goods_num);

        //找货数量
        $find_num = Db::name('find_goods')->count();
        $this->assign('find_num',$find_num);


        $user = Db::name('user')->order('id','desc')->limit(10)->select();
        $this->assign('user', $user);

        $goods = Db::name('goods')->order('sell_num', 'desc')->limit(10)->select();
        $this->assign('goods', $goods);


        return $this->fetch();
    }


    public function test()
    {

    }

}