$("document").ready(

function() {

	$("#acount").focus(function() {
		$("#acount").remove();
		$(this).css();
	})
	$("#acount").blur(function() {
		
		var value = $(this).val();
		if (value == "" || value == null) {
			$(this).css();
			var $objSpan = $("<span>年龄不能为空</span>");
			$(this).after($objSpan);
			return;
		}
	})

	$("#submit").click(function() {
		
		if ($("#password").val() == "" || $("#password").val() == null) {
			alert("请输入密码!");
			$("#password").focus();
			return false;
		}
			
		if ($("#acount").val() == "" || $("#acount").val() == null) {
			alert("请输入用户名!");
			$("#acount").focus();
			return false;
		}

	})

})
