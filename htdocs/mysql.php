<?php
    header('content-type:text/html;charset=utf-8');
    $mysql =new mysqli("localhost","root","20020220liu","123");
    if ( $mysql -> connect_errno){
        die('数据库链接失败！'.$mysql ->connect_errno);
    }
    echo '<h1 style="color:red">数据库链接成功！</h1>';
?>