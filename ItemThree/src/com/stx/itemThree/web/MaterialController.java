package com.stx.itemThree.web;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.stx.itemThree.model.Material;
import com.stx.itemThree.service.MaterialService;
import com.stx.itemThree.util.Constans;

@Controller
public class MaterialController {

	@Resource
	private MaterialService materialService;
	@Resource
	private HttpServletRequest request;
	/**
	 * 添加物资
	 * @param file
	 * @param material
	 * @return
	 */
	@RequestMapping(value="addMaterial.do", method = RequestMethod.POST)
	public String material(@RequestParam("file") MultipartFile file,Material material){
		//System.out.println("00");
		//处理上传文件
		if (file != null && !file.isEmpty()) {
			//构造文件存储的本地路径
			File dir = new File(request.getSession().getServletContext().getRealPath("/") +Constans.STORE_PATH);
			String fileName = file.getOriginalFilename();
			try {
				file.transferTo(new File(dir, fileName));
				System.out.println(file.getSize());
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			//判断上传文件的大小			
			material.setMat_url(Constans.STORE_PATH);
			material.setMat_imgname(fileName);
		}
		boolean a=materialService.addMaterial(material);
		if(a==true){
			request.setAttribute("msg", "添加成功");
		}else{
			request.setAttribute("msg", "添加失败");
		}
		return "test/stuOrgAddMat";
	}
	
}
