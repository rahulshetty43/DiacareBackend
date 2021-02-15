package com.diacare.consultation.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.diacare.consultation.model.ConsultationDetails;

public interface ConsultationRepository extends JpaRepository<ConsultationDetails, Long>{

}
