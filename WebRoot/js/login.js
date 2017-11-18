$("document").ready(

function() {

	$("#acount").focus(function() {
		$(this).parent().addClass("focus-input").removeClass("error");
	}).blur(function() {
		$("#acount").next().remove();
		var value = $(this).val();
		if (value == "" || value == null) {
			$(this).parent().addClass("error").removeClass("focus-input");
			var $objSpan = $("<span>年龄不能为空</span>");
			$(this).after($objSpan);
			return;
		}
	})

	$("#submit").click(function() {
		

		if ($("#acount").val() == "" || $("#acount").val() == null) {
			alert("请输入用户名!");
			$("#acount").focus();
			return false;
		}

		if ($("#pass_word").value() == "" || $("#pass_word").val() == null) {
			alert("请输入密码!");
			$("#pass_word").focus();
			return false;
		}
	})

})
