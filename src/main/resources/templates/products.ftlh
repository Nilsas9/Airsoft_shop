<!DOCTYPE html>
<html lang="en">
<head>
    <title>AIRSOFT SHOP</title>
    <img src="https://airsoftshop.hr/wp-content/uploads/2021/08/airsoft-logo-300x110.jpg" alt="">
</head>
<body>
<h1>AIRSOFT SHOP | <a href="/login">Login</a></h1>
<hr>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Logout"/>
</form>

<h4>Products from all Lithuania</h4>
<form action="/" method="get">
    Find by name: <input type="text" name="title"><br>
    <input type="submit" value="Find"/>
</form>

<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} eur. | <a href="/product/${product.id}">Specifications..</a></p>
    </div>
<#else>
    <h3>No products</h3>
</#list>
<hr>
<h3>Create new product</h3>
<#--nesikele foto kol nepasidariau enctype atributo-->
<form action="/product/create" method="post" enctype="multipart/form-data">

    <#--    susikuriu produktus-->
    Post name: <input type="text" name="title"/><br><br>
    Post description: <input type="text" name="description"/><br><br>
    Price: <input type="number" name="price"/><br><br>
    City: <input type="text" name="city"/><br><br>
    Name: <input type="text" name="author"/><br><br>

    First image: <input type="file" name="file1"/><br><br>
    Second image: <input type="file" name="file2"/><br><br>
    Third image: <input type="file" name="file3"/><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Add product"/>
</form>
</body>
</html>
