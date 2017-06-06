package cn.iie.ac.entity;

public class Person {
	
	private int id;
	private String name;
	private String chineseName;
	private String telephone;
	private String idcard;
	private String email;
	private String address;
	private String gender;
	private String age;
	private String birthday;
	private String birthplace;
	private String gov;
	private String zhiku;
	private String org;
	private String media;
	private String avatar;
	private String party;
	private String school;
	private String marriage;
	private String faith;
	private String threatDegree;
	

	
	
	public String getThreatDegree() {
		return threatDegree;
	}

	public void setThreatDegree(String threatDegree) {
		this.threatDegree = threatDegree;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getChineseName() {
		return chineseName;
	}

	public void setChineseName(String chineseName) {
		this.chineseName = chineseName;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getParty() {
		return party;
	}

	public void setParty(String party) {
		this.party = party;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getMarriage() {
		return marriage;
	}

	public void setMarriage(String marriage) {
		this.marriage = marriage;
	}

	public String getFaith() {
		return faith;
	}

	public void setFaith(String faith) {
		this.faith = faith;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getBirthplace() {
		return birthplace;
	}

	public void setBirthplace(String birthplace) {
		this.birthplace = birthplace;
	}

	public String getGov() {
		return gov;
	}

	public void setGov(String gov) {
		this.gov = gov;
	}

	public String getZhiku() {
		return zhiku;
	}

	public void setZhiku(String zhiku) {
		this.zhiku = zhiku;
	}

	public String getOrg() {
		return org;
	}

	public void setOrg(String org) {
		this.org = org;
	}

	public String getMedia() {
		return media;
	}

	public void setMedia(String media) {
		this.media = media;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	@Override
	public String toString() {
		return "Person [id=" + id + ", name=" + name + ", chineseName="
				+ chineseName + ", telephone=" + telephone + ", idcard="
				+ idcard + ", email=" + email + ", address=" + address
				+ ", gender=" + gender + ", age=" + age + ", birthplace="
				+ birthplace + ", gov=" + gov + ", zhiku=" + zhiku + ", org="
				+ org + ", media=" + media + ", avatar=" + avatar + ", party="
				+ party + ", school=" + school + ", marriage=" + marriage
				+ ", faith=" + faith + "]";
	}

	
	
}
