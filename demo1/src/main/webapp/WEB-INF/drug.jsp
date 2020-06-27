<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- JSTL标签和自定义分页标签 -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="itheima" uri="http://itheima.com/common/"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>药品管理</title>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>


<!-- 引入css样式文件 -->
<!-- Bootstrap Core CSS-->


<link href="css/bootstrap.min.css" rel="stylesheet" />
<!-- MetisMenu CSS -->
<link href="css/metisMenu.min.css" "rel="stylesheet" />
<!-- DataTables CSS -->
<link href="css/dataTables.bootstrap.css" rel="stylesheet" />
<!-- Custom CSS -->
<link href="css/sb-admin-2.css" rel="stylesheet" />
<!-- Custom Fonts -->
<link href="css/font-awesome.min.css" type="text/css" />
<link href="css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="wrapper">
		<%@include file="head.jsp"%>
		<!-- 列表查询部分  start-->
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">
						<b><font size="6" color="skyblue">药品管理</font></b>
					</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="panel panel-default">
				<div class="panel-body">
					<form class="form-inline" method="post"
						action="${pageContext.request.contextPath }/medicin/list.action">
						<div class="form-group">
							<label for="name">药品名字</label> <input type="text"
								class="form-control" id="name" value="${medName} "
								name="medName" />
						</div>
						<div class="form-group">
							<label for="price">价格</label> <input type="text"
								class="form-control" id="price" value="${medPrice}"
								name="medPrice" />
						</div>
						<div class="form-group">
							<label for="product">药品生产商</label> <select class="form-control"
								id="product" name="medProduct">
								<option value="${medProduct}">--请选择--</option>
								<c:forEach items="${medProduct}" var="item">
									<!-- <option value="${item.dict_item_name}"
                                        <c:if test="${item.dict_item_name == sex}">selected</c:if>>
                                        ${item.dict_item_name }
                                </option>-->
								</c:forEach>
							</select>

						</div>
						<button type="submit" class="btn btn-primary">查询</button>
					</form>
				</div>
			</div>
			<a href="#" class="btn btn-primary" data-toggle="modal"
				data-target="#newDialog" onclick="clearMedicin()">新建表</a>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">药品表</div>
						<!-- /.panel-heading -->
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>药品id</th>
									<th>药品名字</th>
									<th>规格（ml、g）</th>
									<th>价格</th>
									<th>药品生产商</th>
									<th>生产日期</th>
									<th>有效期</th>
									<th>人员id</th>
									<th>采购编号</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.rows}" var="row">
									<tr>
										<td align="center">${row.medid}</td>
										<td align="center">${row.medname}</td>
										<td align="center">${row.medspe}</td>
										<td align="center">${row.medprice}</td>
										<td align="center">${row.medproduct}</td>
										<td align="center">${row.medsdate}</td>
										<td align="center">${row.medvalidity}</td>
										<td align="center">${row.mobile}</td>
										<td align="center"></td>
										<td align="center"><a href="#"
											class="btn btn-primary btn-xs" data-toggle="modal"
											data-target="#medicinDialog" onclick="medicin(${row.medid})">修改</a>
											<a href="#" class="btn btn-danger btn-xs"
											onclick="deleteMedicin(${row.medid})">删除</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<!-- 自定义分页表签，根据药品数以及设定的页数数据显示内容 -->
						<div class="col-md-12 text-right">
							<itheima:page
								url="${pageContext.request.contextPath }/medicin/list.action" />
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
		</div>
		<!-- 列表查询部分  end-->
	</div>

	<!-- 修改药品模态框 -->
	<div class="modal fade" id="medicinDialog" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改药品信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="medicin_form">

						<input type="hidden" id="medicin_medid" name="medid" />
						<div class="form-group">
							<label for="medicin_medname" class="col-sm-2 control-label">药品名称</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="medicin_medname"
									placeholder="药品名称" name="medname" />
							</div>
						</div>

						<div class="form-group">
							<label for="medicin_medspe" class="col-sm-2 control-label">规格（ml、g）</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="medicin_medspe"
									placeholder="规格（ml、g）" name="medspe" />
							</div>
						</div>
						<div class="form-group">
							<label for="medicin_medprice" class="col-sm-2 control-label">价格</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="medicin_medprice"
									placeholder="价格" name="medprice" />
							</div>
						</div>
						<div class="form-group">
							<label for="medicin_medproduct" class="col-sm-2 control-label">药品生产商</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="medicin_medproduct"
									placeholder="药品生产商" name="medproduct" />
							</div>
						</div>
						<div class="form-group">
							<label for="medicin_medsdate" class="col-sm-2 control-label">药品生产日期</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="medicin_medsdate"
									placeholder="药品生产日期" name="medsdate" />
							</div>
						</div>
						<div class="form-group">
							<label for="medicin_medvalidity" class="col-sm-2 control-label">有效期</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="medicin_medvalidity"
									placeholder="有效期" name="medvalidity" />
							</div>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" onclick="update()">保存修改</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 引入js文件 -->
	<!-- jQuery -->
	<script src="jquery-1.11.3.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="bootstrap.min.js"></script>
	<!-- Metis Menu Plugin JavaScript -->
	<script src="metisMenu.min.js"></script>
	<!-- DataTables JavaScript -->
	<script src="jquery.dataTables.min.js"></script>
	<script src="../bootstrap-4.5.0-dist/js/bootstrap.bundle.min.js"></script>
	<!-- Custom Theme JavaScript -->
	<script src="sb-admin-2.js"></script>
	<!-- 编写js代码 -->
	<script type="text/javascript">
    // 通过id获取修改的药品信息
    function medicin(id) {
        $.ajax({
            type: "get",
            url: "medicin/getMedicinById.action",
            data: {"id": id},
            success: function (data) {
                $("#medicin_medid").val(data.medid);
                $("#medicin_medname").val(data.medname);
                $("#medicin_medspe").val(data.medspe);
                $("#medicin_medprice").val(data.medprice);
                $("#medicin_medproduct").val(data.medproduct);
                $("#medicin_medsdate").val(data.medsdate);
                $("#medicin_medvalidity").val(data.medvalidity);
                
                
            }
        });
    }

    // 执行修改药品操作
    function update() {
        $.post("medicin/update.action", $("#medicin_form").serialize(), function (data) {
            if (data == "OK") {
                alert("信息更新成功！");
                window.location.reload();
            } else {
                alert("信息更新失败！");
                window.location.reload();
            }
        });
    }

    // 删除药品
    function deleteMedicin(id) {
        if (confirm('确实要删除该药品吗?')) {
            $.post("medicin/delete.action", {"id": id},
                function (data) {
                    if (data == "OK") {
                        alert("药品删除成功！");
                        window.location.reload();
                    } else {
                        alert("药品删除失败！");
                        window.location.reload();
                    }
                });
        }
    }
</script>
</body>
</html>