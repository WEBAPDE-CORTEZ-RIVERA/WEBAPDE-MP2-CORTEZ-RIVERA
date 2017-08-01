package model;

public class Tag {
	private Photo photo;
	private String tag;
	
	public Tag(Photo photo, String tag) {
		this.photo = photo;
		this.tag = tag;
	}

	public Photo getPhoto() {
		return photo;
	}

	public void setPhoto(Photo photo) {
		this.photo = photo;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}
}
