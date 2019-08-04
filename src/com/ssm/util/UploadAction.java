package com.ssm.util;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/upload")
public class UploadAction {

	@RequestMapping(value = "/image.action")
	public String upload(@RequestParam(value = "image", required = false) MultipartFile file,
			HttpServletRequest request, ModelMap model) {

		String path = request.getSession().getServletContext().getRealPath("upfiles");
		String fileName = file.getOriginalFilename();
		int i = fileName.lastIndexOf(".");
		
		String type = fileName.substring(i + 1);
		fileName =Math.random() + "." + type;
		File targetFile = new File(path, fileName);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}

		// 保存
		try {
			file.transferTo(targetFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("imageFileName", fileName);
		return "saveimage";
	}
}
