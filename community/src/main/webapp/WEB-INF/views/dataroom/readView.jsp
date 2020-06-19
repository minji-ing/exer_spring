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
		var formObj = $("form[name='readForm']");
		// 수정
		$(".update_btn").on("click", function(){
			formObj.attr("action", "${contextPath}/dataroom/updateView");
			formObj.attr("method", "get");
			formObj.submit();
		})
		
		// 삭제
		$(".delete_btn").on("click", function(){
			formObj.attr("action", "${contextPath}/dataroom/delete");
			formObj.attr("method", "post");
			formObj.submit();
		})
		
		// 취소
		$(".list_btn").on("click", function(){
			location.href = "${contextPath}/dataroom/list";
		})
	})
</script>
</head>
<body>
	<form name="readForm" role="form" method="post">
		<input type="hidden" id="h_bno" name="h_bno" value="${read.bno}" />
	</form>
		<table>
			<tbody>
				<tr>
					<td>
					<label for="bno">글 번호</label>
					<input type="text" id="bno" name="bno" value="${read.bno}" disabled />
					</td>
				</tr>
				<tr>
					<td>
					<label for="title">제목</label>
					<input type="text" id="title" name="title" value="${read.title}" disabled />
					</td>
				</tr>
				<tr>
					<td>
					<label for="id">작성자</label>
					<input type="text" id="id" name="id" value="${read.id}" disabled />
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
					<textarea id="content" name="content" disabled />${read.content}</textarea>
					</td>
				</tr>
			</tbody>
		</table>
		<div>
			<button type="submit" class="update_btn">수정</button>
			<button type="submit" class="delete_btn">삭제</button>
			<button type="submit" class="list_btn">목록</button>
		</div>
</body>
</html>