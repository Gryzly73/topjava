<%@ page import="ru.javawebinar.topjava.util.TimeUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Meals</title>

    <style>
        .normal{
            color: blue;
        }
        .excess{
            color: red;
        }
    </style>
</head>

<body>
<section>
<h3><a href="index.html">Home</a></h3>
<h2>Meals</h2>
<h3>"${cals}"</h3>
<hr/>
<table border="1" cellspacing="8" cellpadding="1">
    <thead>
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
    </tr>
    </thead>

    <c:forEach items="${meals}" var="meal">

      <jsp:useBean id="meal" scope="page" type="ru.javawebinar.topjava.model.MealTo"/>
    <tr class= "${meal.excess ? 'excess' : 'normal'}">
        <td><%=TimeUtil.toString(meal.getDateTime())%></td>
        <td>${meal.description}</td>
        <td>${meal.calories}</td>
    </tr>
    </c:forEach>
</table>
<%--
--%>
</section>
</body>
</html>
