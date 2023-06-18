<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h4>Products from all Lithuania</h4>
<form action="/" method="get">
    Find my name: <input type="text" name="title"><br>
    <input type="submit" value="Find"/>
</form>

<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} eur | <a href="/product/${product.id}">Specifications..</a></p>
    </div>
<#else>
    <h3>No products</h3>
</#list>
<hr>
<h3>Create new product</h3>
<form action="/product/create" method="post">
    <#--    susikuriu produktus-->
    Post name: <input type="text" , name="title"/><br><br>
    Post description: <input type="text" , name="description"/><br><br>
    Price: <input type="number" , name="price"/><br><br>
    City: <input type="text" , name="city"/><br><br>
    Name: <input type="text" , name="author"/><br><br>
    <input type="submit" value="Add product"/>
</form>
</body>
</html>
