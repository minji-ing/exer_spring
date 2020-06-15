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
<script src="${contextPath}/resources/JQuery/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".cancel_btn").on("click", function(){
			event.preventDefault();
			location.href = "${contextPath}/dataroom/list";
		})
	})
</script>
</head>
<body>
	<form name="updateForm" role="form" method="post" action="${contextPath}/dataroom/update">
		<table>
			<tbody>
				<tr>
					<td>
					<label for="bno">글 번호</label>
					<input type="text" id="bno" name="bno" value="${update.bno}" disabled />
					</td>
				</tr>
				<tr>
					<td>
					<label for="title">제목</label>
					<input type="text" id="title" name="title" value="${update.title}" />
					</td>
				</tr>
				<tr>
					<td>
					<label for="id">작성자</label>
					<input type="text" id="id" name="id" value="${update.id}" disabled />
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
					<textarea id="content" name="content" />${read.content}</textarea>
					</td>
				</tr>
			</tbody>
		</table>
			<div>
				<button type="submit" class="update_btn">저장</button>
				<button type="submit" class="cancel_btn">취소</button>
			</div>
	</form>
</body>
</html>