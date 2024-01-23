package com.java5.asm.model.service;

import java.util.HashMap;
import java.util.Map;

import com.java5.asm.model.Account;

public class LoginService {
	public static Map<String, Account> account = new HashMap<>();
	static {
		account.put("lentmps26907@fpr.edu.vn", new Account("lentmps26907@fpr.edu.vn","210703","0925684669","Hoc Mon","Le","Nguyen","lenguyen2107",1,null,true));
	}
}
