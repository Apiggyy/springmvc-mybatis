<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
    <title>商品列表</title>
    <script type="text/javascript">
        function deleteItems() {
            document.getElementById("itemsOper").action = "${pageContext.request.contextPath}/items/deleteItems.action";
            document.getElementById("itemsOper").submit();
        }

        function queryItems() {
            document.getElementById("itemsOper").action = "${pageContext.request.contextPath}/items/queryItems.action";
            document.getElementById("itemsOper").submit();
        }
    </script>
</head>
<body>
<form id="itemsOper" action="${pageContext.request.contextPath}/items/queryItems.action" method="post" enctype="multipart/form-data">
    <label>查询条件：</label>
    <table>
        <tr>
            <td>商品名称：<input type="text" name="itemsCustom.name"/></td>
            <td>商品类型：
                <select name="itemsTypes">
                    <c:forEach items="${itemsTypes}" var="itemsType">
                        <option value="${itemsType.key}">${itemsType.value}</option>
                    </c:forEach>
                </select>
            </td>
            <td><input type="button" value="查询" onclick="queryItems()"/></td>
            <td><input type="button" value="批量删除" onclick="deleteItems()"/></td>
        </tr>
    </table>

    <label>商品列表</label>
    <table width="100%" border="1">
        <thead>
        <tr>
            <td>选择</td>
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
                <td><input type="checkbox" name="itemsIds" value="${items.id}"/></td>
                <td>${items.name}</td>
                <td>${items.detail}</td>
                <td>${items.price}</td>
                <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${items.createtime}"/></td>
                <td><a href="${pageContext.request.contextPath}/items/editItems.action?id=${items.id}">修改</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</form>
</body>
</html>
