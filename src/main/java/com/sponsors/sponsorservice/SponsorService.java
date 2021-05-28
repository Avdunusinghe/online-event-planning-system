package com.sponsors.sponsorservice;

import java.util.List;

import com.sponsors.model.Sponsor;

public interface SponsorService {
	
	public boolean insertSponsor(String name, String email, String address, String phone);
	
	public List<Sponsor> getSponsors();
	
	public boolean updateSponsor(String sponsorId, String name, String email, String address, String phone);
	
	public boolean deleteSponsor(String sponsorId);
}
