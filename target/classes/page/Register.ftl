<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>失物招领平台注册</title>
		<script type="text/javascript" src="../js/jquery.js"></script>
		<script src="../js/jquery.min.js" type="text/javascript"></script>
		<link rel="stylesheet" href="../css/bootstrap.css" />
		<link rel="stylesheet" href="../css/bootstrap.min.css" />
		<script type="text/javascript" src="../js/bootstrap.js"></script>
	</head>

	<body>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ol class="breadcrumb">
						<li class="active">注册</li>
					</ol>
				</div>
				<div class="col-md-12">
					<div class="col-md-8">
					 <from> 
						<div class="forborder form-horizontal">
							<div class="form-group">
								<!--
                                	用户名
                                -->
								<label for="inputEmail3" class="col-sm-3 control-label">请输入用户名(*)</label>
								<div class="col-sm-4">
									<input type="name" class="form-control" id="inputuser" placeholder="请输入用户名(6到12位)">
								</div>
								<div class="col-sm-5">
									<label for="inputEmail3" class="col-sm-5 control-label" style="color: red;" id="textuser"></label>
								</div>
							</div>
							<!--密码 -->
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-3 control-label">请输入密码(*)</label>
								<div class="col-sm-4">
									<input type="password" class="form-control" id="inputpwd" placeholder="请输入密码(6到12位)">
								</div>
								<div class="col-sm-5">
									<label for="inputEmail3" class="col-sm-5 control-label" style="color: red;" id="textpwd"></label>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-3 control-label">请确认密码(*)</label>
								<div class="col-sm-4">
									<input type="password" class="form-control" id="inputnewpwd" placeholder="请确认密码">
								</div>
								<div class="col-sm-5">
									<label for="inputEmail3" class="col-sm-5 control-label" style="color: red;" id="textnewpwd"></label>
								</div>
							</div>

							<!-- 联系方式-->
							<div class="form-group">
								<label for="inputPhone3" class="col-sm-3 control-label">请输入联系方式(*)</label>
								<div class="col-sm-4">
									<input type="phone" class="form-control" id="inputmobile" placeholder="11位联系方式">
								</div>
								<div class="col-sm-5">
									<label for="inputEmail3" class="col-sm-5 control-label" style="color: red;" id="textphone"></label>
								</div>
							</div>

							<!--性别-->
							<div class="form-group">
								<label for="inputGender3" class="col-sm-3 control-label">请选择性别(*)</label>
								<div class="col-sm-4">
									<div class="radio">
										<label>
                                          <input type="radio" name="gender" id="gender" value="男" >
                                                                                   男
                                        </label>
									</div>
									<div class="radio">
										<label>
                                           <input type="radio" name="gender" id="gender1" value="女" >
                                                                                  女
                                        </label>
									</div>
								</div>
								
							</div>

							<!--联系地址-->
							<div class="form-group">
								<label for="inputAddress3" class="col-sm-3 control-label">请输入联系地址</label>
								<div class="col-sm-4">
									<textarea class="form-control" rows="3" id="loca"></textarea>
								</div>
							</div>

							<!--电子邮件-->
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-3 control-label">电子邮件</label>
								<div class="col-sm-4">
									<input type="email" class="form-control" id="inputem" placeholder="请输入正确的邮件">
								</div>
								<div class="col-sm-5">
									<label for="inputEmail3" class="col-sm-5 control-label" style="color: red;" id="textem"></label>
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-6">
									<button type="submit" class="btn btn-default" id="reguser">注册</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<button  class="btn btn-danger" id="rest">重置</button>
								</div>
							</div>
						</div>
					</div>
					</form> 
					<div class="col-md-3">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									注意事项：
								</h3>
							</div>
							<div class="panel-body">
								<p style="color: red;">1.带*的一律为必填项</p>
								<br> 2.填写用户详细信息只是为了方便联系他人，不会见信息泄露他人，请放心填写。
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

