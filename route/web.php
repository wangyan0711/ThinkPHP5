<?php

/*

|--------------------------------------------------------------------------

| Web Routes

|--------------------------------------------------------------------------

|

| Here is where you can register web routes for your application. These

| routes are loaded by the RouteServiceProvider within a group which

| contains the "web" middleware group. Now create something great!

|

*/


//后台

//登录页面
Route::get('admin/login', 'admin/login/index');

//登录
Route::post('admin/login', 'admin/login/login');

//验证码
Route::get('admin/setVerifyCode', 'admin/login/setVerifyCode');

//退出登录
Route::get('logout', 'admin/login/logout');


Route::group('admin',function (){

    Route::get('/', 'Index/index');

    Route::get('test', 'Index/test');

    Route::any('/uploadGoodsImages', 'Goods/uploadGoodsImages');


    //菜单
    Route::resource('menu', 'Menu');

    //管理员

    Route::resource('admin', 'Admin');

    //权限组

    Route::resource('role', 'Role');

    //权限节点

    Route::resource('permission', 'Permission');

    //用户

    Route::resource('user', 'User');

    Route::post('user/lock', 'User/lock'); //禁用账号


    //商品

    Route::resource('goods', 'Goods');

    Route::post('delete_goods_image', 'Goods/deleteGoodsImage'); //删除商品图片


    Route::get('upload_goods_image', 'Goods/uploadGoodsImages'); //上传商品图片


    //商品分类
    Route::resource('category', 'Category');

    Route::get('category/getCategoryListById/:id', 'Category/getCategoryListById');

    //订单

    Route::resource('order', 'Order');

    Route::get('order_fahuo/:id', 'Order/fahuo'); //发货

    Route::post('fahuo/:id', 'Order/fahuo'); //发货


    Route::resource('release', 'Release');




    //文章分类

    Route::resource('article_category', 'ArticleCategory');

    //文章

    Route::resource('article', 'Article');

    Route::get('sys_article', 'Article/sys_article');

    //广告

    Route::resource('guang', 'Guang');

    Route::get('guang/guang/:id', 'Guang/guang');

    //系统配置

    Route::resource('system', 'System');

    Route::post('system/updateSys', 'System/updateSys');


    //评论

    Route::resource('commit','Commit');

    Route::get('commitDeal/:id','Commit/deal'); //处理评论

    Route::post('deal/:id', 'Commit/deal'); //处理评论

    //公司管理

    //业务范围

    Route::resource('scope', 'Scope');

    //赚钱模式

    Route::resource('mode', 'Mode');

    //企业优势

    Route::resource('advantage', 'Advantage');

    //海关数据

    Route::resource('customs', 'Customs');

    //海关国家

    Route::resource('county', 'County');






})->prefix('admin/')->middleware('auth.admin');