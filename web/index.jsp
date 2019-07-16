<%-- 
    Document   : index
    Created on : 2019/07/16, 11:02:39
    Author     : donch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String navPage="mainNav.jsp";
    String contentPage="login.jsp";
    if(request.getParameter("r_navPage")!=null){
        navPage = request.getParameter("r_navPage");
    }
    if(request.getAttribute("r_navPage")!=null){
        navPage=(String)request.getAttribute("r_navPage");
        request.removeAttribute("r_navPage");
    }
    if(request.getParameter("r_contentPage")!=null){
        contentPage=request.getParameter("r_contentPage");
    }
    if(request.getAttribute("r_contentPage")!=null){
        contentPage=(String)request.getAttribute("r_contentPage");
        request.removeAttribute("r_contentPage");
    }
    %>
<html>
    <head>
        <link rel="stylesheet" href="css/mainStyle.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="nav">
            <jsp:include page="<%=navPage%>"/>
        </div>
        
        <div class="content">
            <jsp:include page="<%=contentPage%>"/>
        </div>
    </body>
</html>
