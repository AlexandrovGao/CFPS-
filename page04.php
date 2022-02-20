<?php
error_reporting(E_ERROR);
if($_POST['sql']){
	$dbhost = '172.81.239.4';  // mysql服务器主机地址
	$dbuser = 'root';            // mysql用户名
	$dbpass = '123456';          // mysql用户名密码
	$conn = mysqli_connect($dbhost,$dbuser,$dbpass);  
	if ($conn)
	{
        $sql = $_POST['sql'];
		$result = mysqli_query($conn,$sql) ;
	}
	else{ die("连接失败： " . mysqli_connect_error());}
	mysqli_close($conn);
}
?> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>index</title>
<link rel="stylesheet" href="./glass.css">
<style type="text/css">
a{ text-decoration:none; color: #333; }
a:hover{ color:#c00;}
</style>
</head>

<body>

<?php 
if($result){
	$i = 0;
	echo '<table style=" width:400px; line-height:25px;" cellpadding="0" cellspacing="0">';
	while($row = mysqli_fetch_assoc($result)){
		$i++;
		if ($i==1) {
			echo "<tr>";
			foreach($row as $k=>$v){
				echo "<td style='border-bottom:1px solid #333;'>".$k."</td>";
			}
			echo "</tr>";
		}
		echo "<tr>";
		foreach($row as $k=>$v){
			echo "<td>".$v."</td>";
		}
		echo "</tr>";
	}
	echo '</table>';
}?>
	
</body>
</html>