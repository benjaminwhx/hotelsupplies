package com.benjamin.common.interceptor;

import org.aspectj.lang.ProceedingJoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 * Created by benjamin on 16/6/19.
 */
@Component
public class LogAop {

    private Logger logger = LoggerFactory.getLogger(LogAop.class);

    public void before() {
    }

    public Object around(ProceedingJoinPoint joinPoint) throws Throwable {
        long start = System.currentTimeMillis();
        // 获得类名称
        String className = joinPoint.getTarget().getClass().getName();
        // 获得方法名称
        String methodName = joinPoint.getSignature().getName();
        Object obj = joinPoint.proceed();
        long end = System.currentTimeMillis();
        if (end - start > 100) {
            logger.info("------\t" + className + "." + methodName);
            logger.warn("timecost:处理时间(" + (end - start) + "ms):" + className + "." + methodName);
        }
        return obj;
    }
}
