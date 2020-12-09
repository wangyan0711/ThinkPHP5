<?php
namespace app\admin\service\Auth;


use app\admin\model\Menu;
use app\admin\service\Service;
use think\facade\Cache;

class MenuService extends Service
{

    protected function initialize()
    {
        $this->model = new Menu();
    }

    /**
     * 递归子菜单
     * @param $menus
     * @param int $pid
     * @return array|string
     */
    private function sortMenu($menus, $pid = 0){
        $arr = [];
        if (empty($menus)) {
            return '';
        }
        foreach ($menus as $k => $v) {
            if ($v['pid'] == $pid) {
                $arr[$k] = $v;
                $arr[$k]['child'] = self::sortMenu($menus,$v['id']);
            }
        }
        return $arr;
    }

    /**
     * 排序子菜单，并写入缓存
     * @return array|string
     */
    public function sortMenuSetCache(){
        $menu = $this->model->order('sort', 'desc')->select();
        if (!empty($menu)){
            $menus = $this->sortMenu($menu);
//            foreach ($menus as &$v) {
//                if ($v['child']) {
//                    $sort = array_column($v['child'],'sort');
//                    array_multisort($sort,SORT_DESC,$v['child']);
//                }
//            }
            Cache::tag('menu')->set(session('admin.id').'_menuList', $menus);
            return $menus;
        }
        return '';
    }

    /**
     * 获取菜单列表
     * @return array|string
     */
    public function getMenuList(){
        $menu_list = Cache::tag('menu')->get(session('admin.id').'_menuList');
        if (!$menu_list){
            $menu_list = $this->sortMenuSetCache();
        }
        return $menu_list;
    }

    /**
     * Find data by field and value
     * @param $field
     * @param $value
     * @param string[] $columns
     * @return mixed
     */
    public function findByField($field, $value, $columns = ['*']){
        return $this->model->field($columns)->where($field,$value)->select();
    }

    /**
     * 添加菜单
     * @param $data
     * @return bool
     */
    public function create($data){
        $res = $this->model->insert($data);
        if($res){
            $this->sortMenuSetCache(); //更新缓存
            return true;
        }else{
            return  false;
        }
    }

    /**
     * 删除菜单
     * @param $id
     * @return bool
     */
    public function destoryMenu($id)
    {
        $isDelete = $this->model->destroy($id);
        if ($isDelete) {
            $this->sortMenuSetCache(); //更新缓存
            return true;
        }
        return false;
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

    public function updateMenu($request){
        $menu = $this->model->find($request['id']);
        if ($menu){
            $isUpdate = $menu->update($request);
            if ($isUpdate){
                $this->sortMenuSetCache();
                return true;
            }
            return false;
        }
        return false;
    }




}