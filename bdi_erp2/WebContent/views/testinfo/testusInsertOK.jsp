<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.erp.common.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<body>
<%
String tId = request.getParameter("tId");
String tPwd = request.getParameter("tPwd");
String tBirth = request.getParameter("tBirth");
String tContent = request.getParameter("tContent");

Connection con = DBConnection.getCon();
String sql = "insert into Test(tId=?, tPwd=?, tBirth=?, tContent=?)";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,tId);
ps.setString(2,tPwd);
ps.setString(3,tBirth);
ps.setString(4,tContent);

int cnt = ps.executeUpdate();
DBConnection.close();
if(cnt==1){
%>
<script>
	alert("등록됨");
	location.href="<%=rPath%>/views/testinfo/testusList.jsp";
</script>
<%
}
%>
</body>
</html>