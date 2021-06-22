package jp.co.aforce.bean;

import java.io.Serializable;

public class MemberBean implements Serializable {

	private String id;
	private String userName;
	private String password;
	private String address;
	private String msg;

	// 引数無しのデフォルトコンストラクタ
	public MemberBean() {

	}

	public String getMsg() {
		return msg;
	}

	public String getId() {
		return id;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

	public String getAddress() {
		return address;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

}