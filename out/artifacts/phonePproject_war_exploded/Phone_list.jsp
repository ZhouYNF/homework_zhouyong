<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<html>
<head>
    <title>Title</title>
    <%@include file="layout/Phone_res_pre.jsp"%>
    <%--引入相关的js等--%>
    <%@include file="layout/Phone_res_post.jsp"%>
</head>
<body>
<div class="col-md-6 column">
    <form role="form" class="form-inline" action="/PhoneSearch" method="get">
        <div class="form-group">
            <input type="text" size="60" class="form-control" id="search" placeholder="搜一下" name="condition"/>
            <input type="submit" class="btn btn-primary" value="搜索"/>
        </div>
    </form>
</div>
    <table class="table table-striped">
        <tr>
            <th>id</th>
            <th>手机名字</th>
            <th>手机价格</th>
            <th>手机数量</th>
            <th>手机厂商</th>
            <th>其他</th>
        </tr>
        <c:forEach var="phone" items="${phones}" >
            <tr>
                <td>${phone.id}</td>
                <td><a href="<c:url value="/PhoneDetail?id=${phone.id}" />">${phone.name}</a></td>
                <td><f:formatNumber value="${phone.price}" type="CURRENCY" currencySymbol="$"/></td>
                <td>${phone.number}</td>
                <td>${phone.manufacturer}</td>
                <td><a href="/PhoneDel?id=${phone.id}">删除</a>
                    <a href="#myModal" data-toggle="modal" data-id="${phone.id}">更新</a>
            </tr>
        </c:forEach>
    </table>
    <div style="margin-top: 2em;">
        <a href="#" id="addphone">添加新手机</a>
    </div>
    <div id="modal"></div>
    <%@ include file="Phone_update_modal.jsp" %>
<script>
    $(function(){
        $("#addphone").on("click",function(){
            $("#modal").load("Phone_add.jsp",function(){
                $('#addPhone').modal('show');
            });
        });
    });
</script>
</body>
</html>
