<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.erp.common.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<body>
<div class="container">
<%
String tId = "";
String tPwd = "";
String tContent = "";
int tBirth = 0;
int tNo = Integer.parseInt(request.getParameter("tNo"));

Connection con = DBConnection.getCon();
String sql = "select tId, tPwd, tBirth, tContent from Test where tNo=?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setInt(1,tNo);
ResultSet rs = ps.executeQuery();
if(rs.next()){
	tId = rs.getString("tId");
	tPwd = rs.getString("tPwd");
	tBirth = rs.getInt("tBirth");
	tContent = rs.getString("tContent");
}
%>
		<h3>유저목록</h3>
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
							<button>수정</button>
							<button type="button" onclick="deleteUser()">삭제</button>
						</th>
					</tr>
				</table>
			</fieldset>
			<input type="hidden" name="tNo" value="<%=tNo%>">
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