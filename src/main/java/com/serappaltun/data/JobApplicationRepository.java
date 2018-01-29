package com.serappaltun.data;

import org.springframework.data.jpa.repository.JpaRepository;

import com.serappaltun.model.GuestUser;

public interface JobApplicationRepository extends JpaRepository<GuestUser, Long> {

}
