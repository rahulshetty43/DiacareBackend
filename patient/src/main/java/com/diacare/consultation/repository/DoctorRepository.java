package com.diacare.consultation.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.diacare.consultation.model.DoctorDetails;

public interface DoctorRepository extends JpaRepository<DoctorDetails, Long>{

}
