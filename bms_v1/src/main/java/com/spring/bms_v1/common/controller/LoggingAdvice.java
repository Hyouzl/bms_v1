package com.spring.bms_v1.common.controller;

import java.util.Arrays;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggingAdvice {
	
	private static final Logger logger = LoggerFactory.getLogger(LoggingAdvice.class);

	/*
	@After("execution(* com.spring.bms_v1..*.*(..))")
	public void checkParameter(JoinPoint jp) {
		logger.info(jp.getSignature().getName() + " : args : " + Arrays.toString(jp.getArgs()));
	}
	*/

	/*
	@Around("execution(* com.spring.bms_v1..*.*(..))")
	public void timeLog(ProceedingJoinPoint pjp) throws Throwable {
		
		long startTime = System.currentTimeMillis();

		pjp.proceed(); 

		long endTime = System.currentTimeMillis();
		logger.info("[메서드 실행속도] " + pjp.getSignature().getName() + " : " + (endTime - startTime) + "초"); 
		
	}
	*/
	

}
