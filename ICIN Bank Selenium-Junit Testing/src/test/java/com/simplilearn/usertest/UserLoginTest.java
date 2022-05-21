package com.simplilearn.usertest;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class UserLoginTest {
	String siteurl =  "http://localhost:8080/login123/";
	String driverpath = "driver/windows/chromedriver.exe";
	WebDriver driver;
	
	
	@BeforeEach
	void setup() {
		System.setProperty("webdriver.chrome.driver", driverpath);
		driver = new ChromeDriver();
		driver.get(siteurl);
		
	}
	
	@AfterEach
	void teardown() {
		driver.close();
	}
	
	@Test
	@DisplayName("ICIN Bank User Test :  Source URl")
	void testFlipkartHomeSourceUrl() {
		assertEquals(siteurl, driver.getCurrentUrl());
	}	
	
	@Test
	@DisplayName(value = "ICIN Bank User Test : Title")
	void testHomeTilt() {
		String Excepted = "Login Page";
		String Actual = driver.getTitle();
		assertEquals(Excepted, Actual);
		
	}
	
	@Test
	@DisplayName("ICIN Bank User Test :  Login Test")
	void validLogin() {
			WebElement searchbox = driver.findElement(By.cssSelector("body > form:nth-child(1) > div > input[type=text]:nth-child(4)"));
			searchbox.sendKeys("John");
			WebElement searchbox1 = driver.findElement(By.cssSelector("body > form:nth-child(1) > div > input[type=password]:nth-child(6)"));
			searchbox1.sendKeys("1234");
			searchbox.submit();
			
			String Excepted = "Home";
			String Actual = driver.getTitle();
			assertEquals(Excepted, Actual);
			
	}
	
	@Test
	@DisplayName("ICIN Bank User Test : Invalid Login Test")
	void invalidLogin() {
			WebElement searchbox = driver.findElement(By.cssSelector("body > form:nth-child(1) > div > input[type=text]:nth-child(4)"));
			searchbox.sendKeys("John");
			WebElement searchbox1 = driver.findElement(By.cssSelector("body > form:nth-child(1) > div > input[type=password]:nth-child(6)"));
			searchbox1.sendKeys("12345");
			searchbox.submit();
			
			String Excepted = "Login Page";
			String Actual = driver.getTitle();
			assertEquals(Excepted, Actual);
			
	}
}

