$("document").ready(function(){
		$("#acount").focus(function (){
			$(this).parent().addClass("focus-input").removeClass("error");
		}).blur(function (){
			$("#acount").next().remove();
			var value=$(this).val();
			if(value=="" || value==null){
				$(this).parent().addClass("error").removeClass("focus-input");
				var $objSpan=$("<span>年龄不能为空</span>");
				$(this).after($objSpan);
				return;
			}
		})
		
		$("input[type='submit']").click(onclick);
		
		function onclick(){
			
			if($("acount").val()==null || $("acount").val()==""){
				alert("请输入用户名!");
				$("acount").foucs();
				return false;
			}
			
			if($("pass_word").val()==null || $("acount").val()==""){
				alert("请输入用户名!");
				$("pass_word").foucs();
				return false;
			}
		}
	})
	
	function check(){
		if(document.getElementById("acount").value==""){
			alert("请输入用户名!");
			document.getElementById("acount").focus();
			return false;
		}
	
		if(document.getElementById("pass_word").value==""){
			alert("请输入密码!");
			document.getElementById("pass_word").focus();
			return false;
		}
		
	}
	