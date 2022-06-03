<?php
$sername = "localhost";//服务名称
$uname = "root";//数据库访问用户名
$pwd = "20020220liu";//数据库密码
$dbname = "123";//建立的数据库

//创建连接
$conn = new mysqli($sername,$uname,$pwd,$dbname);
$conn->set_charset("utf8");
if($conn->connect_error)
{
	die("连接失败：".$conn->connect_error);
}
$sql = "SELECT SNO FROM s";//数据查询指令
$result = $conn->query($sql);
$data = $result->fetch_all();
echo json_encode($data);//json格式输出
?>
