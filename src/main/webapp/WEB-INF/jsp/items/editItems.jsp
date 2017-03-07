<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8"/>

    <title>修改商品</title>
    <style type="text/css">
        td.left {
            width: 20%;
        }
        td.right {
            width: 80%;
        }
        td.right span {
           color:red;
        }
    </style>
</head>
<body>

<br>
<lable>修改商品信息</lable>
<form name="update_form" action="${pageContext.request.contextPath}/items/updateItems.action" method="post">
    <table width="100%" border="1">
        <input type="hidden" name="id" value="${itemsCustom.id}" />
        <tr>
            <td class="left">商品名称</td>
            <td class="right">
                <span>
                    <input type="text" class="itemsInfo" name="name" value="${itemsCustom.name}"/>
                    <c:if test="${fieldErrorsMap!=null}">
                    <c:if test="${fieldErrorsMap.name!=null}">
                      <c:out value="${fieldErrorsMap.name}"/>
                    </c:if>
                    </c:if>
                </span>
            </td>

        </tr>
        <tr>
            <td class="left">商品明细</td>
            <td class="right"><textarea name="detail" class="itemsInfo"  rows="3" cols="20">${itemsCustom.detail}</textarea></td>
        </tr>
        <tr>
            <td class="left">商品价格</td>
            <td class="right"><input type="text" class="itemsInfo" name="price" value="${itemsCustom.price}"/></td>
        </tr>
        <tr>
            <td class="left">商品创建时间</td>
            <td class="right">
                <span>
                    <input type="text" class="itemsInfo" name="createtime" value="<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${itemsCustom.createtime}"/>"/>
                    <c:if test="${fieldErrorsMap!=null}">
                        <c:if test="${fieldErrorsMap.createtime!=null}">
                            <c:out value="${fieldErrorsMap.createtime}"/>
                        </c:if>
                    </c:if>
                </span>
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="提交"/></td>
        </tr>
    </table>
</form>
</body>
</html>
