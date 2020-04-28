<?php


namespace app\controllers;


use yii\web\Controller;
use app\models\Pesonaldata;

class TableController extends Controller
{
public function actionIndex(){
    //$posts = Pesonaldata::find()->all();
    $query = new \yii\db\Query;
    $query->select('`finance`.`id`, `pesonaldata`.`name`, `finance`.`cost`')
        ->from('`finance`')
        ->innerJoin('`pesonaldata`', '`finance`.`idclients` = `pesonaldata`.`id`')
        ->orderBy('`finance`.`cost` desc');
$command = $query->createCommand();
$response = $command->queryAll();
    return $this->render('index', compact('response'));
}
}