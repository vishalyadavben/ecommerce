<%@page import="cn.ecom.connection.DbCon"%>
<%@page import="cn.ecom.dao.ProductDao"%>
<%@page import="cn.ecom.model.*"%>
<%@page import="java.util.*"%>
<!--  -->
<%@page import="java.util.ArrayList"%>
<!--  -->
<%@ page language="java" isELIgnored = "false" 
 contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("auth", auth);
}
ProductDao pd = new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html> 
<html>
<head>
<%@include file="/includes/head.jsp"%>
<title>E-Commerce Cart</title>
</head>
<body>
	<%@include file="/includes/navbar.jsp"%>
<!---->
<div class="slider">
               <div id="slider" class="carousel slide carousel-fade"  data-ride="carousel">
  <div class="carousel-inner " >
    <div class="carousel-item active "  >
        <img src="image/w-back5.jpg" style="height: 720px; width: 100%"  >
        
    </div>
      <div class="carousel-item "  >
      <img src="image/w-back2.jpg" style="height: 720px; width: 100%" >
 
    </div>
    <div class="carousel-item "  >
      <img src="image/w-back4.jpg" style=" height: 720px; width: 100%" >
    </div>
      <div class="carousel-item "  >
      <img src="image/w-back6.jpg" style="height: 720px; width: 100%"  >
    
    </div>
  </div>
  <ol class="carousel-indicators">
    <li data-target="#slider" data-slide-to="0" class="active"></li>
    <li data-target="#slider" data-slide-to="1"></li>
    <li data-target="#slider" data-slide-to="2"></li>
    <li data-target="#slider" data-slide-to="3"></li>
  </ol>
</div> 
                
            </div>
 <!--  btn btn-primary  /style="color:#FFA500;"  -->          
<!---->
	<div class="container">
		<div class="card-header my-3">All Products</div>
		<div class="row">
			<%
			if (!products.isEmpty()) {
				for (Product p : products) {
			%>
			<div class="col-md-3 my-3">
				<div class="card w-100">
					<img class="card-img-top" src="product-image/<%=p.getImage() %>"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=p.getName() %></h5>
						<h6 class="price">Price: $<%=p.getPrice() %></h6>
						<h6 class="category">Category: <%=p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a class="btn btn-dark" href="add-to-cart?id=<%=p.getId()%>">Add to Cart</a>
						 <a
								class="btn btn-bgcolor:#FFA500"  href="order-now?quantity=1&id=<%=p.getId()%>">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			} else {
			out.println("There is no proucts");
			}
			%>

		</div>
	</div>

	<%@include file="/includes/footer.jsp" %>
</body>
</html>
