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
<script src="echarts-5.3.0/package/dist/echarts.js" ></script>
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
		}else{
      mysqli_select_db($conn,$get['database']) or die("数据库连接失败！". mysqli_connect_error());
      $query = array_key_exists('table',$get)?"SHOW FULL COLUMNS FROM ".$get['table']:"SHOW TABLES";
      $res = mysqli_query($conn,$query);
      $query = "SELECT count(".$get['id'].") as nums, ".$get['id']." FROM ".$get['table']." group by ".$get['id'];
      $data = mysqli_query($conn,$query);
      $x_axis=[];
      $y_axis=[];
      $result =[];
      while($row = mysqli_fetch_assoc($data)){
          $x_axis[]=$row[$get['id']];
          $y_axis[]=$row['nums'];
          $result[]=['name'=>$row[$get['id']],'value'=>$row['nums']];
      }
      $x_axis = json_encode($x_axis);
      $y_axis = json_encode($y_axis);
      $result= json_encode($result);
      $type = ['bar'=>'基础柱状','bar1'=>'横向条形图','bar2'=>'环形条形图','bar3'=>'极坐标柱状图','bar4'=>'圆角环形图','bar5'=>'带背景色的柱状图','line'=>'基础折线图','line1'=>'基础平滑折线图','line2'=>'基础面积图','line3'=>'大量数据面积图','line4'=>'垂直折线图','line5'=>'阶梯折线图','line6'=>'折柱混合图','pie'=>'基础饼图','pie1'=>'基础南丁格尔玫瑰图','pie2'=>'圆角环形图','pie3'=>'环形图'];
    }
?>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
				<table class="table table-hover table-bordered table-center" style='vertical-align: middle;text-align: center;'>
					<thead>
						<tr>
              <th style='vertical-align: middle;text-align: center;'>图标样式【<?php echo $get['table'] ?>】</th>
							<th style='vertical-align: middle;text-align: center;'>Database:【<?php echo $get['database'] ?>】</th>
              <th style='vertical-align: middle;text-align: center;'>Table【<?php echo $get['table'] ?>】</th>
              <th style='vertical-align: middle;text-align: center;'>
                <label class="col-sm-12 control-label">column</label>
                <div class="col-sm-12">
                  <select class="form-control" name="id">
                    <?php
                      while ($row = mysqli_fetch_array($res)) {
                        if($row[0]==$get['id']){
                          echo "<option selected value='".$row[0]."'>".$row[0]."</option>";
                        }else{
                          echo "<option value='".$row[0]."'>".$row[0]."</option>";
                        }
                      }
                    ?>
                  </select>
                </div>
              </th>
              <th style='vertical-align: middle;text-align: center;'>
                <label class="col-sm-12 control-label">图标样式</label>
                <div class="col-sm-12">
                  <select class="form-control" name="type">
                    <?php
                      foreach ($type as $key => $value) {
                        if($key == $get['type']){
                            echo "<option selected value='".$key."'>$value</option>";
                        }else{
                           echo "<option value='".$key."'>$value</option>";
                        }
                      }
                    ?>
                  </select>
                </div>
              </th>
						</tr>
					</thead>
					<tbody>

					</tbody>
				</table>
        <div class="col-md-12">
           <div id="main" style="width: 100%;height:600px;"></div>
        </div>
			</div>
		</div>

</div>
</body>
<script type="text/javascript">
      // 基于准备好的dom，初始化echarts实例
      var myChart = echarts.init(document.getElementById('main'));
