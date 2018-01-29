package com.serappaltun.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.serappaltun.data.JobListRepository;
import com.serappaltun.model.Job;
import com.serappaltun.model.User;

@Controller
public class JobListController {

	@Autowired
	private JobListRepository JobListData;
	
	@RequestMapping(value ="/index", method = RequestMethod.GET)
	public String index()
	{
		return ("index");
	}
	
	@RequestMapping(value ="/", method = RequestMethod.GET)
	public String initial()
	{
		return ("index");
	}
	
	@RequestMapping(value ="/details", method = RequestMethod.GET)
	public String details()
	{
		return ("details");
	}
	
	
	@RequestMapping("/showDetails")
    public ModelAndView redirectWithUsingRedirectPrefix(Job job) {
		return new ModelAndView("redirect:/details","job", job);
    }

	
	@RequestMapping(value = "/addNewJob", method = RequestMethod.POST)
	public String newJob(Job job) {

		JobListData.save(job);
		return ("redirect:/listJobs");

	}

	@RequestMapping(value = "/addNewJob", method = RequestMethod.GET)
	public ModelAndView addNewJobList() {
		Job job = new Job();
		return new ModelAndView("newjob", "form", job);
	}

	@RequestMapping(value = "/listJobs", method = RequestMethod.GET)
	public ModelAndView joblists() {
		List<Job> allJobLists = JobListData.findAll();
		return new ModelAndView("allJobLists", "joblist", allJobLists);
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		
		User user = new User();
		mv.addObject("form", user);
		return mv;
	}
	
	
	@RequestMapping(value ="/login", method = RequestMethod.POST)
	public String doLogin(User user) { 

		if (user.getName().equals("admin") && user.getPassword().equals("123")) {
			return ("redirect:/listJobs");
		}
		else return "false";
	}
	
	@RequestMapping(value = "/deleteJob", method = RequestMethod.DELETE)
	 public void delete(long id) {
		JobListData.delete(id);
    }
	
	        
	        
	

}
