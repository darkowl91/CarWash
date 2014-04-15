package com.wash.programm.security.util;

import java.util.HashSet;
import java.util.Set;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import com.wash.model.account.User;

public class SecurityUtil {

    public static void logInUser(User user) {
    	Set<GrantedAuthority> authorities = new HashSet<>();
    	authorities.add(new SimpleGrantedAuthority(user.getAuthority().getName()));
        Authentication authentication = new UsernamePasswordAuthenticationToken(user.getUsername(), null, authorities);
        SecurityContextHolder.getContext().setAuthentication(authentication);
    }
}