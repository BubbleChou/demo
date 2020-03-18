<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加学生</title>
    <link href="https://cdn.bootcss.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <style>
        .container{
            width: 400px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row" >
        <div class="col-md-12">
            <form class="form-horizontal" method="post" action="/user/addUser">
                <div class="form-group">
                    <label for="inputId" class="col-sm-2 control-label">ID</label>
                    <div class="col-sm-10">
                        <input type="text" name="id" class="form-control" id="inputId" placeholder="id">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">name</label>
                    <div class="col-sm-10">
                        <input type="text"  name="name" class="form-control" id="inputName" placeholder="id">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputSex" class="col-sm-2 control-label">sex</label>
                    <div class="col-sm-10">
                        <input type="text"  name="sex" class="form-control" id="inputSex" placeholder="id">
                    </div>
                </div>
                <div class="form-group">
                    <label for="age" class="col-sm-2 control-label">age</label>
                    <div class="col-sm-10">
                        <input type="text"  name="age" class="form-control" id="age" placeholder="id">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button  type="submit" class="btn btn-success" >添加</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>

