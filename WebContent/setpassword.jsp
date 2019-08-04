<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>密码更改工具</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="static/css/bootstrap.min.css">
	    <link rel="stylesheet" href="static/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="static/css/bootstrap-admin-theme.css">
        <link rel="stylesheet" href="static/css/bootstrap-admin-theme.css">
        
        <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
</head>
<body>


<form>	
							<input type="hidden" name="tip" value="1">
								<input type="hidden" name="url" value="select">
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">原密码</label>
								<div class="col-sm-7">
									<input type="password" class="form-control" name="password" id="oldPwd"  placeholder="请输入原密码">
										<label class="control-label" for="oldPwd" style="display: none"></label>				
								</div>
							</div>	
							
							<div class="form-group">
								<label for="firstname" class="col-sm-3 control-label">新密码</label>
								<div class="col-sm-7">
									<input type="password" class="form-control" name="password2" id="newPwd"  placeholder="请输入新密码">
										<label class="control-label" for="newPwd" style="display: none"></label>			
								</div>
							</div>	
							
								<!--正文-->
						
							<div class="modal-footer">
								<!-- <button type="button" class="btn btn-default" data-dismiss="modal" onclick="window.history.go(-2)">关闭
								</button> -->
								<button type="submit" class="btn btn-primary" onclick="content()">
									修改
								</button>
							</div>
							<script type="text/javascript">
							
									function content(){
											var newPwd = $("#newPwd").val();
											var oldPwd = $("#oldPwd").val();
											if(newPwd==oldPwd||(newPwd.length>10||newPwd.length<6)){
												if(newPwd==oldPwd)
												alert("密码修改失败,新密码与原密码相同！")
												else
										         alert("密码修改失败,密码应为6~10位")
									
											}
											else{
											 $.post(
											            "user/updatepassword",{
											            	newPwd:newPwd,
											            	oldPwd:oldPwd
											            }
											,function(data,status){
													if(data=="true"){
								                    alert("修改成功")
								                }
												else {alert("原密码错误!密码修改失败!")}		
								            })
											}
									}
									
									
							</script>
						<!-- /.modal-content -->
		

				</form>	
</body>
</html>