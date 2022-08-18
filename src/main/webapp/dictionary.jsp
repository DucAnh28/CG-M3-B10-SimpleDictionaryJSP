<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: yoyo
  Date: 18/08/2022
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%
    Map<String,String> dic = new HashMap<>();
    dic.put("hello","Xin chao");
    dic.put("how","Nhu the nao");
    dic.put("book","Sach");
    dic.put("computer","May tinh");
    dic.put("ducanh","deptrai");

    String search = request.getParameter("search");
    String result = dic.get(search);
    if (result != null){
        out.println("Word: " + search);
        out.println("Result: " + result);
    }
    else {
        out.println("Not found !");
    }
%>
</body>
</html>
