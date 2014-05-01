package com.wash.model.picture;

import org.springframework.web.multipart.MultipartFile;

import com.wash.validation.annotation.MultipartFileSize;

public class UploadPicture {

	private MultipartFile picture;

	@MultipartFileSize(maxSize = 1024)
	public MultipartFile getPicture() {
		return picture;
	}

	public void setPicture(MultipartFile picture) {
		this.picture = picture;
	}	
}
