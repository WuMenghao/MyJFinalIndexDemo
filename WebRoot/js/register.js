/*
			 
 * 点击事件直接出发函数
 * */
function checkForm() {
	return (notNull("username", /^\s*$/) && checkValue("username", /^[a-zA-Z_0-9]{6,13}$/)
			&& notNull("acount", /^\s*$/) && checkValue("acount", /^[a-zA-Z_0-9]{6,13}$/)
			&& notNull("password", /^\s*$/) && checkValue("password",/^[a-zA-Z_0-9]{6,13}$/));

}

/*
 * 
 * 
 * 正则验证函数
 */

function notNull(id, regexp) {

	var Ele = document.getElementById(id);
	var val = Ele.value;
	var re = regexp;

	delectWarning(Ele);

	if (re.test(val)) {
		var ifo = Ele.previousSibling.previousSibling.innerText;

		appendWarning(Ele, ifo, "不能为空!");

		return false;

	} else {
		return true;
	}

}

function checkValue(id, regexp) {

	var Ele = document.getElementById(id);
	var val = Ele.value;
	var re = regexp;

	delectWarning(Ele);

	if (re.test(val)) {
		return true;
	} else {
		var ifo = Ele.previousSibling.previousSibling.innerText;

		appendWarning(Ele, ifo, "请输入6~13位!");

		return false;
	}
}

/*
 * 
 * 
 * 确认两次密码
 */
function confirmPsw(pswID, rpswID) {
	var Ele = document.getElementById(pswID);
	var rEle = document.getElementById(rpswID);
	var psw = Ele.value;
	var rpsw = rEle.value;
	alert(psw, rpsw);
	if (psw == rpsw) {
		return true;
	} else {
		var ifo = rEle.previousSibling.previousSibling.innerText;
		appendWarning(rEle, ifo, "两次密码不一致!");
		return false;
	}

}
/*
 * 
 * 
 * 提示信息添加函数
 */
function appendWarning(Ele, ifo, msg) {
	var newNode = document.createElement("span");
	var newText = document.createTextNode(ifo + msg);
	newNode.setAttribute("style", "color: red; font-size: 12px;");
	newNode.appendChild(newText);
	Ele.parentNode.insertBefore(newNode, Ele.nextSibling);
}
/*
 * 
 * 
 * 提示信息删除函数
 */
function delectWarning(Ele) {
	var delectNode = Ele.nextSibling;
	delectNode.innerText = "";
}