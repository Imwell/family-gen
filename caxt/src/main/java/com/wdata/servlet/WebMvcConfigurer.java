package com.wdata.servlet;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 * 拦截器
 */
@Configuration
public class WebMvcConfigurer extends WebMvcConfigurationSupport {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //注册拦截器 拦截规则
        //多个拦截器时 以此添加 执行顺序按添加顺序
        registry.addInterceptor(getHandlerInterceptor())
                .excludePathPatterns("/resources/css/**",
                        "/resources/js/**",
                        "/resources/images/**",
                        "/resources/icon/**",
                        "/resources/fonts/**",
                        "/resources/plugins/**",
                        "/resources/datas/**")
                .addPathPatterns("/**").addPathPatterns("/");
    }

    @Override
    protected void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/**").addResourceLocations("/");
    }

    //后台
    @Bean
    public static HandlerInterceptor getHandlerInterceptor() {
        return new CustomHandlerInterceptor();
    }

    @Override
    protected void configureViewResolvers(ViewResolverRegistry registry) {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/pages/");
        resolver.setSuffix(".jsp");
        registry.viewResolver(resolver);
    }
}