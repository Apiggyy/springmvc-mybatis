<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
    <title>修改商品</title>
    <style type="text/css">
        .itemsInfo {
            width:400px;
        }

    </style>
</head>
<body>
<lable>修改商品信息</lable>
<form action="${pageContext.request.contextPath}/items/updateItems.action" method="post">
    <table width="500px" border="1">
        <input type="hidden" name="id" value="${itemsCustom.id}" />
        <tr>
            <td>商品名称</td>
            <td><input type="text" class="itemsInfo" name="name" value="${itemsCustom.name}"/></td>
        </tr>
        <tr>
            <td>商品明细</td>
            <td><textarea name="detail" class="itemsInfo"  rows="3" cols="20">${itemsCustom.detail}</textarea></td>
        </tr>
        <tr>
            <td>商品价格</td>
            <td><input type="text" class="itemsInfo" name="price" value="${itemsCustom.price}"/></td>
        </tr>
        <tr>
            <td>商品创建时间</td>
            <td><input type="text" class="itemsInfo" name="createtime" value="<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${itemsCustom.createtime}"/>"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="提交"/></td>
        </tr>
    </table>
</form>
</body>
</html>
