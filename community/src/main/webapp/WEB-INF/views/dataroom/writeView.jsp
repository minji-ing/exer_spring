<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>자료실</title>
</head>
<body>
	<form role="form" method="post" action="/communitiy/dataroom/write">
		<table>
			<tbody>
				<tr>
					<td>
					<label for="title">제목</label>
					<input type="text" id="title" name="title" />
					</td>
				</tr>
				<tr>
					<td>
					<label for="content">내용</label>
					<textarea id="content" name="content"></textarea>
					</td>
				</tr>
				<tr>
					<td>
					<label for="id">작성자</label>
					<input type="text" id="id" name="id" />
					</td>
				</tr>
				<tr>
					<td>
					<button type="submit">작성</button>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>