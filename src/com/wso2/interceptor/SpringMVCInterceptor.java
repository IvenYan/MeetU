package com.wso2.interceptor;


import javax.servlet.*;
import java.io.IOException;

public class SpringMVCInterceptor implements Filter{
    @Override
    public void destroy() {

    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        servletRequest.setCharacterEncoding("UTF-8");
        System.out.println("运行过滤器"+this.toString());
        filterChain.doFilter(servletRequest,servletResponse);
    }
}
