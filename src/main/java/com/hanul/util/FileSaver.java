package com.hanul.util;



import java.io.File;
import java.util.UUID;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

public class FileSaver {
	public String saveFile(String realPath, MultipartFile multipartFile) throws Exception{
		String fileSystemName = "";
		
		File file = new File(realPath);
		if(!file.exists()) {
			file.mkdirs();
		}
		fileSystemName = UUID.randomUUID().toString();
		String oname = multipartFile.getOriginalFilename();
		oname=oname.substring(oname.lastIndexOf('.'));
		fileSystemName=fileSystemName+oname;
		file = new File(realPath, fileSystemName);
		
		FileCopyUtils.copy(multipartFile.getBytes(), file);
		
		return fileSystemName;
	}
}
