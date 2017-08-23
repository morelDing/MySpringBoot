<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>登录</title>
		<link rel="stylesheet" href="../css/bootstrap.min.css" />
		<link href="../fonts/css/font-awesome.css" rel="stylesheet">
		<link href="../css/animate.css" rel="stylesheet">
		<link href="../css/style.css" rel="stylesheet">
		<script type="text/javascript" src="../js/jquery.js"></script>
		<script type="text/javascript" src="../js/bootstrap.js"></script>
		 <script type="text/javascript" src="../js/jquery.md5.js" ></script>
	</head>

	<body class="gray-bg">

		<div class="middle-box text-center loginscreen animated fadeInDown">
			<div>
				<h3>欢迎登录</h3>
				<form class="m-t" role="form" action="../user/login" method="post"   onsubmit="return checkform();">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="用户名" required="" name="name" id="user">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="密码" required="" name="password" id="password">
					</div>			
					<div class="row">
					<button type="submit" class="btn btn-primary block col-md-6">登录</button>
					<a class="btn btn-danger col-md-6" href="../page/Register.ftl">注册</a>
					</div>
				</form>
				<p class="m-t"> <small>版权所有 &copy; 2017</small> </p>
			</div>
		</div>
	</body>
    
    
    <script>
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
   
       function checkform() { 
           if($("#user").val() == "" ) {
				alert("用户名不能为空");
				return false;
		    } else if($("#password").val()==""){
		        alert("密码不能为空");
		        return false;
		    }else{
		      var password = encode64($("#password").val());       
              $("#password").val(password);
		      return true;
		    }
        } 
    </script>
</html>