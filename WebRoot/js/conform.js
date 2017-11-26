/*
			 
			 * 点击事件直接出发函数
			 * */
			function checkForm(){
				return (notNull("login.acount",/^\s*$/) && checkValue("login.acount",/^[a-zA-Z_0-9]{6,13}$/)
							&& notNull("login.pass_word",/^\s*$/) && checkValue("login.pass_word",/^[a-zA-Z_0-9]{6,13}$/))

			}
			
			/*
			 
			 * 
			 * 正则验证函数
			 * */
			
			function notNull(name,regexp){
				
				var Ele=document.getElementsByName(name)[0];
				var val=Ele.value;
				var re=regexp;
				var nullreg=/^\s*$/;
				
				delectWarning(Ele);
				
				
						
				if(re.test(val)){
					var ifo=Ele.previousSibling.previousSibling.innerText;
					
					appendWarning(Ele,ifo,"不能为空!");
					
					return false;
	
				}else{
					return true;
				}
					
			}
			
			function checkValue(name,regexp){
				
				var Ele=document.getElementsByName(name)[0];
				var val=Ele.value;
				var re=regexp;
				var nullreg=/^\s*$/;
				
				delectWarning(Ele);
				
				if(re.test(val)){
						return true;
					}else{
						var ifo=Ele.previousSibling.previousSibling.innerText;
					
						appendWarning(Ele,ifo,"请输入6~13位!");
					
						return false;
					}
			}
			
			/*
			 
			 * 
			 * 确认两次密码
			 * */
			function confirmPsw(pswN,rpswN){
				var Ele=document.getElementsByName(pswN)[0];
				var rEle=document.getElementsByName(rpswN)[0];
				var psw=Ele.value; 
				var rpsw=rEle.value;
				alert(psw,rpsw);
				if(psw==rpsw){
					return true;
				}else{
					var ifo=rEle.previousSibling.previousSibling.innerText;
					appendWarning(rEle,ifo,"两次密码不一致!");
					return false;
				}
				
			}
			/*
			 
			 * 
			 * 提示信息添加函数
			 * */
			function appendWarning(Ele,ifo,msg){
				var newNode=document.createElement("span");
				var newText=document.createTextNode(ifo+msg);
				newNode.setAttribute("style","color: red; font-size: 12px;");
				newNode.appendChild(newText);
				Ele.parentNode.insertBefore(newNode,Ele.nextSibling);
			}
			/*
			 
			 * 
			 * 提示信息删除函数
			 * */
			function delectWarning(Ele){
				var delectNode=Ele.nextSibling;
				delectNode.innerText="";
			}