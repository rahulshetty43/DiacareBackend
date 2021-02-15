package com.diacare.consultation.model;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name = "consultation_details")
@EntityListeners(AuditingEntityListener.class)
public class ConsultationDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int consultationId;
	private ConsultationStatus consultationStatus = ConsultationStatus.Booked;
	@NotNull
	private Date consultationDate;
	@NotNull
	private Time startTime;
	private Time endTime;
	private double consultationFee;
	@NotNull
	private int patientId;
	@NotNull
	private int doctorId;
	@Column(name="created_at")
	@Temporal(TemporalType.TIMESTAMP)
    @CreatedDate
    private Timestamp createdAt ;
	
	public ConsultationDetails(int consultationId, ConsultationStatus consultationStatus, Date consultationDate,
			Time startTime, Time endTime, double consultationFee, int patientId, int doctorId) {
		super();
		this.consultationId = consultationId;
		this.consultationStatus = consultationStatus;
		this.consultationDate = consultationDate;
		this.startTime = startTime;
		this.endTime = endTime;
		this.consultationFee = consultationFee;
		this.patientId = patientId;
		this.doctorId = doctorId;
	}
	
	public Timestamp getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}

	public int getConsultationId() {
		return consultationId;
	}

	public void setConsultationId(int consultationId) {
		this.consultationId = consultationId;
	}

	public ConsultationStatus getConsultationStatus() {
		return consultationStatus;
	}

	public void setConsultationStatus(ConsultationStatus consultationStatus) {
		this.consultationStatus = consultationStatus;
	}

	public Date getConsultationDate() {
		return consultationDate;
	}

	public void setConsultationDate(Date consultationDate) {
		this.consultationDate = consultationDate;
	}

	public Time getStartTime() {
		return startTime;
	}

	public void setStartTime(Time startTime) {
		this.startTime = startTime;
	}

	public Time getEndTime() {
		return endTime;
	}

	public void setEndTime(Time endTime) {
		this.endTime = endTime;
	}

	public double getConsultationFee() {
		return consultationFee;
	}

	public void setConsultationFee(double consultationFee) {
		this.consultationFee = consultationFee;
	}

	public int getPatientId() {
		return patientId;
	}

	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}

	public int getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}
	
}
