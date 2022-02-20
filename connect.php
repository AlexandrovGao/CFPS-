<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="./glass.css">
<title>index</title>
<style type="text/css">
body{ line-height:200px; font-size:24px;}
a{ text-decoration:none; color: #333; }
a:hover{ color:#c00;}
</style>
</head>

<body>
<div class="glass">
<?php
	$dbhost = '172.81.239.4';  // mysql服务器主机地址
	$dbuser = 'root';            // mysql用户名
	$dbpass = '123456';          // mysql用户名密码
	$conn = mysqli_connect($dbhost,$dbuser,$dbpass);  
	if ($conn)
	{
		die("success!");
	}
	else{ die("denied!" . mysqli_connect_error());}
	mysqli_close($conn);
?> 
</div>
</body> 
