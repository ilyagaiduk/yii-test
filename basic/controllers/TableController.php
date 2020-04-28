<?php


namespace app\controllers;


use yii\web\Controller;
use app\models\Pesonaldata;

class TableController extends Controller
{
public function actionIndex(){
    //$posts = Pesonaldata::find()->all();
    $object = new Pesonaldata();
    $data = $object->getTable();
    return $this->render('index', compact('data'));
}
}