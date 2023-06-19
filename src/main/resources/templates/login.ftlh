<!DOCTYPE html>
<html lang="en">
<head>
    <title>AIRSOFT SHOP</title>
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReLHJv9kTxqlNM0pYUBNm39cF7ebb6sERGMQ8SSuDXZeeTkLkEL2itchjqUb4RSqOMhw&usqp=CAU"
         alt="">
</head>
<body>
<h1>AIRSOFT SHOP</h1>
<hr>
<h4>Authorization</h4>
<form action="/login" method="post">
    Email: <input type="email" name="username"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Enter"/>
</form>
<a href="/registration">Registration</a><br><br>


</body>
</html>