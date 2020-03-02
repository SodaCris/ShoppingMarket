<%@page import="java.util.*,my.dao.*,my.bean.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户详情</title>
</head>

<body>
    <%
    if(session.getAttribute("id")==null){
        response.sendRedirect("../user/login.jsp");
    }
    %>

    <%
    int id=(int)session.getAttribute("id");
    User user=UserDao.getUser(id);
    %>
    <p>用户名：<%=user.getUsername()%></p>
    <p>余额：<%=user.getMoney()%></p>
    <p>地址：<%=user.getAddress()%></p>
    <p>电话：<%=user.getPhone()%></p>

    <a href="../funds/add.jsp">充值</a>
    <a href="../item/all.jsp">首页</a>
    <a href="../user/logout.jsp">退出登录</a>
</body>

</html>