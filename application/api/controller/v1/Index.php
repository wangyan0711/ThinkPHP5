<?php
namespace app\api\controller\v1;

use app\api\controller\Base;
use think\Db;
use think\db\exception\DataNotFoundException;
use think\Request;

class Index extends Base
{

    protected $userService;
    protected $adService;

    public function __construct()
    {
        parent::__construct();
        $this->userService = $this->app->make(\app\api\service\UserService::class);
        $this->adService = $this->app->make(\app\admin\service\GuangService::class);

    }

    /**
     * 注册
     * @param Request $request
     * @return \think\response\Json
     */
    public function register(Request $request)
    {
        $post = $request->only(['name','email','phone','password']);
        //验证参数
        $validate = $this->validate($post, 'app\api\validate\Login.register');
        if (true !== $validate) {
            return __error($validate);
        }
        return $this->userService->register($post);
    }

    /**
     * 登录
     * @param Request $request
     * @return \think\response\Json
     */
    public function login(Request $request)
    {
        $post = $request->only(['account','password']);
        //验证参数
        $validate = $this->validate($post, 'app\api\validate\Login.login');
        if (true !== $validate) {
            return __error($validate);
        }
        return $this->userService->login($post);
    }


    /**
     * 城市三级联动
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getRegion()
    {
        $res = Db::name('region')->where('parent_id','=',1)->order('id asc')->field('id,name')->select();
        foreach ($res as $k =>&$v){
            $v['child'] = Db::name('region')->where(array('parent_id' => $v['id']))->order('id asc')->field('id,name')->select();
            foreach ($v['child'] as $key => &$val){
                $val['child'] = Db::name('region')->where(array('parent_id' => $val['id']))->order('id asc')->field('id,name')->select();
            }
        }
        return __success('success',$res);
    }

    /**
     * 获取一级地区
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getFirstRegion(){
        $res = Db::name('region')->where(array('parent_id' => 1))->order('id asc')->field('id,name')->select();
        return __success('success',$res);
    }

    /**
     * 获取下级地区
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getNextRegion(){
        $id = Request()->param('id');
        if(empty($id)){
            return __success('The superior id cannot be empty！');
        }
        $res = Db::name('region')->where(array('parent_id' => $id))->order('id asc')->field('id,name')->select();
        return __success('success',$res);
    }



    /**
     * 首页三张广告图
     * @return \think\response\Json
     */
    public function banner(){
        $list = $this->adService->getAdByPositionId();
        if($list){
            return __success('success',$list);
        }else{
            return __error('error');
        }
    }

    /**
     * 热搜关键词
     * @return \think\response\Json
     */
    public function hotSearches(){
        if($this->lang == 'cn'){
            $id = '18';
        }else{
            $id = '19';
        }
        $search = $this->getConfigValueById($id);
        $search = explode(',', $search);
        return __success('success',$search);
    }

    /**
     *
     */
    public function news()
    {
        if($this->lang == 'cn'){
            $field = 'id,title,time,thumb';
        }else{
            $field = 'id, english_title as title,time,thumb';
        }
        $list = Db::name('article')
            ->field($field)
            ->where('type_id','>','2')
            ->order('id desc')
            ->limit(6)
            ->select();
        foreach ($list as $k => $v){
            $list[$k]['time'] = date('Y-m-d',$v['time']);
        }
        return __success('success',$list);

    }


