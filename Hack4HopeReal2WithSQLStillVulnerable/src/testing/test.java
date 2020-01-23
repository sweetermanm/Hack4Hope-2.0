/*package testing;

import static org.junit.jupiter.api.Assertions.*;
import static org.junit.Assert.*;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class test {

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	void testCorrectLogin() {
		String unTest = "krummenachere";
		String passTest = "myPass";
		int result = easy.call.authenticate(unTest, passTest);
		assertEquals(1, result);
	}
	@Test
	void testWrongPasswordLogin() {
		String unTest = "krummenachere";
		String passTest = "wrong";
		int result = easy.call.authenticate(unTest, passTest);
		assertEquals(2, result);
	}
	
	@Test
	void testWrongUsernameLogin() {
		String unTest = "";
		String passTest = "wrong";
		int result = easy.call.authenticate(unTest, passTest);
		assertEquals(0, result);
	}
}
*/