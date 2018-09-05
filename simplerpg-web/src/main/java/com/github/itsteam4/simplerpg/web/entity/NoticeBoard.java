package com.github.itsteam4.simplerpg.web.entity;

import org.springframework.stereotype.Component;

@Component
public class NoticeBoard {
	// private String n_password;
	private int n_seq;
	private String n_email;
	private String n_type;
	private String n_title;
	private String n_ip;
	private int n_ref;
	private int n_step;
	private int n_hit;
	private String n_date;
	private String n_content;

	public int getN_seq() {
		return n_seq;
	}

	public void setN_seq(int n_seq) {
		this.n_seq = n_seq;
	}

	public String getN_email() {
		return n_email;
	}

	public void setN_email(String n_email) {
		this.n_email = n_email;
	}

	public String getN_type() {
		return n_type;
	}

	public void setN_type(String n_type) {
		this.n_type = n_type;
	}

	public String getN_title() {
		return n_title;
	}

	public void setN_title(String n_title) {
		this.n_title = n_title;
	}

	public String getN_ip() {
		return n_ip;
	}

	public void setN_ip(String n_ip) {
		this.n_ip = n_ip;
	}

	public int getN_ref() {
		return n_ref;
	}

	public void setN_ref(int n_ref) {
		this.n_ref = n_ref;
	}

	public int getN_step() {
		return n_step;
	}

	public void setN_step(int n_step) {
		this.n_step = n_step;
	}

	public int getN_hit() {
		return n_hit;
	}

	public void setN_hit(int n_hit) {
		this.n_hit = n_hit;
	}

	public String getN_date() {
		return n_date;
	}

	public void setN_date(String n_date) {
		this.n_date = n_date;
	}

	public String getN_content() {
		return n_content;
	}

	public void setN_content(String n_content) {
		this.n_content = n_content;
	}

}
