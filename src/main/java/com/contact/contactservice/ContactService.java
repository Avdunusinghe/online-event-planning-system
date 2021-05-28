package com.contact.contactservice;

import java.sql.SQLException;
import java.util.List;

import com.contact.model.Contact;

public interface ContactService {

	public boolean insertContact(String name, String email, String subject, String message);
	
	public boolean updateContact(String messageId, String name, String email, String subject, String message);
	
	public List<Contact> getContactDetails();
	
	public boolean deleteContact(String messageId) throws SQLException;
		
}
