
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>
<head>
    <title>Meals</title>
</head>
<body>
<section></section>
<h2>Meals</h2>
<hr/>
<table>
    <thead>
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>"${cals}"</th>
    </tr>
    </thead>
    <c:forEach items="${meals}" var="meal">
        <jsp:useBean id="meal" scope="session" type="ru.javawebinar.topjava.model.MealTo"/>
    <tr>
        <td>${meal.description}</td>
        <td>${meal.description}</td>
        <td>${meal.calories}</td>
    </tr>
    </c:forEach>
</table>
</section>
</body>
</html>
