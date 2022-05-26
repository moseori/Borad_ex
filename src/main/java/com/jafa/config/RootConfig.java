package com.jafa.config;

import javax.sql.DataSource;

import org.springframework.context.annotation.Configuration;

@Configuration
public class RootConfig {
	public DataSource dataSource() {
		return null;
	}

}
