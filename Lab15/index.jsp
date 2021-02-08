<%@ page import="lab15.EmailAdmin" %>
<%@ page import="javax.mail.MessagingException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Messages</title>
    <script src = "scripts/jquery-3.2.1.min.js"></script>
  </head>
  <body>
<%
  try {
    out.println(
     EmailAdmin.showMessages(application.getInitParameter("UserEmail"),
            application.getInitParameter("UserPassword")));
  } catch (MessagingException e) {
    e.printStackTrace();
  }
%>
<script>
  $(document).ready(function(){
    $("div").on('click', function () {
      $(this).find('.hidden').show();
    });
  });
</script>
  <a href="message-form.html">Send a message</a>
  </body>
</html>
