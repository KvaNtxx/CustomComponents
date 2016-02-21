<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--
  Created by IntelliJ IDEA.
  User: KvaNt
  Date: 21.02.2016
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>


  <%
    ArrayList<String> list= new ArrayList<String>();
    list.add("Comedy");
    list.add("Disaster Drama");
    list.add("Western");

    request.setAttribute("movieCollection", list);
  %>


  <label for="select1">Test select:</label>
  <select name="abcselect" id="select1" class="new-select-style">
      <c:forEach items="${movieCollection}" var="item">
        <option value="${item}">${item}</option>
      </c:forEach>
    </select>

  <table>
    <c:forEach items="${movieCollection}" var="item">
      <tr>
        <td><c:out value="${item}" /></td>
        <td><c:out value="${item}" /></td>
        <td><input id="id" type="text" name="name" value="value" /></td>
      </tr>
    </c:forEach>
    </table>
  </body>
</html>
