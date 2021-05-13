package com.request.model;

public class Request {
	            private int requestId;
				private String name;
				private String email;
				private String phone;
				private String event;
				private String date;
				private String time;
				private String description;
				private String venue;
				private String address;
				private String capacity;
				private String attendance;
				private String facilities;
				private String payment;
				private String budget;
				private String tickets;
				private boolean status;
				public Request(int requestId, String name,  String email, String phone, String event,
						String date, String time, String description, String venue, String address, String capacity,
						String attendance, String facilities, String payment, String budget, String tickets,
						boolean status) {
					super();
					requestId = requestId;
					this.name = name;
					this.email = email;
					this.phone = phone;
					this.event = event;
					this.date = date;
					this.time = time;
					this.description = description;
					this.venue = venue;
					this.address = address;
					this.capacity = capacity;
					this.attendance = attendance;
					this.facilities = facilities;
					this.payment = payment;
					this.budget = budget;
					this.tickets = tickets;
					this.status = status;
				}
				public int getRequestId() {
					return requestId;
				}
				public void setRequestId(int requestId) {
					requestId = requestId;
				}
				public String getName() {
					return name;
				}
				public void setName(String name) {
					this.name = name;
				}
				public String getEmail() {
					return email;
				}
				public void setEmail(String email) {
					this.email = email;
				}
				public String getPhone() {
					return phone;
				}
				public void setPhone(String phone) {
					this.phone = phone;
				}
				public String getEvent() {
					return event;
				}
				public void setEvent(String event) {
					this.event = event;
				}
				public String getDate() {
					return date;
				}
				public void setDate(String date) {
					this.date = date;
				}
				public String getTime() {
					return time;
				}
				public void setTime(String time) {
					this.time = time;
				}
				public String getDescription() {
					return description;
				}
				public void setDescription(String description) {
					this.description = description;
				}
				public String getVenue() {
					return venue;
				}
				public void setVenue(String venue) {
					this.venue = venue;
				}
				public String getAddress() {
					return address;
				}
				public void setAddress(String address) {
					this.address = address;
				}
				public String getCapacity() {
					return capacity;
				}
				public void setCapacity(String capacity) {
					this.capacity = capacity;
				}
				public String getAttendance() {
					return attendance;
				}
				public void setAttendance(String attendance) {
					this.attendance = attendance;
				}
				public String getFacilities() {
					return facilities;
				}
				public void setFacilities(String facilities) {
					this.facilities = facilities;
				}
				public String getPayment() {
					return payment;
				}
				public void setPayment(String payment) {
					this.payment = payment;
				}
				public String getBudget() {
					return budget;
				}
				public void setBudget(String budget) {
					this.budget = budget;
				}
				public String getTickets() {
					return tickets;
				}
				public void setTickets(String tickets) {
					this.tickets = tickets;
				}
				public boolean isStatus() {
					return status;
				}
				public void setStatus(boolean status) {
					this.status = status;
				}

				
}