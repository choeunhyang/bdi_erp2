<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<style>
body {
	background-color: darkgray;
}
</style>
<body>
	<div class="container">
		<h3>유저등록</h3>
		<form action="<%=rPath%>/views/testinfo/testusInsertOK.jsp"
			onsubmit="return checkVal()">
			<fieldset>
				<table class="table table-bordered">
					<tr>
						<th width="20%">ID</th>
						<td><input type="text" name="tId" required> 100자 이하</td>
					</tr>
					<tr>
						<th>Password</th>
						<td><input type="password" name="tPwd" required> 100자
							이하</td>
					</tr>
					<tr>
						<th>Birth</th>
						<td><input type="date" name="tBirth" required></td>
					</tr>
					<tr>
						<th>Content</th>
						<td><input type="text" name="tContent"></td>
					</tr>
					<tr>
						<th colspan="2">
							<button>등록하기</button>
						</th>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
	<script>
		function checkVal() {
			var objs = documemt.querySelectorAll('input');
			for (var i = 0; i < objs.length; i++) {
				if (objs[i].type != "date") {
					if (objs[i].value.length<1 || objs[i].value.length>=100) {
						alert(abjs[i].name + "를 다시확인해주세요.");
						objs[i].focus();
						return false;
					}
				} else {
					if (objs[i].value < 1) {
						alert(objs[i].name + "를 다시확인해주세요.");
						objs[i].focus();
						return false;
					}
				}
			}
			return true;
		}
	</script>
</body>
</html>