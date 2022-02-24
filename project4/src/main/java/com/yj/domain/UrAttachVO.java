package com.yj.domain;

import lombok.Data;

@Data
public class UrAttachVO {
	private String uuid;
	private String uploadPath;
	private String fileName;
	private boolean fileType;

	private int urkey;

}
