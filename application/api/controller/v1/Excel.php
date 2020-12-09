<?php
namespace app\api\controller\v1;

use app\api\controller\Base;
use think\Db;
use think\Exception;
use think\Request;


class Excel extends Base
{

    public function importExcel(Request $request)
    {
        header("content-type:text/html;charset=utf-8");

        if(empty($request->file())){
            return __error('Please upload a file！');
        }

        //上传excel文件
        $file = $request->file('file');

        $file_info = $file->getInfo();

        if (is_uploaded_file($file_info['tmp_name'])) {
            //截取文件的后缀名
            $suffix = pathinfo($file_info['name'],PATHINFO_EXTENSION);
            if($suffix == 'xlsx'){
                $reader = \PHPExcel_IOFactory::createReader('Excel2007');
            }else{
                $reader = \PHPExcel_IOFactory::createReader('Excel5');
            }

        }else{
            return __error('The file is too large or the format is incorrect, causing the upload to fail!');
        }

        //载入excel文件
        $excel = $reader->load($file_info['tmp_name'], $encode = 'utf-8');

        //读取第一张表
        $sheet = $excel->getSheet(0);

        //获取总行数
        $row_num = $sheet->getHighestRow();

        //获取总列数
        $col_num = $sheet->getHighestColumn();

        $import_data = []; //数组形式获取表格数据
        for ($i = 2; $i<= $row_num; $i++){
            $import_data[$i]['order_on']  = $sheet->getCell("A" . $i)->getValue();
            $import_data[$i]['sku']  = $sheet->getCell("B" . $i)->getValue();
            $import_data[$i]['goods_name']  = $sheet->getCell("C" . $i)->getValue();
            $import_data[$i]['intro']  = $sheet->getCell("D" . $i)->getValue();
            $import_data[$i]['attr']  = $sheet->getCell("E" . $i)->getValue();
            $import_data[$i]['num']  = $sheet->getCell("F" . $i)->getValue();
            $import_data[$i]['price']  = $sheet->getCell("G" . $i)->getValue();
            $import_data[$i]['name']  = $sheet->getCell("H" . $i)->getValue();
            $import_data[$i]['country']  = $sheet->getCell("I" . $i)->getValue();
            $import_data[$i]['province']  = $sheet->getCell("J" . $i)->getValue();
            $import_data[$i]['city']  = $sheet->getCell("K" . $i)->getValue();
            $import_data[$i]['area']  = $sheet->getCell("L" . $i)->getValue();
            $import_data[$i]['addr']  = $sheet->getCell("M" . $i)->getValue();
            $import_data[$i]['postcode']  = $sheet->getCell("N" . $i)->getValue();
            $import_data[$i]['phone']  = $sheet->getCell("O" . $i)->getValue();
            $import_data[$i]['color']  = $sheet->getCell("P" . $i)->getValue();
            $import_data[$i]['delivery_place']  = $sheet->getCell("Q" . $i)->getValue();
        }
        $status = 1;
        Db::startTrans();
        try {
            foreach ($import_data as $key => $val) {
                $order_data = [
                    'user_id' => $this->getUserId(),
                    'order_num' => $val['order_on'],
                    'pay_price' => $val['price'] * $val['num'],
                    'country' => $val['country'],
                    'province' => $val['province'],
                    'city' => $val['city'],
                    'area' => $val['area'],
                    'addr' => $val['addr'],
                    'postcode' => $val['postcode'],
                    'phone' => $val['phone'],
                    'name' => $val['name'],
                    'add_time' => time(),
                    'pay_time' => time(),
                    'type' => 3,
                    'pay_status' => 1,
                    'pay_way' => 2,
                    'status' => 1
                ];
                $order_id = Db::name('order_info')->insertGetId($order_data);
                if ($order_id <= 0) {
                    $status = 0;
                    break;
                }
                if ($order_id) {
                    $i = $order_id;
                    $_data = [
                        'order_goods_number' => date('YmdHis', time()) . $i++ . $this->getUserId(),
                        'order_id' => $order_id,
                        'goods_id' => '',
                        'user_id' => $this->getUserId(),
                        'price' => $val['price'],
                        'num' => $val['num'],
                        'goods_name' => $val['goods_name'],
                        'english_name' => $val['goods_name'],
                        'goods_thumb' => $val['color'],
                        'intro' => $val['intro'],
                        'english_intro' => $val['intro'],
                        'attr' => $val['attr'],
                        'color' => $val['color'],
                        'sku' => $val['sku'],
                        'delivery_place' => $val['delivery_place'],
                        'pay_status' => 1,
                        'pay_time' => time(),
                        'status' => 1
                    ];
                    $order_goods__id = DB::name('order_goods')->insert($_data);
                    if ($order_goods__id <= 0) {
                        $status = 0;
                        break;
                    }
                }
            }
            if($status == 0) {
                Db::rollback();
                return __error('fail');
            }else{
                Db::commit();
                return __success('success');
            }
        }catch (Exception $e){
            Db::rollback();
            return __error('fail');
        }



    }

}