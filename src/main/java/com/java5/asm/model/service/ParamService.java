package com.java5.asm.model.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.RequestScope;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@SessionScope
@Service
public class ParamService {
	@Autowired
	HttpServletRequest request;
	@Autowired
	ServletContext app;
	
	/**
	* Đọc chuỗi giá trị của tham số
	* @param str tên tham số
	* @param defaultValue giá trị mặc định
	* @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
	*/
	public String getString(String name, String defaultValue) {
		String value = request.getParameter(name);
		return value != null ? value : defaultValue;
	}
	
	
	/**
	* Đọc số nguyên giá trị của tham số
	* @param str tên tham số
	* @param defaultValue giá trị mặc định
	* @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
	*/
	public int getInt(String name, int defaultValue) {
		String value = request.getParameter(name);
		if (value != null && value.matches("^\\d{7,11}$") == false)
			return Integer.parseInt(request.getParameter(value));
		else
			return defaultValue;
	}
	
	/**
	* Đọc số thực giá trị của tham số
	* @param str tên tham số
	* @param defaultValue giá trị mặc định
	* @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
	*/
	public double getDouble(String name, double defaultValue) {
		String value = request.getParameter(name);
		if (value != null && value.matches("^[-+]?\\d*\\.\\d+$"))
			return Double.parseDouble(value);
		else
			return defaultValue;
	}
	
	
	/**
	* Đọc giá trị boolean của tham số
	* @param str tên tham số
	* @param defaultValue giá trị mặc định
	* @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
	*/
	public boolean getBoolean(String name, boolean defaultValue){
		String value =  request.getParameter(name);
		if (value != null && (value.equalsIgnoreCase("true") || value.equalsIgnoreCase("0")))
			return true;
		else if (value != null && (value.equalsIgnoreCase("false") || value.equalsIgnoreCase("1")))
			return false;
		return defaultValue;
	}
	
	/**
	* Đọc giá trị thời gian của tham số
	* @param str tên tham số
	* @param pattern là định dạng thời gian
	* @return giá trị tham số hoặc null nếu không tồn tại
	* @throws RuntimeException lỗi sai định dạng
	*/
	public Date getDate(String name, String pattern){
		String value =  request.getParameter(name);
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		try {
			return value != null ? sdf.parse(value) : null;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
    }
	
	/**
	* Lưu file upload vào thư mục
	* @param file chứa file upload từ client
	* @param path đường dẫn tính từ webroot
	* @return đối tượng chứa file đã lưu hoặc null nếu không có file upload
	* @throws RuntimeException lỗi lưu file
	*/
	public File save(MultipartFile file, String path) {
		try {
			if (!file.isEmpty()) {
				File newFile = new File(app.getRealPath(("/" + path + "/" + file.getName())));
				if (!newFile.getParentFile().exists()) {
					newFile.mkdirs();
					file.transferTo(newFile);
				}
				return newFile;
			} else
				return null;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
