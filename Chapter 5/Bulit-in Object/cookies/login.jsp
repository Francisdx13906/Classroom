<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	/*String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";*/
%>
    
<!DOCTYPE html>
<html>
<head>


		<title>response方法综合案例</title>
<meta charset="UTF-8">

</head>
<body style="background-image:url(../../images/bk.jpg);">
<%
			String username = "";
			String password = "";
			Cookie[] cookies = request.getCookies();
			if (cookies != null && cookies.length > 0) {
				for (Cookie cookie : cookies) {
					if (cookie.getName().equals("username")) {
						username = cookie.getValue();
					}
					if (cookie.getName().equals("password")) {
						password = cookie.getValue();

					}
					response.addCookie(cookie);
				}

			}
		%>
		<form action="ch05/response/cookieSave.jsp" method="post">
		    <h1>信息发布平台</h1>
			<table  border="1" align="center" >
				<tr>
					<td>
						用户名：
					</td>
					<td>
						<input type="text" name="username" value="<%=username%>">
					</td>
				</tr>
				<tr>
					<td>
						密码：
					</td>
					<td>
						<input type="password" name="password" value="<%=password%>">
					</td>
				</tr>
				<tr>
				    <td colspan="2">
						<input type="checkbox" name="flag">&nbsp;记住用户名
					</td>				
				</tr>
				<tr align="center">
					<td colspan="2" >
						<input type="submit" value=" 登    录 " >
					</td>
				</tr>
			</table>
		</form>
</body>
</html>