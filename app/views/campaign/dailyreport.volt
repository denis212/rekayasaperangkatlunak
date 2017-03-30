<?php
// include "header.php";

if( !empty($_GET['cp_id']) ) $def_cp_id = $_GET['cp_id'];
else $def_cp_id = "";
$sqlcp = "SELECT * FROM ".$database.".c_cp_detail WHERE status = 1";
$rscp = mysql_query($sqlcp);
while( $rowcp = mysql_fetch_assoc($rscp) ) {
	$arr_ContentCatcp[$rowcp['id']] = $rowcp['cp_name'];
}

$optContentCatcp = crtDropDownSearch($arr_ContentCatcp,"cp_id",$def_cp_id,"All Client","");

if( !empty($_GET['adnetwork_id']) ) $def_ad_id = $_GET['adnetwork_id'];
else $def_ad_id = "";
$sqlad = "SELECT * FROM ".$database.".c_adnetwork WHERE status = 1";
$rsad = mysql_query($sqlad);
while( $rowad = mysql_fetch_assoc($rsad) ) {
	$arr_ContentCatad[$rowad['adnetwork_id']] = $rowad['adnetwork_name'];
}

$optContentCatad = crtDropDownSearch($arr_ContentCatad,"adnetwork_id",$def_ad_id,"All Adnetwork","");

$strsql = "";
if( !empty($_GET['searchcontent']) && $_GET['searchcontent'] == "Search" ) {
	$smcari = $_GET['searchcontent'];
	$textvalue = $_GET['campaign_name'];
	$textStartCampaign = $_GET['start_campaign'];
	$textEndCampaign = $_GET['end_campaign'];
	if( $_GET['campaign_name'] <> "Campaign Name" ) $strsql = " AND campaign_name like '%".$_GET['campaign_name']."%'";

	if( $_GET['start_campaign'] <> "Start Date" ) {
		$ar_tgl_s = explode("/",$_GET['start_campaign']);
		$thns = $ar_tgl_s[2];
		$blns = $ar_tgl_s[0];
		$tgls = $ar_tgl_s[1];
	}
	else {
		$thns = date("Y");
		$blns = date("m");
		$tgls = date("d");
		$textStartCampaign = $blns."/".$tgls."/".$thns;
	}

	if( $_GET['end_campaign'] <> "End Date" ) {
		$ar_tgl_e = explode("/",$_GET['end_campaign']);
		$thne = $ar_tgl_e[2];
		$blne = $ar_tgl_e[0];
		$tgle = $ar_tgl_e[1];
	}
	else {
		$thne = date("Y");
		$blne = date("m");
		$tgle = date("d");
		$textEndCampaign = $blne."/".$tgle."/".$thne;
	}
}
else {
	$smcari = "";
	$suser = "";
	$textvalue = "Campaign Name";
	$textStartCampaign = "Start Date";
	$textEndCampaign = "End Date";

	$thns = date("Y");
	$blns = date("m");
	$tgls = date("d");

	$thne = date("Y");
	$blne = date("m");
	$tgle = date("d");

}

if( !empty($_GET['adnetwork_id']) && $_GET['adnetwork_id'] <> "--" ) {
	$strsql .= " AND c.adnetwork_id = ".$_GET['adnetwork_id'];
}

if( !empty($_GET['cp_id']) && $_GET['cp_id'] <> "--" ) {
	$strsql .= " AND c.cp_id = ".$_GET['cp_id'];
}

