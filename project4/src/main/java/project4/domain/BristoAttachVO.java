package project4.domain;


import lombok.Data;

@Data
public class BristoAttachVO {
	private String fileName;
	private String uploadPath;
	private String uuid;
	private boolean image;
	
	private int bristokey;
}
