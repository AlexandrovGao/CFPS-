<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="./glass.css">
<title>index</title>
<style type="text/css">
a{ text-decoration:none; color: #333; }
a:hover{ color:#c00;}
</style>
</head>

<body>
<div class="glass">
<?php
// Usage without mysql_list_dbs()


	$dbhost = '172.81.239.4';  // mysql服务器主机地址
	$dbuser = 'root';            // mysql用户�?
	$dbpass = '123456';          // mysql用户名密�?
	$conn = mysqli_connect($dbhost,$dbuser,$dbpass);  
	if ($conn)
	{
		$res = mysqli_query($conn,"SHOW DATABASES");
			$a=substr($_SERVER["QUERY_STRING"],3);

		
			mysqli_select_db($conn,$a) or die("���ݿ�����ʧ�ܣ�". mysqli_connect_error());
			
			$result = mysqli_query($conn,"SHOW TABLES");
			?>
		<table width="400" style=" width:380px; padding:10px; line-height:25px;" cellpadding="0" cellspacing="0"><tr><td style='border-bottom:1px solid #333;'>tables</td></tr><?php
		while($rows = mysqli_fetch_array($result))
			{
			echo "<tr><td><a href=page09.php?id=".$a.".".$rows[0] . ">".$rows[0]."</td></tr>";  
			}

		?></table>
		<?php
	}
	else{ die("����ʧ��:" . mysqli_connect_error());}
	mysqli_close($conn);

?>
</div>
</body>
</html>
