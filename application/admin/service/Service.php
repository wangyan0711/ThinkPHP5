<?php
namespace app\admin\service;

use think\Model;

class Service
{
    /**
     * @var Model
     */
    protected $model;

    public function __construct()
    {
        $this->initialize();
    }

    protected function initialize(){}
}