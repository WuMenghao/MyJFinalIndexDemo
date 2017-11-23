$("document").ready(

function() {


	$("#submit").click(function() {
		
			
		if ($("#acount").val() == "" || $("#acount").val() == null) {
			alert("请输入用户名!");
			$("#acount").focus();
			return false;
		}

		if ($("#password").val() == "" || $("#password").val() == null) {
			alert("请输入密码!");
			$("#password").focus();
			return false;
		}
	})

})
