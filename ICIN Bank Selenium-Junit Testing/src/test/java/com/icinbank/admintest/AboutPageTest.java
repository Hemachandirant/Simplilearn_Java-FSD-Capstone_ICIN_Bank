package com.icinbank.admintest;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class AboutPageTest {

	String siteurl = "http://localhost:8080/ICIN-BANK/";
	String driverpath = "driver/windows/chromedriver.exe";
	WebDriver driver;

	@BeforeEach
	void setUp() throws Exception {
		System.setProperty("webdriver.chrome.driver", driverpath);
		driver = new ChromeDriver();
		driver.get(siteurl);
		
	}

	@AfterEach
	void tearDown() throws Exception {
		driver.close();
	}

	@Test
	@DisplayName("ICIN Bank About Test : About Page Test")
	void testSearchProduct01() {
			WebElement searchbox = driver.findElement(By.xpath("/html/body/h1[2]/form/input[1]"));
			searchbox.sendKeys("admin");
			WebElement searchbox1 = driver.findElement(By.xpath("/html/body/h1[2]/form/input[2]"));
			searchbox1.sendKeys("admin@123");
			searchbox.submit();
			
			String Excepted = "Admin Portal";
			String Actual = driver.getTitle();
			assertEquals(Excepted, Actual);
			WebElement bestLink = driver.findElement(By.xpath("//*[@id=\"navbarSupportedContent\"]/ul/li[4]/a"));
			bestLink.click();
			String expected = "About us";
			String actual = driver.getTitle();
			assertEquals(expected, actual);
	}
	

	}



