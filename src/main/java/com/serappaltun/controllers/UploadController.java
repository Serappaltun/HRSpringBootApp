package com.serappaltun.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.serappaltun.data.JobApplicationRepository;
import com.serappaltun.model.GuestUser;
import com.serappaltun.model.Job;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Controller
public class UploadController {
	JobApplicationRepository jobRepo;
	private static String UPLOAD_FOLDER = "uploads";

	@RequestMapping("/details")
	public ModelAndView showUpload() {
		GuestUser guest = new GuestUser();
		return new ModelAndView("details","form", guest);
	}

	@RequestMapping(value = "/details", method = RequestMethod.POST)
	public ModelAndView fileUpload(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) {

		if (file.isEmpty()) {
			return new ModelAndView("details", "message", "Please select a file and try again");
		}

		try {
			byte[] bytes = file.getBytes();
			Path path = Paths.get(UPLOAD_FOLDER + file.getOriginalFilename());
			Files.write(path, bytes);

		} catch (IOException e) {
			e.printStackTrace();
		}

		return new ModelAndView("details", "message", "File Uploaded sucessfully");
	}

}