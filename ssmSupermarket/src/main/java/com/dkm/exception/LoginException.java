package com.dkm.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code =  HttpStatus.NOT_FOUND, reason = "用户名或密码错误！")
public class LoginException extends RuntimeException {

}
