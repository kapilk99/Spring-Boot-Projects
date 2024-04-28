<%-- 
    Document   : contact
    Created on : Dec. 7, 2020, 7:03:57 p.m.
    Author     : prati
--%>

<%@page import="com.java.mycart.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="components/common_css_js.jsp" %>

    </head>
   <body style="background-color: #e2e2e2;">

        <%@include  file="components/navbar.jsp" %>

       
        <div class="container-fluid  text-center " style="margin-top: 8px;">
            <h1>WE’D LOVE TO HEAR FROM YOU</h1>
            <br>
            <p style="font-family:  cursive;" style="font-size: x-small;">Our Customer Service teams are working hard to help you. For a faster response, please check out our FAQ .<br>
                Please note, we are experiencing longer delivery times due to extra safety precautions being taken at our warehouse. Thank you for your patience.</p>

            <br>
            <p  text-center style="font-family:  cursive;" style="font-size: x-small;">OPENING HOURS<br>
Monday - Sunday: <br>8 am - 11 pm (EST)
<br>
<br>
CALL US<br>
1-00-272-0000<br>
For phone support, we are available Monday – Sunday: <br>8am – 11pm (EST)

<br>
<br>


Return Address<br>
3000 Mnedy Road South, Unit Z,<br>
Brampton, Ontario L6Z 0V0
<br>
<br>
Mailing Address<br>
Megha Store Inc.<br>
100 Dundas Street West<br>
500th floor<br>
Suite 0001, box 47<br>
Toronto, ON<br>
M5K 5Z8  </p>
        </div>

        <%@include  file="components/common_modals.jsp" %>
        <br>
       
                            
                           
        <%@include  file="components/footer.jsp" %>
    </body>
</html>
