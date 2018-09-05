package com.github.itsteam4.simplerpg.web.entity;

import org.springframework.stereotype.Component;

@Component
@Data
public class NoticeBoardPaging {
	private String find;
	private int startrow;
	private int endrow;

	public String getFind() {
		return find;
	}

	public void setFind(String find) {
		this.find = find;
	}

	public int getStartrow() {
		return startrow;
	}

	public void setStartrow(int startrow) {
		this.startrow = startrow;
	}

	public int getEndrow() {
		return endrow;
	}

	public void setEndrow(int endrow) {
		this.endrow = endrow;
	}

}
