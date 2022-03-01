package project4.domain;


import lombok.Data;

@Data
public class BristoAttachVO {
	private String fileName;
	private String uploadPath;
	private String uuid;
	private boolean image;
	private int bristokey;
	
	public BristoAttachVO(String fileName, String uploadPath, String uuid, boolean image, int bristokey) {
		super();
		this.fileName = fileName;
		this.uploadPath = uploadPath;
		this.uuid = uuid;
		this.image = image;
		this.bristokey = bristokey;
	}

	public BristoAttachVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
