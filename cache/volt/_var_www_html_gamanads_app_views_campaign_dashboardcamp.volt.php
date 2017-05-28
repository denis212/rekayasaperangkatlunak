<title>Dashboard Campaign - GamanAds</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>

<div class="container" style="background-color:#f5f5f5; margin-top: 25px; margin-bottom:20px; border:1px solid #e3e3e3">

<div style="margin-left:20px; margin-right:20px;">
  <form name="dashboard" method="post" action="" >
    <div style="margin:20px;">
      <?= $form->render('period', ['class' => 'form-control', 'style' => 'width:150px;']) ?>
    </div>
  </form>
<div style="margin:30px;border-style: solid;border-color: black; width: 200px; height: 85px;" class="btn btn-default btn-lg col-md-5">
  <small>Clicks</small>
  <h2><?php echo $totalclick;?></h2>
</div>
<div style="margin:30px;border-style: solid;border-color: black; width: 200px; height: 85px;" class="btn btn-default btn-lg col-md-5">
  <small>Saldo</small>
  <h2><?php echo $dash_saldo;?></h2>
</div>
<div id="container2">
</div>

</div>
</div>

<?php
$date= mktime(0,0,0,date("m"),date("d"),date("Y"));
$day= date("Y-m-d",$date);

$date1= mktime(0,0,0,date("m"),date("d")-1,date("Y"));
$day1= date("Y-m-d",$date1);

$date2= mktime(0,0,0,date("m"),date("d")-2,date("Y"));
$day2= date("Y-m-d",$date2);

$date3= mktime(0,0,0,date("m"),date("d")-3,date("Y"));
$day3= date("Y-m-d",$date3);

$date4= mktime(0,0,0,date("m"),date("d")-4,date("Y"));
$day4= date("Y-m-d",$date4);

$date5= mktime(0,0,0,date("m"),date("d")-5,date("Y"));
$day5= date("Y-m-d",$date5);

$date6= mktime(0,0,0,date("m"),date("d")-6,date("Y"));
$day6= date("Y-m-d",$date6);

// echo $day;
// echo $day1;
// echo $day2;
// echo $day3;
// echo $day4;
// echo $day5;
// echo $day6;
// echo ' '.$sql;
// echo ' '.$clicklabel;
?>

<script>
var chart = Highcharts.chart('container2', {

    chart: {
        type: 'column',
        align: 'center'
    },

    title: {
        text: 'Click, Conversion and Pixels'
    },

    legend: {
        align: 'right',
        verticalAlign: 'middle',
        layout: 'vertical'
    },

    xAxis: {
      // "'".$day6."',"."'".$day5."',"."'".$day4."',"."'".$day3."',".
      // "'".$day2."',"."'".$day1."',"."'".$day."',"
        categories: [<?php echo $clicklabel; ?>],
    },

    yAxis: {
        allowDecimals: false,
        title: {
            text: 'Total'
        }
    },

    series: [{
        name: 'Clicks',
        data: [<?php echo $clickresult ?>]
    }, {
        name: 'Impression',
        data: []
    }, {
        name: 'Pixels',
        data: []
    }],

    responsive: {
        rules: [{
            condition: {
                maxWidth: 500
            },
            chartOptions: {
                legend: {
                    align: 'center',
                    verticalAlign: 'bottom',
                    layout: 'horizontal'
                },
                yAxis: {
                    labels: {
                        align: 'left',
                        x: 0,
                        y: -5
                    },
                    title: {
                        text: null
                    }
                },
                subtitle: {
                    text: null
                },
                credits: {
                    enabled: false
                }
            }
        }]
    }
});

chart.setSize(950, 350);
</script>
