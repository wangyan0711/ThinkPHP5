<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------


// 应用公共文件

use think\auth\Auth;

/**
 * 文件上传
 * @param $file_request
 * @param $path
 * @param string $type image =>图片  file => 文件
 * @return array
 * @author: wangyan
 */
function upload_file($file_request, $path, $type = 'file')
{
    $file = $file_request;
    if ($file->isValid()) {
        $file_type = 0;
        //判断文件类型
        $mimeTye = $file->getInfo()['type'];
        if ($type == 'image') {
            $mime = ['image/bmp', 'image/cis-cod', 'image/gif', 'image/ief', 'image/jpeg', 'image/pipeg', 'image/png', 'image/svg+xml', 'image/tiff', 'image/x-cmu-raster', 'image/x-cmx', 'image/x-icon',];
            if (!in_array($mimeTye, $mime)) {
                return ['status' => false, 'error' => '图片格式不允许'];
            }
        } elseif ($type == 'file') {
            $mime = ['application/zip', 'video/mpeg', 'video/quicktime', 'video/x-msvideo', 'video/x-sgi-movie'];
            if (!in_array($mimeTye, $mime)) {
                return ['status' => false, 'error' => '文件格式不允许'];
            }
        } else {
            return ['status' => false, 'error' => '系统参数错误'];
        }
        //判断文件大小
        if ($file->getSize() > 20480000) {
            return ['status' => false, 'error' => '文件太大，限制20M'];
        }

        $entension = explode(".",$file->getInfo()['name'])[1];; //上传文件的后缀.
        $file_path = "uploads/" . $path . "/" . date('Y-m-d', time()) . '/';
        $file_name = time()  . \think\helper\Str::random(5) . '.' . $entension;
        $path = $file->move($file_path, $file_name);
        if ($path) {
            return ['status' => true, 'path' => '/'.$file_path . $file_name];
        }
    } else {
        return ['status' => false, 'error' => '文件错误'];
    }
}

if (!function_exists('get_city_name')) {

    /**
     * 通过id获取城市名称
     * @param $id
     * @return mixed
     */
    function get_city_name($id)
    {
        return \think\Db::name('region')->where(['id' => $id])->value('name');

    }
}

if (!function_exists('logs')) {
    /**
     * 写日志到文件
     *
     * @return void
     * @author AriFe.Liu <muyibu@163.com>
     */
    function logs($content, $th = null, $filename = '', $path = '')
    {
        $attach = "";
        if (!is_null($th)) {
            $trace = $th->getTrace();
            $file = $trace[0]['file'];
            $line = $trace[0]['line'];
            $func = $trace[0]['function'];
            $attach = $file . ' ' . $line . ' ' . $func;
        }
        if (!empty($filename)) {
            $filename .= '-';
        }
        if (empty($path)) {
            $path = 'logs/';
        }
        if (is_array($content)) {
            $content = json_encode($content, JSON_UNESCAPED_UNICODE);
        }
        $file = $path . $filename . date('Y-m-d') . '.log';
        file_put_contents($file, date("Y-m-d H:i:s", time()) . ' ' . $attach . "\r\n" . $content . "\r\n", FILE_APPEND);
    }
}



if (!function_exists('alert')) {

    /**
     * 弹出层提示
     * @param string $msg 提示信息
     * @param string $url 跳转链接
     * @param int $time 停留时间 默认2秒
     * @param int $icon 提示图标
     * @return string
     */
    function alert($msg = '', $url = '', $time = 3, $icon = 6)
    {
        $success = '<meta name="renderer" content="webkit">';
        $success .= '<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">';
        $success .= '<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">';
        $success .= '<script type="text/javascript" src="/static/admin/js/jquery-2.1.1.js"></script>';
        $success .= '<script type="text/javascript" src="/static/common/layui-layer/layer.js"></script>';
        if (empty($url)) {
            $success .= '<script>$(function(){layer.msg("' . $msg . '", {icon: ' . $icon . ', time: ' . ($time * 1000) . '});})</script>';
        } else {
            $success .= '<script>$(function(){layer.msg("' . $msg . '",{icon:' . $icon . ',time:' . ($time * 1000) . '});setTimeout(function(){self.location.href="' . $url . '"},2000)});</script>';
        }
        return $success;
    }
}

