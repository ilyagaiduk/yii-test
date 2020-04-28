<?php


namespace app\models;
use Yii;
use yii\db\ActiveRecord;

class Pesonaldata extends ActiveRecord
{
public function getTable(){
    $query = new \yii\db\Query;
    $query->select('`finance`.`id`, `pesonaldata`.`name`, `finance`.`cost`')
        ->from('`finance`')
        ->innerJoin('`pesonaldata`', '`finance`.`idclients` = `pesonaldata`.`id`')
        ->orderBy('`finance`.`cost` desc');
    $command = $query->createCommand();
    $response = $command->queryAll();
    return $response;
}
}
