package cn.iie.ac.entity;

public class Track {
	private int id;
	private int personid;
	private String date;
	private String flight;
	private String source;
	private String destination;
	private String hotel;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPersonid() {
		return personid;
	}
	public void setPersonid(int personid) {
		this.personid = personid;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getFlight() {
		return flight;
	}
	public void setFlight(String flight) {
		this.flight = flight;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getHotel() {
		return hotel;
	}
	public void setHotel(String hotel) {
		this.hotel = hotel;
	}
	@Override
	public String toString() {
		return "Track [id=" + id + ", personid=" + personid + ", date=" + date
				+ ", flight=" + flight + ", source=" + source
				+ ", destination=" + destination + ", hotel=" + hotel + "]";
	}
	
	
}
