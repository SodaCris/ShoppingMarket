<%@page import="java.util.*,my.dao.*,my.bean.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>充值</title>
    <link rel="stylesheet" href="css/common.css">
</head>

<body>
    <%
String moneyStr=request.getParameter("money");
Integer userid=(Integer)session.getAttribute("id");
if(moneyStr!=null && userid!=null){
    int money=Integer.parseInt(moneyStr);
    User user=UserDao.getUser(userid);
    user.setMoney(user.getMoney()+money);
    UserDao.updateUser(userid,user);
%>
    <h1>充值成功！</h1>
    <p>当前余额：<%=user.getMoney()%></p>
    <a href="add_funds.jsp">继续充值</a>
    <a href="index.jsp">首页</a>
    <a href="user_detail.jsp">用户主页</a>
    <%
}else{
%>
    <form action="" method="POST">
        选择充值金额：
        <br>
        <input type="radio" name="money" id="v1" value="100"><label for="v1">100</label>
        <br>
        <input type="radio" name="money" id="v2" value="500"><label for="v2">500</label>
        <br>
        <input type="radio" name="money" id="v3" value="1000"><label for="v3">1000</label>
        <br>
        其他：<input type="text" name="money" value="">
        <br>
        <button type="submit">确认</button>
    </form>
    <%
}
%>
</body>

</html>