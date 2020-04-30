<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/4/30 0030
 * Time: 14:40
 */
namespace app\index\model;
use think\Model;

class Type extends Model
{
    protected $table = 'bk_type';
    protected $pk = 'tid';


    public static  function type_list()
    {
        $list = self::where('isdelete',1)->select();
        foreach ($list as $key=>$value){
            $list[$key]['article'] = Article::where("isdelete = 1 and type=".$list[$key]['tid'])->select()->toArray();
        }
        return $list->toArray();
    }

}