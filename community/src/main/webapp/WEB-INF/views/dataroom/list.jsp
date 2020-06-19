<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자료실</title>
</head>
<body>
	<form role="form" method="get" action="${contextPath}/dataroom/writeView">
		<button type="submit" class="write_btn">글쓰기</button>
	</form>
		<table>
			<tr><th>번호</th><th>제목</th><th>작성자</th><th>등록일</th></tr>
			
			<c:forEach items="${list}" var="list">
				<tr>
					<td><c:out value="${list.bno}" /></td>
					<td>
						<a href="${contextPath}/dataroom/readView?bno=${list.bno}"><c:out value="${list.title}" /></a>
					</td>
					<td><c:out value="${list.id}" /></td>
					<td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" /></td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>