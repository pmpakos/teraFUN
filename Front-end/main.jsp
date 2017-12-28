<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.*" %>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>JSP</title>
    </head>

    <body>

        <h2>
        	UserName
    	</h2>

           <%String name = (String) session.getAttribute("username");
                        session.setAttribute( "username", name );%>

    	<div>
    		<%=name%>
    	</div>



        <div>
            <a href="frontend.html">Front-end UI toolkits</a> <br/>
            <a href="maps.jsp">Google Maps example</a> <br/>
            <a href="login.jsp">Login</a> <br/>
            <a href="sam.jsp">Ajax</a> <br/>
        </div>

    </body>
</html>
