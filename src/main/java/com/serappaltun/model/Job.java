package com.serappaltun.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



@Entity
public class Job {
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	private long id;

	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	private String jobtitle;
	private String jobdescription;
	private int numberperson;
	private Date lastdate;

	public String getJobtitle() {
		return jobtitle;
	}

	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}

	public String getJobdescription() {
		return jobdescription;
	}

	public void setJobdescription(String jobdescription) {
		this.jobdescription = jobdescription;
	}

	public int getNumberperson() {
		return numberperson;
	}

	public void setNumberperson(int numberperson) {
		this.numberperson = numberperson;
	}

	public Date getLastdate() {
		return lastdate;
	}

	public void setLastdate(Date lastdate) {
		this.lastdate = lastdate;
	}
	
	public Job(){}

public Job(long id, String jobtitle, String jobdescription, int numberperson, Date lastdate) {
		super();
		this.id = id;
		this.jobtitle = jobtitle;
		this.jobdescription = jobdescription;
		this.numberperson = numberperson;
		this.lastdate = lastdate;
	}

@Override
	public String toString() {
		return "JobList [jobtitle=" + jobtitle + ", jobdescription=" + jobdescription + ",numberperson=" + numberperson +  ",lastdate=" + lastdate +"]";
	}


}
