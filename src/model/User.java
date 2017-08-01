package model;

import java.util.*;

public class User {
	private int id;
	private String username;
	private String password;
	private String description;
	private boolean isSignedIn;
	
	private ArrayList<Photo> photos;
	private ArrayList<Photo> accessedPhotos;
		
	public User(int id, String username, String password) {
		this.id = id;
		this.username = username;
		this.password = password;
		
		isSignedIn = false;
		
		photos = new ArrayList<Photo>();
		accessedPhotos = new ArrayList<Photo>();
	}
	
	public User(int id, String username, String password, String description) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.description = description;
		
		photos = new ArrayList<Photo>();
		accessedPhotos = new ArrayList<Photo>();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public void addPhoto(Photo p) {
		photos.add(p);
	}
	
	public Photo getPhoto(int id) {
		return photos.get(id);
	}
	
	public void addSharedPhoto(Photo p) {
		accessedPhotos.add(p);
	}
	
	public Photo getSharedPhoto(int id) {
		return accessedPhotos.get(id);
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setSignedIn(boolean isSignedIn) {
		this.isSignedIn = isSignedIn;
	}
	
	public boolean isSignedIn() {
		return isSignedIn;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", description=" + description
				+ ", photos=" + photos + "]";
	}
}
