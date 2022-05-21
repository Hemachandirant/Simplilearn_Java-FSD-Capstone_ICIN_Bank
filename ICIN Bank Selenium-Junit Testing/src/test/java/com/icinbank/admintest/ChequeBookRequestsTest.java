package com.icinbank.admintest;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

class ChequeBookRequestsTest {
	
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
	@DisplayName("ICIN Bank Admin Test : Cheque Book Requests check")
	void testSearchProduct01() {
			WebElement searchbox = driver.findElement(By.xpath("/html/body/h1[2]/form/input[1]"));
			searchbox.sendKeys("siddhant");
			WebElement searchbox1 = driver.findElement(By.xpath("/html/body/h1[2]/form/input[2]"));
			searchbox1.sendKeys("kakkar");
			searchbox.submit();
			
			String Excepted = "Admin Portal";
			String Actual = driver.getTitle();
			assertEquals(Excepted, Actual);
			WebElement bestLink = driver.findElement(By.xpath("//*[@id=\"navbarSupportedContent\"]/ul/li[2]/a"));
			bestLink.click();
			String expected = "Cheque Requests";
			String actual = driver.getTitle();
			assertEquals(expected, actual);
	}
	

	}


