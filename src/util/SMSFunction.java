package util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import util.ConnectDatabase;

public class SMSFunction {

	public static String sendSMS(String phoneNo, String msg,String email) {

		// Getting SMS number from Database
		/*
		 * ConnectDatabase cd = new ConnectDatabase(); Connection conn =
		 * cd.getConnection(); String query = "SELECT sms1 FROM gt_sms_table";
		 * try{ Statement stmt = conn.createStatement(); ResultSet rs =
		 * stmt.executeQuery(query); if(rs != null && rs.next()){ phoneNo =
		 * rs.getString("sms1"); } }catch(Exception e){}
		 */

		// Sending SMS
		String append = "";
		// phoneNo = "9886880612";
		String smsText = msg.replace(" ", "+");
		String email1 = email.replace(" ", "+");
		
		smsText="Your%20registration%20with%20PowerManager%20for%20the%20Energy%20Monitoring%20was%20successful.%20Your%20UserID="+email1+"%20Password="+smsText;
		//smsText = "24/7%20Test%20Login%20Password:+" + smsText;
		System.out.println(smsText);
		String smsURL = "http://www.unicel.in/SendSMS/sendmsg.php?uname=247%20Cust&pass=cus12&send=247Customer&dest=91"
				+ phoneNo + "&msg=" + smsText;

		try {
			URL sms = new URL(smsURL);
			BufferedReader bReader = new BufferedReader(new InputStreamReader(
					sms.openStream()));
			String inputData = null;
			while ((inputData = bReader.readLine()) != null) {
				append += inputData;
			}
			bReader.close();

		} catch (MalformedURLException mue) {
			mue.printStackTrace();
			System.out
					.println("SMS Sending Error MalformedURLException----------");
		} catch (IOException ioe) {
			ioe.printStackTrace();
			System.out.println("SMS Sending Error IOException----------");
		}
		return null;
	}

	public static void main(String[] args) {
		SMSFunction.sendSMS("", "hi sms to mys mobile","");
	}
}
