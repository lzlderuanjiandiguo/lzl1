<?php
    
    $mysql =new mysqli("localhost","root","20020220liu","123");
    if ( !$mysql){
        die('数据库链接失败！'.$mysql->connection_error);
    }
    echo '<h1 style="color:red">数据库链接成功！</h1>';
?>
