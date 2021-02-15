package com.diacare.consultation.model;

import java.sql.Time;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "doctor_schedule")
public class DoctorSchedule {
	private int dayOfWeek;// make it enum
	private Time startTime;
	private Time endTime;
	private Time breakStartTime;
	private Time breakEndTime;
	private int doctorId;
	
	public DoctorSchedule(int dayOfWeek, Time startTime, Time endTime, Time breakStartTime, Time breakEndTime,
			int doctorId) {
		super();
		this.dayOfWeek = dayOfWeek;
		this.startTime = startTime;
		this.endTime = endTime;
		this.breakStartTime = breakStartTime;
		this.breakEndTime = breakEndTime;
		this.doctorId = doctorId;
	}

	public int getDayOfWeek() {
		return dayOfWeek;
	}

	public void setDayOfWeek(int dayOfWeek) {
		this.dayOfWeek = dayOfWeek;
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

	public Time getBreakStartTime() {
		return breakStartTime;
	}

	public void setBreakStartTime(Time breakStartTime) {
		this.breakStartTime = breakStartTime;
	}

	public Time getBreakEndTime() {
		return breakEndTime;
	}

	public void setBreakEndTime(Time breakEndTime) {
		this.breakEndTime = breakEndTime;
	}

	public int getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}
	
}
