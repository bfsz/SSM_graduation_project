<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/header.jsp"%>
<base href="<%=basePath%>">
</head>

<body>
	<!-- 顶部 -->
	<%@include file="/common/top.jsp"%>
	<!-- 顶部 -->

	<div id="middle">
		<!-- 菜单 -->
		<%@include file="/common/menu.jsp"%>
		<!-- 菜单  -->

		<div class="right" id="mainFrame">


			<div class="right_cont">
				<blockquote class="layui-elem-quote">
					当前位置
					<i class="layui-icon">&#xe623;</i><a href="<%=path%>/index.jsp">首页</a>
					<i class="layui-icon">&#xe623;</i><a href="<%=path%>/huodong/list">活动信息管理</a>
					<i class="layui-icon">&#xe623;</i>活动信息修改
				</blockquote>
				<div class="title_right">
					<strong>活动信息修改</strong>
				</div>
				<div style="width: 1100px; margin: auto">
					<form method="post">
						<table class="table table-hover">
							<tr>
								<td width="5%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">活动名称：</td>
								<td width="95%">
								<input type="hidden" name="id" id="id"
									value="${huodong.id}" />
								<input type="text" name="name" id="name" value="${huodong.name}"
									class="form-control" placeholder="活动名称必须填" /></td>
							</tr>
							 
							<tr>
								<td width="5%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">活动说明：</td>
								<td width="95%">
								  <input type="hidden" name="msg" id="msg" class="span1-10" />	
								 <script id="container" type="text/plain" style="width:990px;height:300px;"></script>
								</td>
							</tr>
						   
						</table>

						<table class="margin-bottom-20 table  no-border">
							<input type="button"
									onclick="save();" value="确定" class="btn btn-info "
									style="width: 80px;float:right;" />
								
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script>
var u = UE.getEditor('container');
        
        u.ready(function() {
		    //设置编辑器的内容
		    u.setContent('${huodong.msg}');
		});
	       
function save() {
var htmlv = u.getContent();
	if ($("#name").val() == "") {
		alert("名称不能为空！");
		return;
	}
	document.getElementById("msg").value = htmlv;
	document.forms[0].action = "<%=path%>/huodong/updatehuodong";
	document.forms[0].submit();

}
</script>