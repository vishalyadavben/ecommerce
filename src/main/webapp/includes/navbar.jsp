  <!--  <nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand" href="index.jsp">E-Commerce Cart</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<!--  -->
	<!-- <div class="top-nav-bar"> --> 
           
              <!--  -->  
             
		 <!--  <div class="menu-bar">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="fa fa-shopping-basket" href="cart.jsp">Cart <span class="badge badge-danger">${cart_list.size()}</span> </a></li>
				
			<!--  	<li><a href="#"><i class="fa fa-shopping-basket" ></i>cart</a></li> -->
			 <div class="top-nav-bar">
			  <div class="search-box" >
                <i class="fa fa-bars" id="menu-btn" onclick="openmenu()"></i>
                <i class="fa fa-times" id="close-btn" onclick="closemenu()"></i>
                
                <a href="index.jsp">
                <img src="image/logo2Cloth.jpg" class="logo"/>
                </a>
                <input type="text" class="form-control">
                <span class="input-group-text"><i class="fa fa-search" ></i></span>       
            </div>
			<!--  -->
		<!--<div class="collapse navbar-collapse" id="navbarSupportedContent">-->
		
		<div class="menu-bar" >
			<ul >
			<!-- //fa fa-shopping-basket -->
				<li class="menu-bar"><a class="nav-link" href="index.jsp">Home</a></li>
				<li class="menu-bar"><a class="nav-link" href="cart.jsp">Cart <span class="badge badge-danger px-1">${cart_list.size()}</span> </a></li>
				<%
				if (auth != null) {
				%>
				<li class="menu-bar"><a class="nav-link" href="orders.jsp">Orders</a></li>
				<li class="menu-bar"><a class="nav-link" href="log-out">Logout</a></li>
				<%
				} else {
				%>
				<li class="menu-bar"><a class="nav-link" href="login.jsp">Login</a></li>
				<%
				}
				%>
			</ul>
			
		</div>
	</div>
<!--</nav>-->