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
	<div class="container">
		<div class="left">
			<jsp:include page="/test/left.jsp" />	
		</div>
		<div class="right">RIGHT</div>
	</div>
</body>
</html>