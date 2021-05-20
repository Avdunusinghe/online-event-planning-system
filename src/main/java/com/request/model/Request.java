package com.request.model;

public class Request {
	            private int requestId;
				private String name;
				private String email;
				private String phone;
				private String event;
				private String date;
				private String time;
				private String venue;
				private String address;
				private String attendance;
				private String pay;
				private String budget;
				private String tickets;
				private boolean status;
				public Request(int requestId, String name,  String email, String phone, String event,
						String date, String time, String venue, String address, 
						String attendance,  String pay, String budget, String tickets,
						boolean status) {
					super();
					this.requestId = requestId;
					this.name = name;
					this.email = email;
					this.phone = phone;
					this.event = event;
					this.date = date;
					this.time = time;
					this.venue = venue;
					this.address = address;
					this.attendance = attendance;
					this.pay = pay;
					this.budget = budget;
					this.tickets = tickets;
					this.status = status;
				}
				
				
				public Request(int requestId, String name, String email, String phone, String event, String date,
						String time, String venue, String address, 
						String attendance, String pay, String budget, String tickets) {
					super();
					this.requestId = requestId;
					this.name = name;
					this.email = email;
					this.phone = phone;
					this.event = event;
					this.date = date;
					this.time = time;
					this.venue = venue;
					this.address = address;
					this.attendance = attendance;
					this.pay = pay;
					this.budget = budget;
					this.tickets = tickets;
				}




				public Request(int requestId, String name, String email, String phone, String event) {
					super();
					this.requestId = requestId;
					this.name = name;
					this.email = email;
					this.phone = phone;
					this.event = event;
				}


				public int getRequestId() {
					return requestId;
				}
				public void setRequestId(int requestId) {
					this.requestId = requestId;
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
				public String getAttendance() {
					return attendance;
				}
				public void setAttendance(String attendance) {
					this.attendance = attendance;
				}
				
				public String getPay() {
					return pay;
				}
				public void setPay(String pay) {
					this.pay = pay;
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