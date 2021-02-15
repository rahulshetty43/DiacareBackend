package com.diacare.consultation.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.diacare.consultation.model.PatientDetails;

public interface PatientRepository extends JpaRepository<PatientDetails, Long>{

}
