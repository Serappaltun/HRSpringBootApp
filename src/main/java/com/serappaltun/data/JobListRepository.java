package com.serappaltun.data;

import org.springframework.data.jpa.repository.JpaRepository;

import com.serappaltun.model.Job;

public interface JobListRepository extends JpaRepository<Job, Long> {

}
