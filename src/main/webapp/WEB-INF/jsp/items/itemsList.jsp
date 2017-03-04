<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
    <title>商品列表</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/items/queryItem.action" method="post">
    <label>查询条件：</label>
    <table>
        <tr>
            <td><input type="submit" value="查询"/></td>
        </tr>
    </table>
</form>

<label>商品列表</label>
<table width="100%" border="1">
    <thead>
    <tr>
        <td>商品名称</td>
        <td>商品明细</td>
        <td>商品价格</td>
        <td>创建时间</td>
        <td>操作</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${itemsList}" var="items">
        <tr>
            <td>${items.name}</td>
            <td>${items.detail}</td>
            <td>${items.price}</td>
            <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${items.createtime}"/></td>
            <td><a href="${pageContext.request.contextPath}/items/editItems.action?id=${items.id}">修改</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
