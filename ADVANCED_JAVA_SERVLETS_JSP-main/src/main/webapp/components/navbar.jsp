

<%@page import="com.java.mycart.entities.User"%>
<%
    User user1 = (User) session.getAttribute("current-user");

%>


<nav class="navbar navbar-expand-lg navbar-dark  custom-bg">
    
    <div class="container text-center">
        <div class="logo"><a href="#"><img style="max-width: 70px; font-weight: 900"class="img-fluid rounded-circle" src="img/logo.png" alt="logo_icon"></a></div>
        <a class="navbar-brand mt-3"style="font-style: oblique" href="index.jsp">Mega Store</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        
       
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mt-3 mr-1">

                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                </li>


                

            </ul>
            
            <ul class="navbar-nav mt-3 mr-1">

                <li class="nav-item active">
                    <a class="nav-link" href="about.jsp">About Us <span class="sr-only">(current)</span></a>
                </li>


                

            </ul>
            <ul class="navbar-nav mr-auto mt-3">

                <li class="nav-item active">
                    <a class="nav-link" href="contact.jsp">Contact Us<span class="sr-only">(current)</span></a>
                </li>


                

            </ul>

            <ul class="navbar-nav ml-auto">


                <li class="nav-item active ">
                    <a class="nav-link" href="#!" data-toggle="modal" data-target="#cart">  <i class="fa fa-cart-plus " style="margin-right: -20%;"  style="font-size: 20px;"></i> <span class=" cart-items" >( 0 )</span>  </a>
                </li>



                <%                    if (user1 == null) {

                %>

                <li class="nav-item active mt-4 ">
                    <a class="nav-link" href="login.jsp">Login </a>
                </li>

                <li class="nav-item active mt-4">
                    <a class="nav-link" href="register.jsp">Register </a>
                </li>


                <%                        } else {


                %>
                <li class="nav-item active mt-4">
                    <a class="nav-link" href="<%=  user1.getUserType().equals("admin") ? "admin.jsp" : "normal.jsp"%>"><%= user1.getUserName()%> </a>
                </li>

                <li class="nav-item active mt-4">
                    <a class="nav-link" href="LogoutServlet">Logout </a>
                </li>



                <%    }

                %>




            </ul>

        </div>

    </div>
</nav>