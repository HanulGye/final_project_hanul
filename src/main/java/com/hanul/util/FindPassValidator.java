package com.hanul.util;


import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.hanul.member.MemberDTO;

public class FindPassValidator implements Validator {

	private Pattern pattern;
	private Matcher matcher;
	String regexp ="^[_a-z0-9-]+(.[_a-z0-9-]+)*@(?:\\w+\\.)+\\w+$";
	public FindPassValidator() throws Exception{
		pattern = pattern.compile(regexp);
	}
	
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		MemberDTO memberDTO = (MemberDTO)target;
		matcher = pattern.matcher(memberDTO.getId_member());
		if(memberDTO.getId_member()==null||memberDTO.getId_member().trim().isEmpty()) {
			errors.rejectValue("id_member", "EmailRequired");
		}else if(!matcher.matches()) {
			errors.rejectValue("id_member", "bad");
		}	
			
	}
	
}
