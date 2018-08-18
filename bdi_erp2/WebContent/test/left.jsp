<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<select id ="changeMenu" onchange="chMenu(this)">
	<option value="">선택</option>
	<option value="r1.jsp">r1</option>
	<option value="r2.jsp">r2</option>
	<option value="r3.jsp">r3</option>
</select>
<script>
	function chMenu(obj){
		if(obj.value!=""){
			location.href="/test/select.jsp?page=" + obj.value;
		}
	}
</script>