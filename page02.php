<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="zh-CN">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>index</title>
<link rel="stylesheet" href="./glass.css">
<link rel="stylesheet" href="bootstrap-3.4.1/dist/css/bootstrap.min.css">
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="js/jquery.min.js" ></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="bootstrap-3.4.1/dist/js/bootstrap.min.js"></script>
<style type="text/css">
a{ text-decoration:none; color: #333; }
/* a:hover{ color:#c00;} */
.glass{
	width:unset;
	height:unset;
	left:unset;
	transform:unset;
	top:10%;
}
table{
	margin-top:20px;
}
</style>
</head>

<body>
<div class="glass">
<?php
// Usage without mysql_list_dbs()
	$dbhost = '172.81.239.4';  // mysql服务器主机地址
	$dbuser = 'root';            // mysql用户名
	$dbpass = '123456';          // mysql用户名密码
	$conn = mysqli_connect($dbhost,$dbuser,$dbpass);
	if ($conn)
	{
		parse_str($_SERVER["QUERY_STRING"],$get);
		if(empty($get)){
			$res = mysqli_query($conn,"SHOW DATABASES");
			$title = 'Database';
		}else{
			mysqli_select_db($conn,$get['database']) or die("数据库连接失败！". mysqli_connect_error());
			$query = array_key_exists('table',$get)?"SHOW FULL COLUMNS FROM ".$get['table']:"SHOW TABLES";
			$title = array_key_exists('table',$get)?"COLUMNS ":"Tables";
			$res = mysqli_query($conn,$query);
		}
?>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
				<table class="table table-hover table-bordered table-center" style='vertical-align: middle;text-align: center;'>
					<thead>
						<tr>
							<th style='vertical-align: middle;text-align: center;'><?php echo $title;?></th>
						</tr>
					</thead>
					<tbody>
					<?php
						while ($row = mysqli_fetch_array($res)) {
								if(empty($get)){
									$item = "page02.php?database=".$row[0];
								}else{
									if(!array_key_exists('table',$get)){
										$item ="page02.php?database=".$get['database']."&table=".$row[0];
									}else{
										$item ="page10.php?database=".$get['database']."&table=".$get['table']."&id=".$row[0]."&type=bar";
									}
								}
								echo "<tr><td><a href='".$item."''>".$row[0]."</td></tr>";
							}
					?>
					</tbody>
				</table>
			</div>
		</div>
	<?php
	}
	else{ die("����ʧ�ܣ�" . mysqli_connect_error());}
	mysqli_close($conn);
?>
</div>
</body>
</html>
