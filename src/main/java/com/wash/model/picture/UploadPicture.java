package com.wash.model.picture;

import org.springframework.web.multipart.MultipartFile;

public class UploadPicture {
	
	private MultipartFile file;

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}
}
