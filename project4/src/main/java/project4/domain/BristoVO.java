package project4.domain;


import org.springframework.web.multipart.MultipartFile;
import lombok.Data;

@Data
public class BristoVO {
	private int bristokey;
	private int bustypekey;
	private String name;
	private String menu;
	private int price;
	private String loc;
	private String parking;
	private String eatalone;
	private String babychair;
	private String carryout;
	private String delivery;
	private String explain;
	private MultipartFile[] report;
	
}
