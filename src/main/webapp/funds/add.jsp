<%@page import="java.util.*,my.dao.*,my.bean.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>充值</title>
</head>

<body>
    <form action="" method="POST">
        选择充值金额：
        <br>
        <input type="radio" name="money" id="v1" value="100"><label for="v1">100</label>
        <br>
        <input type="radio" name="money" id="v2" value="500"><label for="v2">500</label>
        <br>
        <input type="radio" name="money" id="v3" value="1000"><label for="v3">1000</label>
        <br>
        <button type="submit">确认</button>
    </form>
</body>

</html>