if (!function_exists('msg_success')) {

    /**
     * 成功时弹出层提示信息
     * @param string $msg 提示信息
     * @param string $url 跳转链接
     * @param int $time 停留时间 默认2秒
     * @param int $icon 提示图标
     * @return string
     */
    function msg_success($msg = '', $url = '', $time = 3, $icon = 1)
    {
        return alert($msg, $url, $time, $icon);
    }
}

if (!function_exists('msg_error')) {

    /**
     * 失败时弹出层提示信息
     * @param string $msg 提示信息
     * @param string $url 跳转链接
     * @param int $time 停留时间 默认2秒
     * @param int $icon 提示图标
     * @return string
     */
    function msg_error($msg = '', $url = '', $time = 3, $icon = 2)
    {
        return alert($msg, $url, $time, $icon);
    }
}

if (!function_exists('__success')) {

    /**
     * 成功时返回的信息
     * @param $msg 消息
     * @return \think\response\Json
     */
    function __success($msg, $data = [])
    {
        return json(['code' => 0, 'msg' => $msg, 'data' => $data]);
    }
}

if (!function_exists('__error')) {

    /**
     * 错误时返回的信息
     * @param $msg 消息
     * @return \think\response\Json
     */
    function __error($msg, $data = [])
    {
        return json(['code' => 1, 'msg' => $msg, 'data' => $data]);
    }
}

if (!function_exists('__token_error')) {

    /**
     * 错误时返回的信息
     * @param $msg 消息
     * @return \think\response\Json
     */
    function __token_error($msg, $data = [])
    {
        return json(['code' => 1001, 'msg' => $msg, 'data' => $data]);
    }
}

if (!function_exists('encryptPassword')) {

    /**
     *加密密码
     * @param string $password
     * @param string $salt
     * @return string
     */

    function encryptPassword( $password,  $salt = '')
    {
        return md5(md5($password) . $salt);
    }
}

if (!function_exists('get_ip')) {

    /**
     * 获取用户ip地址
     * @return array|false|string
     */
    function get_ip()
    {
        $ip = false;
        if (!empty($_SERVER["HTTP_CLIENT_IP"])) {
            $ip = $_SERVER["HTTP_CLIENT_IP"];
        }
        if (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $ips = explode(", ", $_SERVER['HTTP_X_FORWARDED_FOR']);
            if ($ip) {
                array_unshift($ips, $ip);
                $ip = false;
            }
            for ($i = 0; $i < count($ips); $i++) {
                if (!eregi("^(10│172.16│192.168).", $ips[$i])) {
                    $ip = $ips[$i];
                    break;
                }
            }
        }
        return ($ip ? $ip : $_SERVER['REMOTE_ADDR']);
    }
}

if (! function_exists('array_set')) {
    /**
     * Set an array item to a given value using "dot" notation.
     *
     * If no key is given to the method, the entire array will be replaced.
     *
     * @param  array   $array
     * @param  string  $key
     * @param  mixed   $value
     * @return array
     */
    function array_set(&$array, $key, $value)
    {
        if (is_null($key)) {
            return $array = $value;
        }

        $keys = explode('.', $key);

        while (count($keys) > 1) {
            $key = array_shift($keys);

            // If the key doesn't exist at this depth, we will just create an empty array
            // to hold the next value, allowing us to create the arrays to hold final
            // values at the correct depth. Then we'll keep digging into the array.
            if (! isset($array[$key]) || ! is_array($array[$key])) {
                $array[$key] = [];
            }

            $array = &$array[$key];
        }

        $array[array_shift($keys)] = $value;

        return $array;
    }
}

if (! function_exists('permission_config')) {
    /**
     * 通过权限前缀获取权限名
     * @param $name
     * @return mixed
     */
    function permission_config($name)
    {
        return config('permission.message.' . $name);
    }
}

if (! function_exists('write_error_logs')) {
    /**
     * 写入错误日志
     * @param $arr ['目标出错的控制其方法', '错误信息']
     */
    function write_error_logs($arr)
    {
        $data = array(
            'target' => $arr[0],
            'text' => $arr[1],
            'time' => date('Y-m-d H:i:s', time())
        );
        \think\Db::name('error_logs')->insert($data);
    }
}


if (! function_exists('permission')) {

    /**
     * 检测按钮
     * @param $input
     * @return mixed
     */
    function permission($input)
    {
        $auth = new Auth();
        return  $auth->check($input, session('admin.id'));
    }

}
