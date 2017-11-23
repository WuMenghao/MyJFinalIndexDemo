package MyJFinalIndexDemo.Config;

import MyJFinalIndexDemo.Controller.IndexController;
import MyJFinalIndexDemo.filter.GlobalInterceptor;
import MyJFinalIndexDemo.model.Users;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.core.JFinal;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;

public class IndexConfiger extends JFinalConfig{
	
	/*
	 * 常量配置
	 * 
	 * */

	@Override
	public void configConstant(Constants me) {
		//Constants是一个专门用于储存JFinal常量的类,提供了一系列常量设置与获取的方法
		//使用Constants的方法,设置视图类型常量  基础路由常量  错误页面路由   基本下载路由等 
		loadPropertyFile("config.properties");
		me.setDevMode(getPropertyToBoolean("devMode",false));
		me.setViewType(ViewType.JSP);
		me.setBaseViewPath("/view");   //BaseViewPath
		me.setUrlParaSeparator("-");
		me.setBaseDownloadPath("/Download");
		
		me.setError401View("/view/error/Error.jsp");
		me.setError403View("/view/error/Error.jsp");
		me.setError404View("/view/error/Error.jsp");
		me.setError500View("/view/error/Error.jsp");
		me.setErrorView(404, "/view/error/Error.jsp");
		
	}
	
	
	/*
	 * 
	 * 用于网页访问配置路由,每个路由对应相应的Controller
	 * 
	 * */
	@Override
	public void configRoute(Routes me) {
		me.add("/index",IndexController.class);//ViewPath
	}
	
	

	/*
	 * 
	 * 用于配置插件,包括数据库插件等,进行数据库的链接与网页映射
	 * 
	 * */
	@Override
	public void configPlugin(Plugins me) {
		C3p0Plugin c3p0Plugin=new C3p0Plugin(getProperty("jdbcUrl"),getProperty("user"),getProperty("password"));
		me.add(c3p0Plugin);
		
		ActiveRecordPlugin arp=new ActiveRecordPlugin(c3p0Plugin);
		me.add(arp);
		arp.addMapping("users", Users.class);
		
	}
	
	
	/*
	 * 
	 * 用于配置过滤器,该案例暂不使用
	 * 
	 * */
	@Override
	public void configInterceptor(Interceptors me) {
		me.add(new GlobalInterceptor());
		
	}

	
	
	
	
	/*
	 * 
	 * 
	 * 用于配置控制器,暂时不使用
	 * 
	 * */
	@Override
	public void configHandler(Handlers me) {
		
	}

	/*
	 * 
	 *系统启动后回调
	 *系统关闭前回调 
	 * 
	 * */
	@Override
	public void afterJFinalStart() {
		System.out.println("系统开启后回调了");
	}

	@Override
	public void beforeJFinalStop() {
		System.out.println("系统关闭前回调了");
	}
	
	
	
	/*
	 * 
	 * 程序开始入口
	 * 用于配置服务器的启动配置
	 * 
	 * */
	public static void main(String[] args) {
		JFinal.start("WebRoot", 90, "/", 5);
	}
}
