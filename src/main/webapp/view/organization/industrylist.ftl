<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>行业管理</title>
	<link rel="stylesheet" type="text/css" href="../../style/css/pss.css">
	<script type="text/javascript" src="../../script/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="../../script/js/comm.js"></script>
	<script type="text/javascript" src="../../script/js/ui.js"></script>
	<script type="text/javascript">
		$(function(){
			$('div.btn-add').on('click', function(){
				$.dgform({
					url : 'add',
					title: '新增行业',
					label: ['名称',{style: 'high', name:'备注'}],
					source: [
						'<input type="text" class="text-500 not-null form-value" name="name" />',
						'<textarea class="text-500 not-null form-value" name="description"></textarea>'
					]
				});
			});
			$('div.btn-edit').on('click', function(){editSource('organization/industry/edit');});
			$('div.btn-delete').on('click', function(){delSource('organization/industry/del');});
		});
	</script>
	<body>
		<div class="ui-table" id="sortTable">
			<div class="ui-head">
				<div class="ui-title">
					<div class="ui-title-name ui-table-title-name">行业信息</div>
					<div class="ui-operation">
						<div class="ui-btn btn-delete">删除</div>
						<div class="ui-btn btn-edit">编辑</div>
						<div class="ui-btn btn-add">新增</div>
					</div>
				</div>
				<div class="table-source-head">
					<dl>
						<dd class="text-5p">选项</dd>
						<dd class="text-5p">编号</dd>
						<dd class="text-35p">商品名称</dd>
						<dd class="text-55p">备注</dd>
					</dl>
				</div>
			</div>
			<div class="table-source">
				<#list industryList as industry>
					<#if industry_index % 2 = 0>
						<dl class="table-source-line odd">
							<dd class="text-5p"><span id="${industry.id}" class="checkbox"></span></dd>
							<dd class="text-5p">${industry_index + 1}</dd>
							<dd class="text-35p">${industry.name}</dd>
							<dd class="text-55p">${industry.description}</dd>
						</dl>
					</#if>
					<#if industry_index % 2 = 1>
						<dl class="table-source-line">
							<dd class="text-5p"><span id="${industry.id}" class="checkbox"></span></dd>
							<dd class="text-5p">${industry_index + 1}</dd>
							<dd class="text-35p">${industry.name}</dd>
							<dd class="text-55p">${industry.description}</dd>
						</dl>
					</#if>
				</#list>
			</div>
			<div class="ui-foot">
				<#if (industryList?size>1) >
					<div class="btn">
						<div class="ui-btn btn-check-all">全选</div>
						<div class="ui-btn btn-check-invert">反选</div>
					</div>
				</#if>
			</div>
		</div>
	</body>
</html>
