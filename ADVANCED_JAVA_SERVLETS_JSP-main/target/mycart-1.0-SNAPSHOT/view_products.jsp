<%@page import="com.java.mycart.entities.Category"%>
<%@page import="com.java.mycart.dao.CategoryDao"%>
<%@page import="java.util.List"%>
<%@page import="com.java.mycart.entities.Product"%>
<%@page import="com.java.mycart.dao.ProductDao"%>
<%@page import="com.java.mycart.helper.FactoryProvider"%>
<%@page import="com.java.mycart.entities.User"%>
<%

    User user = (User) session.getAttribute("current-user");
    if (user == null) {

        session.setAttribute("message", "You are not logged in !! Login first");
        response.sendRedirect("login.jsp");
        return;

    } else {

        if (user.getUserType().equals("normal")) {

            session.setAttribute("message", "You are not admin ! Do not access this page");
            response.sendRedirect("login.jsp");
            return;

        }

    }


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Panel-Products Page</title>
        <%@include file="components/common_css_js.jsp" %>
        <style>
            body{
                background: #e2e2e2;
            }
        </style>


    </head>
    <body>
        <%@include  file="components/navbar.jsp" %>
       <div class="container-fluid mt-5 text-center"><h1>PRODUCT LIST</h1></div>
        <% String cat = request.getParameter("category");
                    //out.println(cat);

                    ProductDao dao = new ProductDao(FactoryProvider.getFactory());
                    List<Product> list = null;

                    if (cat == null || cat.trim().equals("all")) {
                        list = dao.getAllProducts();

                    } else {

                        int cid = Integer.parseInt(cat.trim());
                        list = dao.getAllProductsById(cid);

                    }

                    CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
                    List<Category> clist = cdao.getCategories();

                %>
                
                <div class="container panel mt-5">
                <table class='table'>
            <thead style="background: #819ca9;">
                <tr>
                <th>ProductId </th>
                <th>ProductName  </th>
                <th>ProductDesc </th>
                <th>ProductPrice </th>
                <th>Action</th>
                <th>Action</th>
                
        
                </tr>
        
            </thead>
        
       <%
                                    for (Product p : list) {

                                %>
                                <tbody>
                                
                        <td><%= p.getpId()%> </td>
                        <td> <%= p.getpName()%> </td>
                        <td> <%= p.getpDesc()%> </td>
                        <td> $<%= p.getPriceAfterApplyingDiscount()%> </td>
                            
                        <td> <button onclick='' class='btn btn-primary btn-sm'>Edit</button> </td>   
                        <td> <button onclick='deleteItemFromCart(${item.productId})' class='btn btn-danger btn-sm'>Remove</button> </td>
                     </tr>
      
      <%}

                                    if (list.size() == 0) {
                                        out.println("<h3>No item in this category</h3>");
                                    }


                                %>
    </tr>
    
  </tbody>
</table>
</div>
                


         <%@include  file="components/common_modals.jsp" %>
         
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>

 <%@include  file="components/footer.jsp" %>
    </body>
</html>
