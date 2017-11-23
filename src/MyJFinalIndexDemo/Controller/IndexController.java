package MyJFinalIndexDemo.Controller;

import java.util.List;

import MyJFinalIndexDemo.model.Users;

import com.jfinal.core.Controller;

public class IndexController extends Controller {
	
	/*
	 * 
	 * 主页
	 * 
	 */
	public void index(){
		renderJsp("index.jsp");
	}
	
	
	
	public void welcome(){
		renderJsp("welcome.jsp");
	}
	
	/*
	 * 
	 * 
	 * 
	 * 查询业务逻辑
	 * 
	 * 
	 * 
	 * */
	public void query(){
		List<Users> users=Users.me.find("select * from users");
		for(Users user:users){
			System.out.println(user.toString());
		}
		
		setAttr("users", users);
		
		render("query.jsp");
	}
	

	/*
	 * 
	 * 
	 * 
	 * 登录业务逻辑
	 * 
	 * 
	 * 
	 * */
	public void login(){
		
		render("login.jsp");

	}
	
	
	
	public void check(){
		//从网页的发送的response中获取参数(Model(login))
		Users login = getModel(Users.class,"login");
		
		String acount=login.getStr("acount");
		String password=login.getStr("pass_word");
		
		
		//从数据库获取网页中(Model(login))参数对应的数据(Model(userIfo))
		List<Users> userIfo=Users.me.find("select acount,pass_word from users where acount='"+acount+"' "+"and pass_word='"+password+"'");
		//判断是否为空,执行相应的逻辑
		if (userIfo.isEmpty()) {
			String msg="您输入的账户或密码有误!";
			setAttr("login", login);
			setAttr("msg", msg);
			
			forwardAction("/index/failed");
			
		}else {
			setAttr("login", login);
			forwardAction("/index/success");
			
		}
		
		
		
		System.out.println("账号"+acount);
		System.out.println("密码"+password);
		

	}
	
	
	/*
	 * 
	 * 
	 * 
	 * 注册业务逻辑
	 * 
	 * 
	 * 
	 * */

	public void register(){
		
		Integer id=getParaToInt("id");
		if(id!=null && id>0){
			//从数据库中获取id值设为发送到浏览器的参数与值
			setAttr("register",Users.me.findById(id));
		}
		
		render("register.jsp");
	}
	
	public void save(){
		//从register页面获取到view中的数据
		Users register=getModel(Users.class, "register");
		//初始化一个boolean类型遍历储存数据库操作的结果
		boolean result=false;
		
		if (register.get("id")==null) {
			result=register.save();
		}else{	
			result=register.update();
		}
		
		System.out.println("数据处理结果:"+result);
		
		welcome();
	}
	
	/*
	 * 
	 * 登录成功页面
	 * 
	 * */
	public void success(){
		
		render("/view/index/Success.jsp");
	}
	
	/*
	 *
	 *登录失败页面
	 *
	 **/
	public void failed(){
			render("/view/error/Failed.jsp");
		
	}
}
