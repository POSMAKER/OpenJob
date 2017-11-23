package com.open.job.DTO;

public class Location {
	 // 지역 번호 
    private Integer locationno;
    // 지역 
    private String location;
    // 지역 
    private String sublocation;
    
    public String getSublocation() {
		return sublocation;
	}

	public void setSublocation(String sublocation) {
		this.sublocation = sublocation;
	}

	public Integer getLocationno() {
        return locationno;
    }

    public void setLocationno(Integer locationno) {
        this.locationno = locationno;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

}