?>
	  <!-- CONTENT -->
      <div class="layout-content">
        <div class="layout-content-body">
          <div class="title-bar">
            <h1 class="title-bar-title">
              <span class="d-ib">Daily Report</span>
            </h1>
            <p class="title-bar-description">
              <small>to view daily report</small>
            </p>
          </div>

          <div class="row">
            <div class="col-xs-12">
              <div class="panel panel-body">
                <div class="table-responsive">
                  <div align="right">
					<form name="frmSrcBan" method="get" action="" >
					<table >
                    <tbody>
                      <tr>
                        <td ><input type="text" data-provide="datepicker" data-date-today-highlight="true" name="start_campaign" value="<?php echo $textStartCampaign;?>">&nbsp;<input type="text" data-provide="datepicker" data-date-today-highlight="true" name="end_campaign" value="<?php echo $textEndCampaign;?>">&nbsp;<input id="form-control-1" type="text" name="campaign_name" value="<?php echo $textvalue;?>" onfocus="javascript:this.value=''">&nbsp;<?php echo $optContentCatcp;?>&nbsp;<?php echo $optContentCatad;?>&nbsp;<button type="submit" value="Search" name="searchcontent">Search</button></td>
                      </tr>
                    </tbody>
                  </table>
				  </form>
				  </div>
				  <br/>

				  <?php
				   $i = 1;
					/*
				   $sql = "SELECT u.full_name, cp_name, adnetwork_name, payout, c.campaign_name, h.jumlah AS jhit, c.cp_id as cpid,c.id as cid, h.hit_date as hdate
							FROM ".$database.".c_user u, ".$database.".c_cp_detail cp, ".$database.".c_adnetwork a, ".$database.".c_campaign c, c_daily_hit_".$thns.$blns." h
							WHERE u.user_id = c.user_id
							AND cp.id = c.cp_id
							AND a.adnetwork_id = c.adnetwork_id
							AND c.id = h.campaign_id $strsql
							AND h.hit_date between '".$thns."-".$blns."-".$tgls."' and '".$thne."-".$blne."-".$tgle."'";
					*/
					//echo $sql;

				   $sql = "SELECT campaign_name, cp_name, adnetwork_name, campaign_id, sum( click ) AS jclick, sum( conversion ) AS jconv
							FROM (
							SELECT h.campaign_id, sum( h.jumlah ) AS click, '' AS conversion
							FROM ".$database.".c_daily_hit_".$thns.$blns." h
							WHERE hit_date
							BETWEEN '".$thns."-".$blns."-".$tgls."'
							AND '".$thne."-".$blne."-".$tgle."'
							GROUP BY h.campaign_id
							UNION SELECT c.campaign_id, '' AS click, sum( c.jumlah ) AS conversion
							FROM ".$database.".c_daily_cp_".$thns.$blns." c
							WHERE sms_date
							BETWEEN '".$thns."-".$blns."-".$tgls."'
							AND '".$thne."-".$blne."-".$tgle."'
							GROUP BY c.campaign_id
							)x
							INNER JOIN ".$database.".c_campaign cc ON cc.id = x.campaign_id
							INNER JOIN ".$database.".c_cp_detail cp ON cp.id = cc.cp_id
							INNER JOIN ".$database.".c_adnetwork a ON cc.adnetwork_id = a.adnetwork_id
							WHERE 1 $strsql
							GROUP BY campaign_id";
				   $rs = mysql_query($sql);
				   $num = mysql_num_rows($rs);
				   if( $num > 0 ) {

				   ?>

				  <table class="table table-bordered table-striped table-center">
                    <thead>
                      <tr class="bg-primary">
                        <th >Date Click</th>
                        <th >Client Name</th>
                        <th >Adnetwork</th>
						<th >Campaign Name</th>
						<th >Total Click</th>
						<th >Conversion</th>
						<th >Pixels</th>
						<th >Conversion Rate</th>
						<th >Revenue (IDR)</th>
						<th >Payout (USD)</th>
                      </tr>
                    </thead>
					<?php
						if( $thns == $thne && $blns == $blne && $tgls == $tgle ) {
							$date_click = $thns."-".$blns."-".$tgls;
						}
						else {
							$date_click = $thns."-".$blns."-".$tgls." to ".$thne."-".$blne."-".$tgle;
						}

						$totaljclick = 0;
						$totaljconv = 0;
						$totalrevenue = 0;
						$totalcost = 0;
						$totalprofit = 0;
						while( $row = mysql_fetch_assoc($rs) ) {

							$conv = ($row['jconv'] / $row['jclick'] ) * 100;
							$conv = number_format($conv, 2);

							$sqlrev = "SELECT SUM(payout_client) as rev FROM ".$database.".c_cp_log_".$thns.$blns." WHERE campaign_id = ".$row['campaign_id']." AND entry_date between '".$thns."-".$blns."-".$tgls." 00:00:00' and '".$thne."-".$blne."-".$tgle." 23:59:59' GROUP BY campaign_id";
							//echo $sqlrev."<br/>";
							$rsrev = mysql_query($sqlrev);
							$numrev = mysql_num_rows($rsrev);
							if( $numrev > 0 ) {
								$rowrev = mysql_fetch_assoc($rsrev);
								$revenue = $rowrev['rev'];
							}
							else {
								$revenue = 0;
							}

							//echo "<br/>";
							$sqlpay = "SELECT SUM(payout) as pay, count(1) as jp FROM ".$database.".c_sms_log_".$thns.$blns." WHERE campaign_id = ".$row['campaign_id']." AND entry_date between '".$thns."-".$blns."-".$tgls." 00:00:00' and '".$thne."-".$blne."-".$tgle." 23:59:59' GROUP BY campaign_id";
							//echo $sqlpay."<br/>";
							$rspay = mysql_query($sqlpay);
							$numpay = mysql_num_rows($rspay);
							if( $numpay > 0 ) {
								$rowpay = mysql_fetch_assoc($rspay);
								$payout = $rowpay['pay'];
								$jmop = $rowpay['jp'];
							}
							else {
								$payout = 0;
								$jmop = 0;
							}

							$profit = $revenue - $payout;

							$totaljclick += $row['jclick'];
							$totaljconv += $row['jconv'];
							$totalrevenue += $revenue;
							$totalcost += $payout;
							$totaljmop += $jmop;

					?>
                    <tbody>
                      <tr>
                        <th ><div align="left"><?php echo $date_click;?></div></th>
                        <td ><div align="left"><?php echo $row['cp_name'];?></div></td>
                        <td ><div align="center"><?php echo $row['adnetwork_name'];?></div></td>
						<td ><div align="left">(<?php echo $row['campaign_id'];?>) - <?php echo $row['campaign_name'];?></div></td>
						<td ><div align="right"><?php echo number_format($row['jclick'],0,'','.');?></div></td>
						<td ><div align="right"><?php echo number_format($row['jconv'],0,'','.');?></div></td>
						<td ><div align="right"><?php echo number_format($jmop,0,'','.');?></div></td>
						<td ><div align="right"><?php echo $conv;?> %</div></td>
						<td ><div align="right"><?php echo number_format($revenue,0,'','.');?></div></td>
						<td ><div align="right"><?php echo $payout;?></div></td>
                      </tr>
                    </tbody>

					<?php
						$i++; }
					?>
					<tbody>
                      <tr>
                        <th ><div align="left"></div></th>
                        <th ><div align="left"></div></th>
                        <th ><div align="center"></div></th>
						<th ><div align="left">TOTAL</div></th>
						<th ><div align="right"><?php echo number_format($totaljclick,0,'','.');?></div></th>
						<th ><div align="right"><?php echo number_format($totaljconv,0,'','.');?></div></th>
						<th ><div align="right"><?php echo number_format($totaljmop,0,'','.');?></div></th>
						<th ><div align="right"></div></th>
						<th ><div align="right"><?php echo number_format($totalrevenue,0,'','.');?></div></th>
						<th ><div align="right"><?php echo $totalcost;?></div></th>
                      </tr>
                    </tbody>
                  </table>
				  <?php
					  }
					  else {
					  ?>

					  <div class="text-center m-b">
						<small>No Record Found</small>
					  </div>

					  <?php
					  }
					  ?>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
	  <!-- CONTENT -->
<?php
// include "footer.php";
?>
