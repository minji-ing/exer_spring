<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자료실</title>
</head>
<body>
	<form role="form" method="post">
		<table>
			<tbody>
				<tr>
					<td>
					<label for="bno">글 번호</label>
					<input type="text" id="bno" name="bno" value="${read.bno}" />
					</td>
				</tr>
				<tr>
					<td>
					<label for="title">제목</label>
					<input type="text" id="title" name="title" value="${read.title}" />
					</td>
				</tr>
				<tr>
					<td>
					<label for="id">작성자</label>
					<input type="text" id="id" name="id" value="${read.id}" />
					</td>
				</tr>
				<tr>
					<td>
					<label for="regdate">작성날짜</label>
					<fmt:formatDate value="${read.regdate}" pattern="yyyy-MM-dd" />
					</td>
				</tr>
				<tr>
					<td>
					<label for="content">내용</label>
					<textarea rows="5" cols="20" id="content" name="content" value="${read.content}" /></textarea>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>