<?php
$server = '172.81.239.4';
$user = 'root';
$pass = '123456';
$data='CFPS2010';
echo $_POST['sc'];
$conn = mysqli_connect($server,$user,$pass,$data);
if(!$conn) die("数据库系统连接失败！");
$res = mysqli_query($conn,$_POST['sc']) ;
  echo 'ccc';


?>