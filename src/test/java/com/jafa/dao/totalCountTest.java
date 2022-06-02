package com.jafa.dao;

import static org.junit.Assert.*;

import org.apache.catalina.mapper.Mapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jafa.config.RootConfig;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {RootConfig.class})
public class totalCountTest {
	
	@Autowired
	private BoardMapper mapper;

	@Test
	public void totalCountTest() {
	assertEquals(411, mapper.totalCount());
	}

}
