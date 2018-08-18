<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<style>
.left {
	background-color: #FF9999;
	width: 45%;
	float: left;
	text-align: center;
}

.right {
	background-color: #9999FF;
	width: 45%;
	float: right;
	text-align: center;
}
</style>
<body>
<%
String url = request.getParameter("page");
if(url==null){
	url = "r1.jsp";
}
url = "/test/" + url;
%>
	<div class="container">
		<div class="left">
			<jsp:include page="/test/left.jsp" />
		</div>
		<div class="right">
			<jsp:include page="<%=url%>" />
		</div>
	</div>
</body>
</html>