<script>
			$(function() {
			   $("#rest").click(function(){
			   //alert("1");
				   $("#inputuser").val(""); 
				   $("#inputpwd").val("") ; 
				   $("#inputnewpwd").val("");
				   $("#inputmobile").val("");
				   $("#inputem").val("");
				   $("#loca").val("");
				   $("#textuser").hide();
				   $("#textnewpwd").hide();
				   $("#textpwd").hide();
				   $("#textphone").hide();
				   $("#textem").hide();
				   $("input[type='radio']").removeAttr('checked');
				})	
				$("#textnote").hide();
				
				 var keyStr = "ABCDEFGHIJKLMNOP" + "QRSTUVWXYZabcdef" + "ghijklmnopqrstuv"
                        + "wxyz0123456789+/" + "=";
        
        function encode64(input) {
                var output = "";
                var chr1, chr2, chr3 = "";
                var enc1, enc2, enc3, enc4 = "";
                var i = 0;
                do {
                        chr1 = input.charCodeAt(i++);
                        chr2 = input.charCodeAt(i++);
                        chr3 = input.charCodeAt(i++);
                        enc1 = chr1 >> 2;
                        enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
                        enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
                        enc4 = chr3 & 63;
                        if (isNaN(chr2)) {
                                enc3 = enc4 = 64;
                        } else if (isNaN(chr3)) {
                                enc4 = 64;
                        }
                        output = output + keyStr.charAt(enc1) + keyStr.charAt(enc2)
                                        + keyStr.charAt(enc3) + keyStr.charAt(enc4);
                        chr1 = chr2 = chr3 = "";
                        enc1 = enc2 = enc3 = enc4 = "";
                } while (i < input.length);
                return output;
        }
				
				$("#inputuser").keyup(function(e) {
					if($("#inputuser").val().length < 6 || $("#inputuser").val().length > 12) {
						$("#textuser").text("用户名6-12").show();
						$("#reguser").addClass("disabled");
						$("#reguser").prop('disabled', true);
					} else {
						$("#textuser").hide();
						$("#reguser").removeClass("disabled");
						$("#reguser").prop('disabled', false);
					}
				});
				$("#inputpwd").keyup(function(e) {
					if($("#inputpwd").val().length < 6 || $("#inputpwd").val().length > 12 ) {
						$("#textpwd").text("密码6-12").show();
						$("#reguser").addClass("disabled");
						$("#reguser").prop('disabled', true);  
						if($("#inputnewpwd").val()!=""&&$("#inputpwd").val() != $("#inputnewpwd").val()){
					        $("#textnewpwd").text("密码不一致").show();
						    $("#reguser").addClass("disabled");
						    $("#reguser").prop('disabled', true);
					     }else{
						    $("#textnewpwd").hide();
						    $("#reguser").removeClass("disabled");
						    $("#reguser").prop('disabled', false);
						}
					} else {
						$("#textpwd").hide();
						$("#reguser").removeClass("disabled");
						$("#reguser").prop('disabled', false);
						if($("#inputnewpwd").val()!=""&&$("#inputpwd").val() != $("#inputnewpwd").val()){
					        $("#textnewpwd").text("密码不一致").show();
						    $("#reguser").addClass("disabled");
						    $("#reguser").prop('disabled', true);
					     }else{
						    $("#textnewpwd").hide();
						    $("#reguser").removeClass("disabled");
						    $("#reguser").prop('disabled', false);
						}
					}

				});
				$("#inputnewpwd").keyup(function() {
					if($("#inputpwd").val() != $("#inputnewpwd").val()) {
						$("#textnewpwd").text("密码不一致").show();
						$("#reguser").addClass("disabled");
						$("#reguser").prop('disabled', true);
					} else {
						$("#textnewpwd").hide();
						$("#reguser").removeClass("disabled");
						$("#reguser").prop('disabled', false);
					}
				});

				$("#inputmobile").change(function() {
					var phone = $("#inputmobile").val();
					var reg = /^1[0-9]{10}$/;
					if(reg.test(phone) == false) {
						$("#textphone").text("联系方式错误").show();
						$("#reguser").addClass("disabled");
						$("#reguser").prop('disabled', true);
					} else {
						$("#textphone").hide();
						$("#reguser").removeClass("disabled");
						$("#reguser").prop('disabled', false);
					}
				})
				$("#inputem").change(function() {
					var email = $("#inputem").val();
					var reg =  /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/; //邮箱
					if(reg.test(email) == false) {
						$("#textem").text("邮箱格式错误").show();
						$("#reguser").addClass("disabled");
						$("#reguser").prop('disabled', true);
					} else {
						$("#textem").hide();
						$("#reguser").removeClass("disabled");
						$("#reguser").prop('disabled', false);
					}
				});
				$("#reguser").click(function() {
					if($("#inputuser").val() == "" || $("#inputpwd").val() == "" || $("#inputnewpwd").val() == "" ||
						$("#inputmobile").val() == "") {
						alert("请填写必填项");
					} else {
					 var password = encode64($("#inputpwd").val());       
						$.ajax({
						url:"http://localhost:8080/user/register",
						type:"get",
						data:{"name":$("#inputuser").val(),"password":password},
						dataType:"json",
						success:function(data){
						    if(data==-1){
						      alert("用户名已存在");
						    } else{
						      alert("注册成功，将为你跳转到登录界面");
						      window.location.href="http://localhost:8080/page/login.ftl"; 
						    }   	
						},error:function(data){
							alert("注册失败");
						}
					})						
					}
					
				
				})
				
				
				
			})
		</script>
		

</html>