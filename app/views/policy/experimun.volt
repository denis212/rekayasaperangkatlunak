<?php
//include("response.php");
?>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
{{ stylesheet_link('dist/style.min.css')}}
{{ stylesheet_link('dist/split-pane.css')}}
<!-- <link rel="stylesheet" href="dist/split-pane.css" /> -->
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.9.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>
{{ javascript_include('dist/split-pane.min.js') }}
<title>jsTree: Advanced jsTree fucntionality with php and MySQL</title>
<style>
 html, body {
                height: 100%;
                min-height: 100%;
                margin: 0;
                padding: 0;
            }
 #left-component {
				right: 20%;
				margin-right: 5px;
			}

			#my-divider {
				right: 20%;
				width: 5px;
			}

			#right-component {
				width: 80%;
			}
			.pretty-split-pane-frame {
	box-sizing: border-box;
	width: 100%;
	height: 100%;
	padding: 5px;
	background: silver;
}

.pretty-split-pane-frame .split-pane > .split-pane-divider.dragged.touch {
	background: blue;
	opacity: 0.25;
}

.pretty-split-pane-component-inner {
	box-sizing: border-box;
	border: 1px solid gray;
	background: white;
	width: 100%;
	height: 100%;
	padding: 1em 1em;
	overflow: auto;
}
</style>
</head>
<body>
<div class="pretty-split-pane-frame"><!-- This div is added for styling purposes only. It's not part of the split-pane plugin. -->
			<div class="split-pane vertical-percent" style="min-width: 5px;">
				<div class="split-pane-component" id="left-component">
					<div class="pretty-split-pane-component-inner"><!-- This div is added for styling purposes only. It's not part of the split-pane plugin. -->
						<div class="col-sm-3"><input type="text" class="form-control input-sm" placeholder="Type to search..." id="searchText" name="searchText"/>
						</div>
						<div id="tree-container"></div>
					</div>
				</div>
				<div class="split-pane-divider" id="my-divider"><div class="split-pane-divider-inner"></div></div>
				<div class="split-pane-component" id="right-component">
					<div class="pretty-split-pane-component-inner" id="right-container"><!-- This div is added for styling purposes only. It's not part of the split-pane plugin. -->
						<p>click node href attribute content</p>
					</div>
				</div>
			<div class="split-pane-resize-shim"></div></div>
		</div>
</body>
</html>
<script type="text/javascript">
jQuery(function($) {
$(document).ready(function(){
$('div.split-pane').splitPane();
    //fill data to tree  with AJAX call
    $('#tree-container').jstree({
	'plugins': ["wholerow", "types", "search"],
        'core' : {
            'data' : {
                "url" : "http://localhost/jpu/policy/experib",
                "dataType" : "json" // needed only if you do not supply JSON headers
            }
        }
    })
	.bind("select_node.jstree", function (e, data) {
     var href = data.node.a_attr.href;
	 if(href == '#')
	 return '';
	 //uncomment this if you want redirect on href
     //document.location.href = href;

	 //set conetnt on node click
	 $('#right-container').html(href);
	 //console.log(href);
});

$( "#searchText" ).keyup(function() {
   var text = $(this).val();
   search(text)

});

function search(text){
            $('#tree-container').jstree(true).search(text);
        }
});
});
</script>
