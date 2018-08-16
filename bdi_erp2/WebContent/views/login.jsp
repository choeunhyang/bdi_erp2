<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<body>
<%
	String id = request.getParameter("Id");
	String pwd = request.getParameter("Password");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	if(age!=null){
		out.println("ID : "+id);
		out.println("Password : "+pwd);
		out.println("이름 : "+name);
		out.println("나이 : "+age);
		out.println("성별 : "+gender);
	}
%>
<form>
ID : <input type="text" name="Id"><br>
Password : <input type="password" name="Password"><br>
이름 : <input type="text" name="name"><br>
나이 : <input type="number" name="age" min="1" max="120"><br>
성별 :
남자<input type="radio" name="gender" value="남자" checked>
여자<input type="radio" name="gender" value="여자">
<br>
취미 : 
독서<input type="checkbox" name="hobby" value="독서">,
음악듣기<input type="checkbox" name="hobby" value="음악듣기">,
게임<input type="checkbox" name="hobby" value="게임"><br>
<button>회원가입</button>
</form>
</body>
</html>