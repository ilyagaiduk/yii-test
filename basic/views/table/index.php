<h1>Отчет о покупках</h1>
<?php
foreach($data as $key) {
    $name = $key['name'];
    $cost = $key['cost'];
    echo $name." - стомость покупки: ".$cost."<br>";
}
?>