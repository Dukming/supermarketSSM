package com.dkm.interceptor;

import com.dkm.pojo.Employee;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginInterceptor implements HandlerInterceptor {
    private static final String[] URI = {"/index.jsp","/error.jsp","/login"};
    private static final String TYPE1 = "/Manager/";
    private static final String TYPE2 = "/Cashier/";
    private static final String TYPE3 = "/Purchaser/";

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
        String servletPath = request.getServletPath();
        HttpSession session = request.getSession();
        Employee emp = (Employee) session.getAttribute("emp");

        for(String uri : URI){
            if(servletPath.contains(uri)){
                return  true;
            }
        }

        if(emp!=null){

//            int type = emp.getType();
//            if(type==1 && servletPath.contains(TYPE1)){
//                return  true;
//            }else if (type==2 && servletPath.contains(TYPE2)){
//                return  true;
//            }else if (type==3 && servletPath.contains(TYPE3)){
//                return  true;
//            }else{
//                response.sendRedirect("/ssmSupermarket/index.jsp");
//            }
            return true;
        }else{
            response.sendRedirect("/ssmSupermarket/index.jsp");
            return false;
        }
    }


    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {

    }


}