    /**
     * 主页信息
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function message(){
        if($this->lang == 'cn'){
            $scope_id = '12';   //业务范围
            $main_id = '14';    //主营业务
            $advantage_id = '16';  //企业优势
            $scope_list = $this->getCompanyByType(1,'title,intro,icon');  //业务范围
            $mode_list = $this->getCompanyByType(2,'title,intro,icon');   //赚钱模式
            $advantage_list = $this->getCompanyByType(3,'title,intro,icon');
        }else{
            $scope_id = '13';
            $main_id = '15';
            $advantage_id = '17';
            $scope_list = $this->getCompanyByType(1,'english_title as title,english_intro as intro,icon');
            $mode_list = $this->getCompanyByType(2,'english_title as title,english_intro as intro,icon');
            $advantage_list = $this->getCompanyByType(3,'english_title as title,english_intro as intro,icon');
        }
        $scope_content = $this->getConfigValueById($scope_id);
        $main_content = $this->getConfigValueById($main_id);
        $advantage_content = $this->getConfigValueById($advantage_id);

        $data = [
            'scope'  => [
                'content' => $scope_content,
                'list' => $scope_list,
            ],
            'main'  => [
                'content' => $main_content,

            ],
            'mode'  => [
                'list' => $mode_list,

            ],
            'advantage'  => [
                'content' => $advantage_content,
                'list' => $advantage_list,
            ],
        ];
        return __success('success',$data);
    }

    /**
     * 底部配置
     * @return \think\response\Json
     */
    public function config(){
        $data = [];
        $data['phone'] = $this->getConfigValueById(8);
        $data['landline'] = $this->getConfigValueById(9);
        $data['fax'] = $this->getConfigValueById(10);
        $data['email'] = $this->getConfigValueById(11);
        if($this->lang == 'cn'){
            $data['address'] = $this->getConfigValueById(6);
            $data['beian'] = $this->getConfigValueById(4);
        }else{
            $data['address'] = $this->getConfigValueById(7);
            $data['beian'] = $this->getConfigValueById(5);
        }
        $data['blog_url'] = $this->getConfigValueById(20);
        $data['Instagram_url'] = $this->getConfigValueById(21);
        $data['Facebook_url'] = $this->getConfigValueById(22);
        $data['YouTube_url'] = $this->getConfigValueById(23);
        $data['Pinterest_url'] = $this->getConfigValueById(24);
        return __success('success',$data);
    }

    /**
     * 首页商品
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function goodsList(Request $request){
        if($this->lang == 'cn'){
            $goods_field = 'id,name,thumb,sku';
        }else{
            $goods_field = 'id,english_name as name,thumb,sku';
        }
        $category_id = $request->get('id');
        if(empty($category_id)){
            return __error('The category id parameter is missing！');
        }
        $list = Db::name('category')->where(['parent_id' => $category_id])->select();
        $goods_list = [];
        foreach ($list as $key => $item){
            $_list =  Db::name('category')->where(['parent_id' => $item['id']])->order('sort', 'asc')->select();
            foreach ($_list as $_k => $_v){
                $need_id[] = $_v['id'];
                $goods_list = Db::name('goods')->field($goods_field)->where('category_id','in', $need_id)->order('id','desc')->limit('8')->select();
            }
            $need_id = [];
        }

        return __success('success',$goods_list);
    }

    /**
     * 国家列表
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function county(){
        $county = Db::name('county')->select();
        $list = [];
        foreach ($county as $key => $val) {
            $list[$key]['id'] = $val['id'];
            if ($this->lang == 'cn') {
                $list[$key]['name'] = $val['name'];
            } else {
                $list[$key]['name'] = $val['enname'];
            }
        }
        return __success('success',$list);
    }

    /**
     * 海关数据列表
     * @param Request $request
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function customs(Request $request)
    {
        $date = $request->post('date','');
        $keyword = $request->post('keyword','');
        $c_id = $request->post('c_id','');
        $pageNumber = $request->post('pageNumber','20');

        $where = [];
        if(!empty($date)){
            $where['time'] = date('Y-m-d',strtotime($date));
        }
        if(!empty($c_id)){
            $where['c_id'] = $c_id;
        }
        if(!empty($keyword)) {
            if ($this->lang == 'cn') {
                $where['name'] = ['like', '%' . $keyword . '%'];
            } else {
                $where['enname'] = ['like', '%' . $keyword . '%'];
            }
        }
        $customs = Db::name('customs')->where($where)->paginate($pageNumber)->toArray();
        foreach ($customs['data'] as $key => &$val){
            $county = Db::name('county')->where('id',$val['c_id'])->find();
            if ($this->lang == 'cn') {
                $val['county'] = $county['name'];
            } else {
                $val['county'] = $county['enname'];
                $val['name'] = $val['enname'];
                $val['type'] = $val['entype'];
            }

            $val['icon'] = $county['icon'];
            unset($val['enname'],$val['entype']);
        }

        return __success('success',$customs);
    }

    /**
     * 上传图片
     * @return \think\response\Json
     */
    public function upload_file()
    {
        if(empty($this->request->file())){
            return __error('Please upload a picture！');
        }
        $file = $this->request->file('image');

        $res = upload_file($file, 'upload_image', 'image');
        if (!$res['status']){
            return __error('error');
        }
        return __success('success',$res['path']);
    }

