<%@page import="com.bdi.erp.common.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<style>
th {
	text-align: center;
}
</style>
<body>
	<div class="containal">
		<h4>
			<b>유저리스트</b>
		</h4>
		<table class="table table-bordered">
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>생년월일</th>
				<th>콘텐트</th>
			</tr>
			<tbody>
				<%
					Connection con = DBConnection.getCon();
					String sql = "select tNo, tId, tPwd, tBirth, tContent from Test";
					PreparedStatement ps = con.prepareStatement(sql);
					ResultSet rs = ps.executeQuery();

					while (rs.next()) {
				%>
				<tr>
					<td><a href=""><%=rs.getInt("tNo")%></a></td>
					<td><%=rs.getString("tId")%></td>
					<td><%=rs.getString("tPwd")%></td>
					<td><%=rs.getInt("tBirth")%></td>
					<td><%=rs.getString("tContent")%></td>
				</tr>
				<%
					}
					rs.close();
					ps.close();
					DBConnection.close();
				%>
			</tbody>
		</table>
	</div>
</body>
</html>