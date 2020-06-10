<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>

<html>
<head>
 <style>
   .no-underline{
      text-decoration:none;
   }
 </style>
  <meta charset="UTF-8">
  <title>side menu</title>
</head>
<body>
	<h2>side menu</h2>
	<table border=0 width=100%>
		<tr>
			<td>
				<h2>교육</h2>
				<h3>
				<a href="${contextPath}/review/classListArticles.do" class="no-underline">수강 후기</a><br>
				<a href="#" class="no-underline">공부 자료</a><br>
				<a href="#" class="no-underline">공부 스터디 모집</a><br>
				</h3>
			</td>
		</tr>
		<tr>
			<td>
				<h2>취업</h2>
				<h3>
					<a href="#" class="no-underline">취업 후기</a><br>
					<a href="#" class="no-underline">취업 자료</a><br>
					<a href="#" class="no-underline">취업 스터디 모집</a><br>
				</h3>
			</td>
		</tr>
	</table>
	<h2>
		<a href="#" class="no-underline">마이 페이지</a><br>
	</h2>
</body>
</html>