<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h4>Product information</h4>
<b>Product name: </b>${product.title}<br>
<b>Description: </b>${product.description}<br>
<b>Product price: </b>${product.price}<br>
<b>Product city: </b>${product.city}<br>
<b>Product author: </b>${product.author}<br>
<hr>


<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Delete product"/>
</form>
</body>
</html>
