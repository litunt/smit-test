package com.smit.library.config;

import lombok.AllArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import static javax.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;
import static org.springframework.http.MediaType.APPLICATION_JSON_VALUE;
import static org.springframework.security.config.http.SessionCreationPolicy.STATELESS;

@EnableWebSecurity
@AllArgsConstructor
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    PasswordEncoder passwordEncoder;

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.csrf().disable(); //todo
        http.cors();

        http.sessionManagement().sessionCreationPolicy(STATELESS);

        http.authorizeRequests().antMatchers("/", "/**", "/assets/**").permitAll();
        http.authorizeRequests().anyRequest().authenticated();
//        http.formLogin()
//                .loginPage("/login")
//                .successForwardUrl("/")
//                .successHandler((request, response, authentication) -> {
//                    if (authentication.isAuthenticated()) {
//                        response.setContentType(APPLICATION_JSON_VALUE);
//                        response.getOutputStream().println("{}");
//                    }
//                })
//                .failureHandler((request, response, exception) -> {
//                            response.setStatus(SC_UNAUTHORIZED);
//                            response.setContentType(APPLICATION_JSON_VALUE);
//                        }
//                )
//                .permitAll();

    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
                .passwordEncoder(passwordEncoder)
                .withUser("admin").password(passwordEncoder.encode("admin123")).roles("ROLE_ADMIN", "ROLE_REGULAR")
                .and()
                .withUser("regular").password(passwordEncoder.encode("regular123")).roles("ROLE_REGULAR");
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    public void configure(WebSecurity web) {
        web.ignoring().antMatchers("/books/report");
    }
}