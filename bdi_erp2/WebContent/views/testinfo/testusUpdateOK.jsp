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
String tNo = request.getParameter("tNo");

Connection con =  DBConnection.getCon();
String sql = "update Test set tId=?, tPwd=?, tBirth=?, tContent=? whehe tNo=?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,tId);
ps.setString(2,tPwd);
ps.setString(3,tBirth);
ps.setString(4,tContent);
ps.setString(5,tNo);

int cnt = ps.executeUpdate();
if(cnt==1){
%>
<script>
location.href="<%=rPath%>/views/userinfo/testusList.jsp";
</script>
<%
}
DBConnection.close();
%>
</body>
</html>