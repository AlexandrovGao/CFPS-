<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>index</title>
<style type="text/css">
a{ text-decoration:none; color: #333; }
a:hover{ color:#c00;}
table{ margin:0 auto; width:400px;}
body{background: url(./wallpaper.png);
    background-size: cover;
    background-attachment: fixed; text-align:center;}
</style>
</head>

<body>
<?php
// Usage without mysql_list_dbs()


	$dbhost = '172.81.239.4';  // mysql鏈嶅姟鍣ㄤ富鏈哄湴鍧�?
	$dbuser = 'root';            // mysql鐢ㄦ埛鍚?
	$dbpass = '123456';          // mysql鐢ㄦ埛鍚嶅瘑�?
	$conn = mysqli_connect($dbhost,$dbuser,$dbpass);  
	if ($conn)
	{
		$res = mysqli_query($conn,"SHOW DATABASES");
			$a=substr($_SERVER["QUERY_STRING"],3);

		    $hello = explode('.',$a); 

			mysqli_select_db($conn,$hello[0]) or die("数据库连接失败！");
			$rescolumns = mysqli_query($conn,"SHOW FULL COLUMNS FROM ".$hello[1]) ;
			if($rescolumns){
				?><table style=" width:400px; line-height:25px;" cellpadding="0" cellspacing="0"><tr><td style='border-bottom:1px solid #333;'>COLUMN_NAME</td></tr><?php
			while($row = mysqli_fetch_array($rescolumns)){
				?><tr><td><?php echo $row['Field']; ?></td></tr><?php
				}
				?></table><?php
			}
			else{ echo "空数据库";}
	}
	else{ die("连接失败:" . mysqli_connect_error());}
	mysqli_close($conn);

?>
</body>
</html>
