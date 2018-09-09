<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--显示与数据分离--%>

<%--显示区--%>
<form action="<c:url value="/PhoneUpdate" />" method="post" class="form-horizontal">
    <div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="myModalLabel">更新手机信息</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="PhoneID" class="col-sm-2 control-label">ID</label>
                        <div class="col-sm-10">
                            <input type="text" id="PhoneID" class="form-control" name="id" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="Phonename" class="col-sm-2 control-label">手机名字</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="Phonename" placeholder="手机名字" name="name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="Phoneprice" class="col-sm-2 control-label">手机价格</label>
                        <div class="col-sm-10">
                            <input type="number" step="0.001" class="form-control" id="Phoneprice" placeholder="手机价格" name="price">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="Phonenumber" class="col-sm-2 control-label">手机数量</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="Phonenumber" placeholder="数量" name="number">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="manufacturer" class="col-sm-2 control-label">手机厂商</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="manufacturer" placeholder="厂商" name="manufacturer">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="picture" class="col-sm-2 control-label">海报</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="picture" placeholder="海报" name="picture">
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <div><input type="submit" class="btn btn-primary" value="提交更新"></div>
                </div>
            </div>
        </div>
    </div>
</form>

<%--数据区--%>
<script>
    $("#myModal").on("show.bs.modal", function (e) {
        var id = $(e.relatedTarget).data("id");
        $.ajax({
            method: "get",
            url: "<c:url value="/PhoneUpdate" />",
            data: {id: id}
        }).done(function (data, bbb, ccc) {
            $("#PhoneID").val(data.id);
            $("#Phonename").val(data.name);
            $("#Phoneprice").val(data.price);
            $("#Phonenumber").val(data.number);
            $("#manufacturer").val(data.manufacturer);
            $("#picture").val(data.picture);
        }).fail(function (xhr, textStatus, errorThrown) {
            console.error(errorThrown);
        }).always(function () {

        });
    });
</script>