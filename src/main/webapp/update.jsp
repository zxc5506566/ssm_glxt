<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<title>修改妖怪信息</title>
</head>
<body background="image/04.jpg">
	<div class="container">
		<h3 align="center">妖怪管理系统---修改信息页面</h3>
		<hr width="1000px">

		<form action="monster" class="form-horizontal" method="post">

			<input type="hidden" name="_method" value="PUT"> <input
				type="hidden" name="monsterId" value="${monster.monsterId }" />

			<div class="form-group">

				<label for="name" class="col-sm-4 control-label">门派名称</label>

				<div class="col-sm-4">
					<select name="monster.schoolFk" class="form-control">
						<c:forEach items="${slist }" var="s">
							<c:if test="${school.schoolId ==school.schoolId }">

								<option value="${s.schoolId }" selected="selected">${s.name }</option>
							</c:if>
							<c:if test="${s.schoolId!=school.schoolId }">
								<option value="${s.schoolId }">${s.name }</option>
							</c:if>
						</c:forEach>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label for="monstername" class="col-sm-4 control-label">妖怪姓名</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="monstername"
						name="monstername" value="${monster.monstername }">
				</div>
			</div>

			<div class="form-group">
				<label for="email" class="col-sm-4 control-label">妖怪邮箱</label>
				<div class="col-sm-4">
					<input type="email" class="form-control" id="email" name="email"
						value="${monster.email }">
				</div>
			</div>

			<div class="form-group">
				<label for="birthday" class="col-sm-4 control-label">妖怪生日</label>
				<div class="col-sm-4">
					<input type="date" class="form-control" id="birthday"
						name="birthday" value="${monster.birthday }" />
				</div>
			</div>

			<div class="form-group">
				<label for="entryday" class="col-sm-4 control-label">入门时间</label>
				<div class="col-sm-4">
					<input type="date" class="form-control" id="entryday"
						name="entryday" value="${monster.entryday }" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-4">
					<button type="submit" class="btn btn-primary">修改信息</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>