
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-treeview/1.2.0/bootstrap-treeview.min.css" />
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.9.1.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-treeview/1.2.0/bootstrap-treeview.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>

<!-- <link type="text/css" rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/css/bootstrap.min.css" />

<link type="text/css" rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="dist/treeview.min.js"></script>

<script src="dist/logger.min.js"></script> -->

<title>UJI COBAAAAAA</title>
</head>
</head>
<body>
<h1>EKSPERIMEN PAKAI PHP DAN MySQL </h1>
<div class="well clearfix">
	<div class="col-md-7">
		<!--panel-->
		<div class="panel panel-default">
		 <div class="panel-heading">
			EKSPERIMEN TREE VIEW
		 </div>
		 <div class="panel-body">
			<div class="row">
				<div class="col-md-7" id="treeview_json">

				</div>
			</div>
		 </div>
		</div>
	</div>
</div>
</body>
</html>

<script type="text/javascript">
 jQuery(function($) {
$(document).ready(function(){
	var treeData;
	$.ajax({
	  type: "GET",
	  url: "http://localhost/jpu/policy/experia",
	  dataType: "json",
	  success: function(response)
	  {
		initTree(response)
	  }
	});
		function initTree(treeData) {
			$('#treeview_json').treeview({data: treeData});

		}

	});

});
</script>
