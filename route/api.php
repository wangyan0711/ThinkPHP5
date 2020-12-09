<?php

/*

|--------------------------------------------------------------------------

| API Routes

|--------------------------------------------------------------------------

|

| Here is where you can register API routes for your application. These

| routes are loaded by the RouteServiceProvider within a group which

| is assigned the "api" middleware group. Enjoy building your API!

|

*/




Route::group(':version',function (){

    Route::group(['middleware' => ['jwt.auth']],function (){

        Route::get('get_user_info','User/getUserInfo');//获取用户信息

        Route::post('update_password', 'User/updatePassword');//修改密码

        Route::post('update_user_info', 'User/updateUserInfo'); //修改用户个人资料

        Route::get('address_list', 'User/addressList'); //用户地址列表

        Route::post('add_address', 'User/addAddress'); //添加地址

        Route::get('del_address', 'User/delAddress'); //删除地址

        Route::get('get_address_info', 'User/getAddressInfo'); //地址详情

        Route::post('edit_address', 'User/editAddress'); //修改地址

        Route::get('set_address_status', 'User/setAddressStatus'); //设置默认地址



        Route::get('order_list', 'Order/getOrderList'); //我的订单列表

        Route::get('change_status', 'Order/changeStatus'); //改变订单状态

        Route::get('user_collect', 'User/getCollectList'); //我的收藏列表


        Route::post('find_goods', 'User/findGoods'); //找货

        Route::get('get_find_list', 'User/getFindList'); //找货列表

        Route::post('release_order', 'Goods/release_order'); //确认订单页面

        Route::get('shop_car','User/shopCar'); //购物车列表


        Route::get('del_car', 'User/destroyCarById'); //删除购物车


        //商城模块

        Route::get('collect', 'Goods/collect'); //收藏、取消收藏

        Route::post('add_car','Goods/addCar');//加入购物车


        Route::post('buy','Goods/buy'); //直接购买

        Route::post('order', 'Goods/order'); //确认订单页面

        Route::post('create_order', 'Goods/createOrder'); //创建订单

        Route::get('pay_order', 'Goods/payOrder'); //订单支付页面


        Route::get('shopping_cart', 'Goods/shoppingCart'); //购物车结算


        //评论
        Route::post('commit', 'Index/commit');


        //导入数据
        Route::post('excel/import_excel','Excel/importExcel');











    })->header('Access-Control-Allow-Headers','Authorization, Content-Type, If-Match, If-Modified-Since, If-None-Match, If-Unmodified-Since, X-Requested-With')
        ->header('Access-Control-Allow-Origin','*')
        ->header('Access-Control-Allow-Methods','GET, POST, PATCH, PUT, DELETE')
        ->header('Access-Control-Allow-Credentials', 'true')
        ->allowCrossDomain();



    Route::post('register','Index/register');   //用户注册

    Route::post('login','Index/login');    //用户登录

    //首页

    Route::get('banner', 'Index/banner');  //广告图

    Route::get('hot_searches', 'Index/hotSearches');  //热搜关键词

    Route::get('message', 'Index/message'); //内容

    Route::get('config', 'Index/config'); //底部配置

    Route::get('goods_list', 'Index/goodsList'); //首页商品列表

    Route::get('xieyi', 'About/xieyi'); //注册协议

    Route::get('about', 'About/about'); //关于我们

    Route::get('news', 'Index/news'); //首页新闻动态

    Route::get('get_region', 'Index/getRegion'); //城市三级联动

    Route::get('get_first_region', 'Index/getFirstRegion'); //获取一级地区

    Route::get('get_next_region', 'Index/getNextRegion'); //获取下级地区

    Route::get('get_article_category', 'Index/article_category'); //新闻动态分类

    Route::post('news_list', 'Index/news_list'); //新闻列表

    Route::get('get_news_info', 'Index/get_news_info'); //新闻详情





    //商品分类

    Route::get('category_list', 'Goods/category');

    Route::get('get_first_category', 'Goods/getFirstCategory');

    Route::get('get_next_category', 'Goods/getNextCategory');

    Route::get('get_goods_list', 'Goods/index');

    Route::get('get_goods_info', 'Goods/read');


    Route::get('countys', 'Index/county');  //国家列表

    Route::post('customs_data', 'Index/customs');  // 海关数据



    Route::post('upload_file', 'Index/upload_file');  // 上传图片

    Route::get('commit_list', 'Index/commit_list');










    Route::post('refresh',function (){})->middleware('jwt.refresh');//刷新token


})->prefix('api/:version.');