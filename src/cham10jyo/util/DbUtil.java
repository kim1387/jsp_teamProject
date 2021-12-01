package cham10jyo.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DbUtil {
	private static final Connection connection = initailizeConnection();

	public static Connection initailizeConnection() {
	    Connection result = null;

        try {
            Properties prop = new Properties();
            //TODO yml 로 변경
            InputStream inputStream = DbUtil.class.getClassLoader().getResourceAsStream("/cham10jyo/util/db.properties");
            prop.load(inputStream);
            String driver = prop.getProperty("driver");
            String url = prop.getProperty("url");
            String user = prop.getProperty("user");
            String password = prop.getProperty("password");
            Class.forName(driver);
            result = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException | IOException e) {
            e.printStackTrace();
        }

        return result;
	}

    public static Connection getConnection(){ // 싱글톤 적용
//        if (connection == null) {
//            throw new IllegalStateException("connection is initialized with not null condition but current connection is null");
//        }

	    return connection;
    }
}
