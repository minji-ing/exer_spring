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

	// 수정
	function fn_enable(obj){
		document.getElementById("title").disabled = false;
		document.getElementById("content").disabled = false;
	}
	$(document).ready(function(){
		var formObj = $("form[name='readForm']");
		
		
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
			<input type=button value="수정" onClick="fn_enable(this.form)">
			<button type="submit" class="delete_btn">삭제</button>
			<button type="submit" class="list_btn">목록</button>
		</div>
	</form>
</body>
</html>