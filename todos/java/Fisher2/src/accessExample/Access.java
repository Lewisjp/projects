package accessExample;

class Access {
	public boolean isPublic;
	private boolean isPrivate;
	public void setIsPrivate (boolean newVal) {
		isPrivate = newVal;
	}
	public boolean getIsPrivate (){
		return isPrivate;
	}
}
