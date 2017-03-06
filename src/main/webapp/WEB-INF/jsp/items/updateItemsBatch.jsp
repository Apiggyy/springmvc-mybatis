<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
    <title>商品列表</title>
    <script type="text/javascript">

        function updateItemsBatch() {
            document.getElementById("itemsOper").action = "${pageContext.request.contextPath}/items/updateItemsBatch.action";
            document.getElementById("itemsOper").submit();
        }

        function updateItemsBatchSubmit() {
            document.getElementById("itemsOper").action = "${pageContext.request.contextPath}/items/updateItemsBatchSubmit.action";
            document.getElementById("itemsOper").submit();
        }


    </script>
</head>
<body>
<form id="itemsOper" action="${pageContext.request.contextPath}/items/updateItemsBatch.action" method="post">
    <label>查询条件：</label>
    <table>
        <tr>
            <td>商品名称：</td>
            <td><input type="text" name="itemsCustom.name"/></td>
            <td><input type="button" value="查询" onclick="updateItemsBatch()"/></td>
            <td><input type="button" value="批量修改" onclick="updateItemsBatchSubmit()"/></td>
        </tr>
    </table>

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
        <c:forEach items="${itemsList}" var="items" varStatus="status">
            <tr>
                <input type="hidden" name="itemsCustoms[${status.index}].id" value="${items.id}"/>
                <td><input type="text" name="itemsCustoms[${status.index}].name" value="${items.name}"/></td>
                <td><input type="text" name="itemsCustoms[${status.index}].detail" value="${items.detail}"/></td>
                <td><input type="text" name="itemsCustoms[${status.index}].price" value="${items.price}"/></td>
                <td><input type="text" name="itemsCustoms[${status.index}].createtime" value="<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${items.createtime}"/>"/></td>
                <td><a href="${pageContext.request.contextPath}/items/editItems.action?id=${items.id}">修改</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</form>
</body>
</html>
