package service;
import photosharing.servlet.*;

import model.User;
import model.Photo;
import model.Tag;


import java.util.ArrayList;
import java.util.Iterator;

public class PhotoService {
	private static ArrayList<User> usersAll;
	private static ArrayList<Photo> photosAll;
	
	private static ArrayList<Tag> tagsAll;
	
	private Controller controller;
	
	public PhotoService() {
		usersAll = new ArrayList<User>();
		photosAll = new ArrayList<Photo>();
		tagsAll = new ArrayList<Tag>();
		
		initializeDummyContent();
	}
	
	public void addUser(User u) {
		usersAll.add(u);
	}
	
	public static void addPhoto(Photo p) {
		photosAll.add(p);
	}
	
	public void addTag(Tag t) {
		tagsAll.add(t);
	}
	
	public static User getUser(int id) {
		
		for(int i=0; i<usersAll.size(); i++){
			if(usersAll.get(i).getId() == id)
				return usersAll.get(i);
		}
		
		return null;
		
	}
	
	public static Photo getPhoto(int id) {
		for(int i=0; i<photosAll.size(); i++){
			if(photosAll.get(i).getId() == id)
				return photosAll.get(i);
		}
		
		return null;
	}
	
	public static Tag getTag(int index) {
		return tagsAll.get(index);
	}
	
	public static Iterator<Photo> getAllPhotosTag(String tag) {
		ArrayList<Photo> taggedTemp = new ArrayList<Photo>();
		
		for(int i = 0; i < photosAll.size(); i++) {
			for(int j = 0; j < photosAll.get(i).getTagCnt(); j++) {
				if(photosAll.get(i).getTag(j).getTag().equals(tag)) {
					taggedTemp.add(photosAll.get(i));
					break; 
				}
			}
		}
		
		return taggedTemp.iterator();
	}
	
	public User getUser(String username) {
		for(int i = 0; i < usersAll.size(); i++) {
			if(usersAll.get(i).getUsername().equals(username))
				return usersAll.get(i);
		}
		
		return null;
	}
	
	public int getUserCnt() {
		return usersAll.size();
	}
	
	public int getPhotoCnt() {
		return photosAll.size();
	}
	
	public int getTagCnt() {
		return tagsAll.size();
	}
	
	public void logUser(int index) {
		usersAll.get(index).setSignedIn(true);
	}
	
	public static void sharePhoto(int userId, int photoId) {
		int usertemp = 0;
		int phototemp = 0;
		
		for (int i = 0; i< usersAll.size(); i++){
			if(usersAll.get(i).getId() == userId)
				usertemp = i;
		}
		for (int i = 0; i<photosAll.size(); i++){
			if(photosAll.get(i).getId() == photoId)
				phototemp = i;
		}
		
		usersAll.get(usertemp).addSharedPhoto(photosAll.get(phototemp));
		photosAll.get(phototemp).addUserAccess(usersAll.get(usertemp));
	}
	
	public static void addUTag(Photo p, String tag) {
		p.addTag(new Tag(p, tag));
	}
	
	public static ArrayList<User> getUsers(){
		return usersAll;
	}
	
	public static ArrayList<Photo> getPhotos(){
		return photosAll;
	}
	
	public static ArrayList<Tag> getTags(){
		return tagsAll;
	}
	public void initializeDummyContent() {
		// initialize users 
		Photo p;
		
		User user1 = new User(0, "admin", "1234", "I love school");
		usersAll.add(user1);
		User user2 = new User(1, "sophiarivera", "yayluigi", "idk");
		usersAll.add(user2);
		User user3 = new User(2, "louisecortez", "helloworld", "");
		usersAll.add(user3);
		
		for(int i = 0; i < 20; i++) {
			p = new Photo(i, "/media/dummyphoto.png", "Title", "description", user1); 
			user1.addPhoto(p);
		}	
		
//		for(int i = 0; i < usersAll.size(); i++) {
//			System.out.println(usersAll.get(i).toString());
//		}
		
		// initialize photos 
	}
}
