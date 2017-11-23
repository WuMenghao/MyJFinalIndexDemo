package MyJFinalIndexDemo.filter;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;

public class GlobalInterceptor implements Interceptor {

	@Override
	public void intercept(Invocation inv) {
		
		System.out.println("action注入前");
		
		Controller controller= inv.getController();
		String controllerKey= inv.getControllerKey();
		String actionKey= inv.getActionKey();
		String viewPath =inv.getViewPath();
		
		
		System.out.println("controller:"+controller);
		System.out.println("controllerKey:"+controllerKey);
		System.out.println("actionKey:"+actionKey);
		System.out.println("viewPath"+viewPath);
		
		//if(actionKey.equals("/error/"))
		
		inv.invoke();
		
		
		System.out.println("action注入后");
	}

}
