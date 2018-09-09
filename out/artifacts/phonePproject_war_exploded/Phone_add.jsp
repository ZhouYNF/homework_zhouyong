<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="addPhone" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document" style="width: 30%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title">添加新手机</h3>
            </div>
            <div class="modal-body">
                <div class="row" style="margin: 1rem;">
                    <div class="col-md-12">
                        <form class="form-horizontal" role="form" id="form1">
                            <div class="form-group">
                                <input type="text" class="form-control" id="id" name="id" placeholder="编号"/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="name" name="name" placeholder="名字"/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="price" name="price" placeholder="价钱"/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="number" name="number" placeholder="商品数量"/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="manufacturer" name="manufacturer" placeholder="手机厂商"/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="picture" name="picture" placeholder="手机海报"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="addP()" >添加商品</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
    function addP(){
        $.ajax({
            type: "POST",
            url: "/Phoneadd",
            data: $('#form1').serialize(),// 序列化表单值
            async: false,
            error: function (request) {
                alert("Connection error");
            },
            success: function (data) {
                window.location.href = "/phones"
            }
        });
    }
</script>