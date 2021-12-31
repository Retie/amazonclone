package clone.amazon;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.jupiter.api.Test;

public class DBTest {
	@Test
	public void test() throws Exception {
		Class.forName("org.mariadb.jdbc.Driver"); // 마리아DB
		// Class.forName("com.mysql.jdbc.Driver")

		Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/amazon", "root", "oraclejava"); // 마리아
																													// DB

		System.out.println(con);
	}
}
