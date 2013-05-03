<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${request.contextPath + '/' }" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册</title>
<link rel="stylesheet" type="text/css" href="style/css/pss.css">
<script type="text/javascript" src="script/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="script/js/comm.js"></script>
<script type="text/javascript" src="script/js/ui.js"></script>
<style type="text/css">
	#register-box {
		width: 979px;
		margin: 0 auto;
	}
	#head {
		height: 80px;
	}
	#navi {
		height: 50px;
		border-left: 1px solid #dcdcdc;
		border-top: 1px solid #dcdcdc;
	}
	#navi ul {
		height: 50px;
		list-style: none;
		background: #f3f3f3;
	}
	#navi ul li {
		color: #808080;
		float: left;
		width: 325px;
		height: 50px;
		line-height: 50px;
		text-align: center;
		font-weight: bold;
		border-right: 1px solid #dcdcdc;
		border-bottom: 1px solid #dcdcdc;
	}
	#navi ul li.active {
		color: #000;
		background: #fff;
		border-bottom: none;
	}
	.step {
		display: none;
		border-left: 1px solid #dcdcdc;
		border-right: 1px solid #dcdcdc;
		border-bottom: 1px solid #dcdcdc;
		background: #fff;
		height: 400px;
	}
	.step.active {
		display: block;
	}
	.step-foot {
		width: 100%;
		height: 30px;
		line-height: 30px;
	}
	.step-foot .ui-btn {
		margin: 3px 20px;
	}
	.step-foot #btn-next {
		float: right;
	}
	.step-foot #btn-pre {
		float: left;
	}
</style>
<script type="text/javascript">
$(function(){
	$.ajax({
		type : 'POST',
		url : 'organization/industry/ajaxlist',
		data : 'randomNum=' + Math.random(),
		dataType: 'json',
		success : function(data) {
			var industrys = '';
			$.each(data, function(i,n){
				industrys = industrys + '<option value="' + n.id + '">' + n.name + '</option>'
			});
			$('#industry').append(industrys);
		}
	});
	$('#btn-next').on('click', function(){
		var index = $('#navi').find('li[class="active"]').removeClass('active').index() + 1;
		$('#navi').find('li:eq('+index+')').addClass('active');
		$('#tab').find('div.step').removeClass('active');
		$('#tab').find('div.step:eq('+index+')').addClass('active');
	});
	$('#btn-sub').on('click', function(){
		var datas = 'randomNum=' + Math.random();
		$.each($('#tab').find('dd').find('.form-value'), function(){
			datas = datas + '&' + $(this).attr('name') + "=" + $(this).val();
		});
		alert(datas)
	});
});
</script>
</head>
<body>
	<div id="register-box">
		<div id="head"></div>
		<div id="tab">
			<div id="navi">
				<ul>
					<li class="active">第一步</li>
					<li>第二步</li>
					<li>完成注册</li>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="step active">
				<div class="form-source">
					<dl class="form-source-name">
						<dd>公司名称：</dd>
						<dd>公司电话：</dd>
						<dd>公司传真：</dd>
						<dd>公司联系人：</dd>
						<dd>公司邮箱：</dd>
						<dd>公司地址：</dd>
						<dd>行业：</dd>
					</dl>
					<dl class="form-source-value">
						<dd><input type="text" class="text_500 not_null form-value" name="name" /></dd>
						<dd><input type="text" class="text_500 not_null form-value" name="contact" /></dd>
						<dd><input type="text" class="text_500 not_null form-value" name="phone" /></dd>
						<dd><input type="text" class="text_500 form-value" name="fax" /></dd>
						<dd><input type="text" class="text_500 form-value" name="email" /></dd>
						<dd><input type="text" class="text_500 form-value" name="address" /></dd>
						<dd><select class="text_150 not_null form-value" id="industry" name="industryId"></select></dd>
					</dl>
					<div class="clear"></div>
				</div>
				<div class="step-foot"><div class="ui-btn" id="btn-pre">上一步</div><div class="ui-btn" id="btn-next">下一步</div></div>
			</div>
			<div class="step">
				<div class="form-source">
					<dl class="form-source-name">
						<dd>用户名：</dd>
						<dd>密码：</dd>
						<dd>确认密码：</dd>
					</dl>
					<dl class="form-source-value">
						<dd><input type="text" class="text_500 not_null form-value" name="username" /></dd>
						<dd><input type="text" class="text_500 not_null form-value" name="password" /></dd>
						<dd><input type="text" class="text_500 not_null" id="re-password" /></dd>
					</dl>
					<div class="clear"></div>
				</div>
				<div class="step-foot"><div class="ui-btn" id="btn-sub">提交</div></div>
			</div>
			<div class="step">
				
			</div>
		</div>
	</div>
</body>
</html>