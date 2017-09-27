package com.xycode.janebook.conf;


import com.xycode.janebook.realm.MyRealm;
import org.apache.shiro.cache.ehcache.EhCacheManager;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.servlet.Filter;
import java.util.LinkedHashMap;
import java.util.Map;


@Configuration
public class ShiroConfig {
    @Bean
    public ShiroFilterFactoryBean shiroFilter(SecurityManager securityManager) {
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        //设置SecurityManager
        shiroFilterFactoryBean.setSecurityManager(securityManager);
        //拦截器
        Map<String, String> filterChainDefinitionMap = new LinkedHashMap<>();
        Map<String, Filter> filter = new LinkedHashMap<>();
        //filter.put("myFilter",Filter());
        //authc代表需要认证后才能访问
        //filterChainDefinitionMap.put("/login", "anon");
        //  filterChainDefinitionMap.put("/unauthorization", "anon");
        //配置退出过滤器
        // filterChainDefinitionMap.put("/logout", "logout");
        //暂时注释
        // filterChainDefinitionMap.put("/**", "authc");
        //anon代表可以匿名访问



        // 如果不设置默认会自动寻找Web工程根目录下的"/login.jsp"页面
        shiroFilterFactoryBean.setLoginUrl("/login");
        // 登录成功后要跳转的链接
        shiroFilterFactoryBean.setSuccessUrl("/hello");
        // 未授权界面;
        shiroFilterFactoryBean.setUnauthorizedUrl("/unauthorization");
        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainDefinitionMap);
        shiroFilterFactoryBean.setFilters(filter);
        return shiroFilterFactoryBean;
    }

    @Bean
    public SecurityManager securityManager() {
        DefaultWebSecurityManager securityManage = new DefaultWebSecurityManager();
        securityManage.setRealm(authRealm());
        securityManage.setCacheManager(ehCacheManager());
        return securityManage;
    }

    // 自定义实现relam
    @Bean
    public MyRealm authRealm() {
        MyRealm authRealm = new MyRealm();
        return authRealm;
    }

    /**
     * shiro缓存管理器;
     *
     * @return the eh cache manager
     */
    @Bean
    public EhCacheManager ehCacheManager() {
        System.out.println("ShiroConfiguration.getEhCacheManager()");
        EhCacheManager cacheManager = new EhCacheManager();
        cacheManager.setCacheManagerConfigFile("classpath:ehcache-shiro.xml");
        return cacheManager;

    }

    @Bean
    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(SecurityManager securityManager) {
        AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor = new AuthorizationAttributeSourceAdvisor();
        authorizationAttributeSourceAdvisor.setSecurityManager(securityManager);
        return authorizationAttributeSourceAdvisor;
    }

}
