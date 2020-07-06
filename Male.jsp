<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body  style ="background-image: url('https://shopify-ecommerce-university.s3.amazonaws.com/production/images/success_story/cover_image_large/699/mens_fashion_shopify_success_stories_cover.jpg');background-size: 1200px;">
       <center>
        <form style = "padding-top:250px; padding-left:800px;" action = "Faction.jsp">
             Type  <select name = "ds">
                       <option value="Shirts">Shirts</option>
                       <option value="Pants">Pants</option>
                       <option value="Kurtas">Kurtas</option>
                       <option value="Suits">Suits</option>
                     </select><br><br>
           
             Age      <select name = "ag">
                       <option value="0">0</option>
                       <option value="5">5</option>
                       <option value="15">15</option>
                       <option value="30">30</option>
                     </select><br><br>
           color    <select name = "cl">
                       <option value="red">red</option>
                       <option value="blue">blue</option>
                       <option value="black">black</option>
                       <option value="white">white</option>
                     </select><br><br>
            size     <select name = "sz">
                       <option value="S">S</option>
                       <option value="M">M</option>
                       <option value="L">L</option>
                       <option value="XL">XL</option>
                       <option value="XXL">XXL</option>
                       
                     </select><br><br>
                     <input style = "color : black;"type = "submit" value="OK">
               Email <input type = "text" name = "email">
                    
           
              </form>
     </center>
</body>
</html>