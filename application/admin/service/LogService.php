<?php
namespace app\admin\service;


use think\Db;

/**
 * 日志服务
 * Class LogService
 * @package app\admin\service
 */
class LogService{

    public static function loginLog($admin_id, $username,$type = 1, $status = 1, $remark = '') {
        $insert = [
            'type'     => $type,
            'admin_id' => $admin_id,
            'username' => $username,
            'ip'       => get_ip(),
            'remark'   => $remark,
            'status'   => $status,
        ];
        Db::name('AdminLog')->insert($insert);
    }

}