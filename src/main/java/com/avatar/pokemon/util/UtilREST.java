package com.avatar.pokemon.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

import javax.net.ssl.HttpsURLConnection;

import sun.misc.BASE64Encoder;

public class UtilREST {

	public static String getREST(String uri){
				
		try {
			 URL url = new URL(uri);
			    URLConnection conn = url.openConnection();
			    // fake request coming from browser
			    conn.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-GB;     rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13 (.NET CLR 3.5.30729)");
			    BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			    String f = in.readLine();
			    in.close();
			    return f;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	public static String getREST(String uri,String user, String psw){
		
		try {
			URL url = new URL(uri);

			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			
			String aut=user+":"+psw;
			String autEnc = new BASE64Encoder().encode(aut.getBytes());
			System.out.println(aut);
			
			connection.setRequestProperty("Authorization", "Basic "+autEnc);

			connection.connect();
			
			return reader(connection);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	private static String reader(HttpURLConnection connection) throws Exception{
		int responseCode = connection.getResponseCode();

		System.out.println(" responseCode :"+responseCode);
		if(responseCode == 200){

    		System.out.println(" entreeee :");
			BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream(),"UTF-8"));
			String inputLine;
			StringBuffer response = new StringBuffer();

			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();
			
			return response.toString();
		}
		return null;
	}
	
	public static String postREST(String uri,String json) throws IOException {

		URL url = new URL(uri);
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		
		connection.setDoOutput(true);
		connection.setRequestMethod("POST");
		connection.setRequestProperty("Content-Type", "application/json");
	
		OutputStream os = connection.getOutputStream();
		
		os.write(json.getBytes());
		os.flush();

		if (connection.getResponseCode() != 200) {
			throw new RuntimeException("Error : HTTP error code : "	+ connection.getResponseCode() 
					+ " "+ connection.getResponseMessage());
		}

		BufferedReader br = new BufferedReader(new InputStreamReader((connection.getInputStream())));

		StringBuffer sb=new StringBuffer("");
	    String data="";
		while ((data = br.readLine()) != null) {
			sb.append(data);
		}
		connection.disconnect();
			
		return sb.toString();
	}
	
	
}
