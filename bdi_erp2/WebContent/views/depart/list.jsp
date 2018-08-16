<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<body>
	<%
		String age = request.getParameter("age");
		String name = request.getParameter("name");
		String[] hobby = request.getParameterValues("hobby");
		if (age != null) {
			out.print(name + "님이 전송한 나이는 " + age + "이군요<br>당신은 ");
			int ag = Integer.parseInt(age);
			if (ag < 10) {
				out.print("유아입니다.");
			} else if (ag < 20) {
				out.print("10대입니다.");
			} else if (ag < 30) {
				out.print("20대입니다.");
			} else if (ag < 40) {
				out.print("30대입니다.");
			} else if (ag < 50) {
				out.print("40대입니다.");
			} else if (ag < 60) {
				out.print("50대입니다.");
			} else {
				out.print("노년입니다.");
			}
			out.print("<br>그리고 당신이 선택한 취미는 ");
			for (int i = 0; i < hobby.length; i++) {
				out.print(hobby[i] + " ");
			}
			out.print("입니다.");

		}
	%>
	<form>
		나이 : <input type="text" name="age"><br>
		이름 : <input type="text" name="name"><br>
		취미 : 영화<input type="checkbox" name="hobby" value="영화">,
		           음악감상<input type="checkbox" name="hobby" value="음악감상">,
		           게임<input type="checkbox" name="hobby" value="게임"><br>
		<button>전송</button>
	</form>
</body>
</html>