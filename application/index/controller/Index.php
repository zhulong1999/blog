<?php
namespace app\index\controller;

use app\index\model\Type;
use think\Controller;

class Index extends Controller
{
    public function index()
    {

        $type_list = Type::type_list();
        $this->assign('type_list',$type_list);
        return view('/index');
    }
}
