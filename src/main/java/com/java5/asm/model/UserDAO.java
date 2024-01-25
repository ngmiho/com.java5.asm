package com.java5.asm.model;

import java.util.ArrayList;
import java.util.List;

import com.java5.asm.model.Account.Role;

public class UserDAO {
	public List<Account> account = new ArrayList<>();
	public List<Account> getUser(){
//		account.add(new Account("lentmps26907@fpt.edu.vn", "210703", "0925684669", "Hoc Mon", "Le", "Nguyen", "lenguyen2107", 1,null, true));
		return account;
	}
}