<?php
  switch ($get['type']) {
    case 'bar1':
          echo "var option = {title: {  text: '【".$get['id']."】内容出现次数'},tooltip: {},legend: {data: ['".$get['id']."']},  xAxis: { type:'value' },yAxis: {type: 'category',data: ".$y_axis."},series: [{name: '".$get['id']."',type: 'bar',data: ".$x_axis."  }]  };";
      break;
    case 'bar2':
          echo "var option = {title: {  text: '【".$get['id']."】内容出现次数'},tooltip: {},legend: {data: ['".$get['id']."']},polar: {radius: [30, '80%']},angleAxis: { max: 4,startAngle: 75},  radiusAxis: { type:'category',data:".$x_axis." },series: [{name: '".$get['id']."',coordinateSystem: 'polar',type: 'bar', label: {show: true,osition: 'middle',formatter: '{b}: {c}'},data: ".$y_axis."  }]  };";
      break;
    case 'bar3':
          echo "var option = { title: [{ text: '【".$get['id']."】内容出现次数'}],polar: {radius: [30, '80%']},radiusAxis: {max: 4},angleAxis: {type: 'category',data:".$x_axis.",startAngle: 75},tooltip: {},series: {type: 'bar',data: ".$y_axis.",coordinateSystem: 'polar',label: {show: true,position: 'middle', formatter: '{b}: {c}'}},backgroundColor: '#fff',animation: false};";
      break;
    
      case 'bar4':
        echo "var option={angleAxis:{max:2,startAngle:30,splitLine:{show:false}},radiusAxis:{type:'category',data:".$x_axis.",z:10},polar:{},series:[{type:'bar',data:".$y_axis.",coordinateSystem:'polar',name:'【".$get['id']."】内容出现次数',itemStyle:{borderColor:'red',opacity:0.8,borderWidth:1}}],legend:{show:true,data:['【".$get['id']."】内容出现次数']}};";
    break;

    case 'bar5':
      echo " var 
      option={xAxis:{type:'category',data:".$x_axis."},yAxis:{type:'value'},series:[{data:".$y_axis.",type:'bar',showBackground:true,backgroundStyle:{color:'rgba(180, 180, 180, 0.2)'}}]};";
      break;

    case 'line':
          echo "var option = {title: {  text: '【".$get['id']."】内容出现次数'},tooltip: {},legend: {data: ['".$get['id']."']},  xAxis: {type: 'category', data: ".$x_axis." },yAxis: {type: 'value'},series: [{name: '".$get['id']."',type: 'line',data: ".$y_axis."  }]  };";
      break;
    case 'line1':
          echo "var option = {title: {  text: '【".$get['id']."】内容出现次数'},tooltip: {},legend: {data: ['".$get['id']."']},  xAxis: {type: 'category', data: ".$x_axis." },yAxis: {type: 'value'},series: [{name: '".$get['id']."',type: 'line',smooth: true,data: ".$y_axis."  }]  };";
      break;

    case 'line2':
          echo "var option = {title: {  text: '【".$get['id']."】内容出现次数'},tooltip: {},legend: {data: ['".$get['id']."']},  xAxis: {type: 'category', data: ".$x_axis." },yAxis: {type: 'value'},series: [{name: '".$get['id']."',type: 'line',areaStyle: {},data: ".$y_axis."  }]  };";
      break;

    case 'line3':
          echo "var option = {title: {  text: '【".$get['id']."】内容出现次数'},tooltip: {},legend: {data: ['".$get['id']."']},  xAxis: {type: 'category', data: ".$x_axis." },yAxis: {type: 'value'},series: [{name: '".$get['id']."',type: 'line',symbol: 'none',sampling: 'lttb',itemStyle: {color: 'rgb(255, 70, 131)'},areaStyle: {color: new echarts.graphic.LinearGradient(0, 0, 0,1, [{offset: 0,color: 'rgb(255, 158, 68)'},
        {offset: 1,color: 'rgb(255, 70, 131)'}])},data: ".$y_axis."  }]  };";
      break;
    
    case 'line4':
        echo "var option = {legend: {data: ['【".$get['id']."】内容出现次数']}, tooltip: {trigger: 'axis',},grid: {left: '3%',right: '4%',bottom: '3%',containLabel: true},xAxis: {type: 'value'},yAxis: {type: 'category',axisLine: { onZero: false }, boundaryGap: false,data: ".$x_axis."},series: [{name: '【".$get['id']."】内容出现次数',type: 'line',symbolSize: 10,symbol: 'circle',smooth: true,lineStyle: {width: 3,shadowColor: 'rgba(0,0,0,0.3)',shadowBlur: 10,shadowOffsetY: 8},data: ".$y_axis."} ]};";
      break;

    case 'line5':
      echo "var option = {title: {text: '【".$get['id']."】内容出现次数'},tooltip: {trigger: 'axis'},legend: {data: ['".$get['id']."']},grid: {left: '3%',right: '4%',bottom: '3%',containLabel: true},toolbox: {feature: {saveAsImage: {}}},xAxis: {type: 'category',data: ".$x_axis."},yAxis: {type: 'value'},series: [{name: 'Step Start', type: 'line',step: 'start',data:".$y_axis."},]};";
    break;

    case 'line6':
      echo "option = {tooltip: {trigger: 'axis',axisPointer: {type: 'cross',crossStyle: {color: '#999'}} },toolbox: {feature: {dataView: { show: true, readOnly: false },magicType: { show: true, type: ['line', 'bar'] },restore: { show: true },saveAsImage: { show: true }}},legend: {data: ['".$get['id']."_bar', '".$get['id']."'] },xAxis: [{type: 'category',data: ".$x_axis.",axisPointer: {type: 'shadow'}}], yAxis: [{type: 'value',name: '".$get['id']."'},{type: 'value', axisLabel: {formatter: '{value}'} }],series: [{name: 'Evaporation',type: 'bar',tooltip: {valueFormatter: function (value) {return value ;}},data: ".$y_axis."},{name: 'Temperature',type: 'line',yAxisIndex: 1,tooltip: {valueFormatter: function (value) {return value ;}},data: ".$y_axis."}]};";
      break;


    case 'pie':
        echo "option = {title: {text: '【".$get['id']."】内容出现次数',left: 'center'},tooltip: {trigger: 'item'},legend: {orient: 'vertical',left: 'left'},series: [{name: '".$get['id']."',type: 'pie',radius: '50%',data: ".$result.",emphasis: {itemStyle: {shadowBlur: 10,shadowOffsetX: 0,shadowColor: 'rgba(0, 0, 0, 0.5)'}}}]};";
      break;

    case 'pie1':
        echo "option = {title: {text: '【".$get['id']."】内容出现次数',left: 'center'},tooltip: {trigger: 'item'},legend: {orient: 'vertical',left: 'left'},series: [{name: '".$get['id']."',type: 'pie', radius: [50, 250],center: ['50%', '50%'],roseType: 'area',data: ".$result."}]};";
    break;
    case 'pie2':
      echo "option={tooltip:{trigger:'item'},legend:{top:'5%',left:'center'},series:[{name:'【".$get['id']."】内容出现次数',type:'pie',radius:['40%','70%'],avoidLabelOverlap:false,itemStyle:{borderRadius:10,borderColor:'#fff',borderWidth:2},label:{show:false,position:'center'},emphasis:{label:{show:true,fontSize:'40',fontWeight:'bold'}},labelLine:{show:false},data:".$result."}]};";
      break;
    case 'pie3':
      echo "var option={tooltip:{trigger:'item'},legend:{top:'5%',left:'center'},series:[{name:'【".$get['id']."】内容出现次数',type:'pie',radius:['40%','70%'],avoidLabelOverlap:false,label:{show:false,position:'center'},emphasis:{label:{show:true,fontSize:'40',fontWeight:'bold'}},labelLine:{show:false},data:".$result."}]};";
      break;

    default:
        echo "var option = {title: {  text: '【".$get['id']."】内容出现次数'},tooltip: {},legend: {data: ['".$get['id']."']},  xAxis: {type: 'category', data: ".$x_axis." },yAxis: {type: 'value'},series: [{name: '".$get['id']."',type: 'bar',data: ".$y_axis."  }]  };";
      break;
  }
?>


      // 使用刚指定的配置项和数据显示图表。
      myChart.setOption(option);

      $('select').change(function(){
          window.location.href = "page10.php?database=<?php echo $get['database']."&table=".$get['table']."&id="; ?>"+$('select[name=id]').val()+"&type="+$('select[name=type]').val();
      })
</script>
</html>
<?php
}
else{ die("连接数据库失败" . mysqli_connect_error());}
mysqli_close($conn);
?>