    /**
     * 新闻动态分类
     * @return \think\response\Json
     * @throws DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function article_category()
    {
        if($this->lang == 'cn'){
            $field = 'id,name';
        }else{
            $field = 'id, english_name as name';
        }
        $categoty = Db::name('article_category')->field($field)->where('id','>','2')->select();
        return __success('success',$categoty);
    }

    /**
     * 文章列表
     * @param Request $request
     * @return \think\response\Json
     * @throws \think\exception\DbException
     */
    public function news_list(Request $request)
    {
        if($this->lang == 'cn'){
            $field = 'id,title,time,thumb';
        }else{
            $field = 'id, english_title as title,time,thumb';
        }
        $type_id= $request->post('type_id');
        if(empty($type_id)){
            return __error('The category id parameter is missing！');
        }
        $pageNumber = $request->post('pageNumber');
        if(empty($pageNumber)){
            $pageNumber = 10;
        }
        $article = Db::name('article')->field($field)->where('type_id',$type_id)->paginate($pageNumber)->toArray();
        foreach ($article['data'] as $k => $v){
            $article['data'][$k]['time'] = date('Y-m-d',$v['time']);
        }
        return __success('success',$article);
    }

    /**
     * 获取文章详情
     * @param Request $request
     * @return \think\response\Json
     * @throws DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function get_news_info(Request $request)
    {
        if($this->lang == 'cn'){
            $field = 'id,title,time,content';
        }else{
            $field = 'id, english_title as title, time, english_content as content';
        }
        $id = $request->get('id');
        if(empty($id)){
            return __error('Article id cannot be empty！');
        }
        $xq = Db::name('article')->field($field)->where('id',$id)->find();
        $xq['time'] = date('Y-m-d',$xq['time']);
        $_url = 'http://' . $_SERVER['HTTP_HOST'];
        $xq['content'] = preg_replace("/src=\"\//", 'src="' . $_url . '/', ($xq['content']));

        return __success('success',$xq);
    }

    /**
     * 评价
     * @param Request $request
     * @return \think\response\Json
     */
    public function commit(Request $request)
    {

        $input = $request->only(['content','image','star']);
        if(empty($input['content'])){
            return __error('The content cannot be empty！');
        }
        if(empty($input['image'])){
            return __error('The image cannot be empty！');
        }
        if(empty($input['star'])){
            return __error('The star cannot be empty！');
        }
        $input['time'] = time();
        $input['user_id'] = $this->getUserId();
        $result = Db::name('commit')->insert($input);
        if($result){
            return __success('success');
        }else{
            return __error('error');
        }
    }

    /**
     * 评论列表
     * @param Request $request
     * @return \think\response\Json
     * @throws \think\exception\DbException
     */
    public function commit_list(Request $request){
        if(empty($request->get('pageNumber'))){
            $pageNumber = 20;
        }else{
            $pageNumber = $request->get('pageNumber');
        }

        $list = Db::name('commit')->field('tp_commit.*,tp_user.name')
                ->join('tp_user', 'tp_user.id = tp_commit.user_id')
                ->where('tp_commit.status',2)
                ->order('tp_commit.id','desc')->paginate($pageNumber)->each(function($item, $key){
                $item['image'] = explode(',', $item['image']);
                $item['time'] = date("Y-m-d", $item['time']);
                return $item;
            });
        return __success('success',$list);
    }





}