package project4.domain;

import java.sql.Date;

import lombok.Data;


@Data
public class CartVO {
	private int cartkey;
	private int cnt;
	private Date visitetime;
	private String visitetimeS;
	private String menu;
	private String message;
	private String phone;
	private String email;
	private int userkey;
	private int bristokey;
	
}
