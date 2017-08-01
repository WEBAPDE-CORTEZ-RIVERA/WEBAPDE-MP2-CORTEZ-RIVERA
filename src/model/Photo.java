package model;

import java.util.*;

public class Photo {
	private int id;
	private String fileName;
	private String title;
	private String description;
	private User uploader;
	
	private ArrayList<Tag> tags;
	private ArrayList<User> allowedAccess;
	
	private boolean isPrivate;
	
	public Photo(int id, String fileName, String title, String description, User uploader) {
		this.id = id;
		this.fileName = fileName;
		this.title = title;
		this.description = description;
		this.uploader = uploader;
		
		tags = new ArrayList<Tag>();
		allowedAccess = new ArrayList<User>();
		
		isPrivate = false; // default 
	}
	
	public Photo(int id, String fileName, String title, String description, User uploader, String view) {
		this.id = id;
		this.fileName = fileName;
		this.title = title;
		this.description = description;
		this.uploader = uploader;
		
		tags = new ArrayList<Tag>();
		allowedAccess = new ArrayList<User>();
		
		if (view.equalsIgnoreCase("public"))
			isPrivate = false; // default 
		else
			isPrivate = true;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public User getUploader() {
		return uploader;
	}

	public void setUploader(User uploader) {
		this.uploader = uploader;
	}

	public boolean isPrivate() {
		return isPrivate;
	}

	public void setPrivate(boolean isPrivate) {
		this.isPrivate = isPrivate;
	}
	
	public void addTag(Tag t) {
		tags.add(t);
	}
	
	public Tag getTag(int index) {
		return tags.get(index);
	}
	
	public void addUserAccess(User user) {
		allowedAccess.add(user);
	}
	
	public User getUserAccess(int index) {
		return allowedAccess.get(index);
	}
	
	public int getTagCnt() {
		return tags.size();
	}
}
