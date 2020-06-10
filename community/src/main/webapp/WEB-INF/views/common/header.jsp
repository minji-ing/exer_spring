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
  <meta charset="UTF-8">
<title>header</title>
</head>
<body>
<table border=0 width=100%>
	<tr>
		<td>
			<a href="${contextPath}/main.do">
				<h1>국비지원 교육생 비공개 커뮤니티</h1>
			</a>
		</td>
		<td>
			<c:choose>
				<c:when test="${isLogOn == true && member != null}">
					<h4>환영합니다. ${member.id }님</h4>
					<a href="${contextPath}/member/logout.do"><h4>로그아웃</h4></a>
				</c:when>
				<c:otherwise>
					<a href="${contextPath}/member/loginForm.do"><h4>로그인</h4></a>
				</c:otherwise>
			</c:choose>
		</td>
	</tr>
</table>
</body>
</html>