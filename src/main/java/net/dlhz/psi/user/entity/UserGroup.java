package net.dlhz.psi.user.entity;

import java.io.Serializable;

public class UserGroup implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5791537186344710459L;
	private int id;
	private String name;// 名称
	private String powers;// 权限字符串

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPowers() {
		return powers;
	}

	public void setPowers(String powers) {
		this.powers = powers;
	}

}