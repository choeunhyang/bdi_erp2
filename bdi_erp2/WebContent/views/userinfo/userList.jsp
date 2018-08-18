<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.erp.common.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<style>
tr, th {
	text-align: center;
}

th {
	background-color: #EEE;
}
</style>
<body>
	<div class="container">
		<h4>
			<b>유저리스트</b>
		</h4>
		<table class="table table-bordered table-hover">
			<tr>
				<th>유저 번호</th>
				<th>유저 이름</th>
				<th>유저 아이디</th>
				<th>사원 설명</th>
				<th>유저 나이</th>
				<th>부서번호</th>
			</tr>
			<tbody>
				<%
					Connection con = DBConnection.getCon();
					String sql = "select uiNo, uiName, uiId, uiDesc, uiAge, diNo from user_info";

					PreparedStatement ps = con.prepareStatement(sql);
					ResultSet rs = ps.executeQuery();
					while (rs.next()) {
				%>
				<tr>
					<td><a
						href="<%=rPath%>/views/userinfo/userView.jsp?uiNo=<%=rs.getInt("uiNo")%>">
							<%=rs.getInt("uiNo")%></a></td>
					<td><%=rs.getString("uiName")%></td>
					<td><%=rs.getString("uiId")%></td>
					<td><%=rs.getString("uiDesc")%></td>
					<td><%=rs.getInt("uiAge")%></td>
					<td><%=rs.getInt("diNo")%></td>
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