<!DOCTYPE html>
<html lang="en">
<head>
    <title>AIRSOFT SHOP</title>
    <img src="https://airsoftshop.hr/wp-content/uploads/2021/08/airsoft-logo-300x110.jpg" alt="">
</head>
<body>
<h1>AIRSOFT SHOP</h1>
<hr>
<h4>Product information</h4>
<#--<#list images as img>-->
<#--    <img src="/images/${img.id}" height="60px" alt=""/><br><br>-->
<#--</#list>-->


<b>Product name: </b>${product.title}<br>
<b>Description: </b>${product.description}<br>
<b>Product price: </b>${product.price}<br>
<b>Product city: </b>${product.city}<br>
<b>Product author: </b>${product.author}<br>
<hr>


<form action="/product/delete/${product.id}" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Delete product"/>
</form>
</body>
</html>
