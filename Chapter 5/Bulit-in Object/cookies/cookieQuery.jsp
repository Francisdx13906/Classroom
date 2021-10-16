<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE >
<html>
  <head>
   
    <title>cookie中的用户名密码信息</title>
	
  </head>

  <body bgcolor="#A2B5CD">
  	<%request.setCharacterEncoding("UTF-8"); %>
    <%
    	String username="";
    	String password="";
    	Cookie[] cookies=request.getCookies();
    	if(cookies!=null&&cookies.length>0){
    		for(Cookie cookie:cookies){
    			if(cookie.getName().equals("username")){
    				username=cookie.getValue();
    			}
    			if(cookie.getName().equals("password")){
    				password=cookie.getValue();
    			
    			}
    			response.addCookie(cookie);
    		}
    	
    	}
     %>
     <h2>用户名为：<%=username %></h2>
     <h2>密码为：<%=password %></h2>
  </body>
</html>
