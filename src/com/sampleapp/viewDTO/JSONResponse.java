package com.sampleapp.viewDTO;

import java.util.List;

public class JSONResponse {
	private List messageList;
	private Object id;
	private Object returnObject;
	private Object listObject;
	
	public Object getId() {
		return id;
	}

	public void setId(Object id) {
		this.id = id;
	}

	public Object getListObject() {
		return listObject;
	}

	public void setListObject(Object listObject) {
		this.listObject = listObject;
	}

	public Object getReturnObject() {
		return returnObject;
	}

	public void setReturnObject(Object returnObject) {
		this.returnObject = returnObject;
	}
	public List getMessageList() {
		return messageList;
	}

	public void setMessageList(List messageList) {
		this.messageList = messageList;
	}
	
	public Object getObject() {
		return object;
	}

	public void setObject(Object object) {
		this.object = object;
	}

	private Object object;
	

}
