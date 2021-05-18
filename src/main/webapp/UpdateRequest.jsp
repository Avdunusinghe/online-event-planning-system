<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Request </title>
<link href="./Plugins/node_modules/bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
<link rel="stylesheet" href="./Plugins/node_modules/toastr/build/toastr.css">
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/Request.css" rel="stylesheet">



<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<script src="./assets/js/Request.js" type="text/javascript"></script>
</head>
<body>

<% 
        String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String event = request.getParameter("event");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String description = request.getParameter("description");
		String venue = request.getParameter("venue");
		String address = request.getParameter("address");
		String capacity = request.getParameter("capacity");
		String attendance = request.getParameter("attendance");
		String facilities = request.getParameter("facilities");
		String pay = request.getParameter("pay");
		String budget = request.getParameter("budget");
		String tickets = request.getParameter("tickets");
		%>
    
  <section class="form my-4 mx-5">
<div class="testbox">
      <form  name = "form1" action="RequestUpdateServlet" method = "post"  >
        <div class="banner">
		<  width="100%" height = "100px">
          <h1>Event Request Update Form</h1>
        </div>
     
		 <div class="item">
          <p>Customer Name</p>
          <div class="name-item">
            <input type="text" name="name1"  value ="<%= name %>" />
          </div>
        </div>
		<div class="item">
          <p>Contact Email</p>
          <input type="text" name="email" size="30"  value ="<%= email %>">
          
        </div>
		  <div class="item">
          <p>Contact Number</p>
          <input type="text" name="number" value ="<%= phone %>">
        </div>
		 <div class="item">
          <p>Select the Event</p>
          <select name = "event"  value ="<%= event %>">
            <option value=""></option>
            <option value="1">*Please select*</option>
            <option value="2">Wedding</option>
            <option value="3">A speaker session</option>
            <option value="4">Networking Sessions</option>
            <option value="5">Seminar or half-day event</option>
			 <option value="6">Workshops</option>
            <option value="7">Award and Competitions</option>
            <option value="8">Festivals</option>
            <option value="9">Parties</option>
            <option value="10">Conferences</option>
			 <option value="11">Exhibition or trade show</option>
            <option value="12">ReUnion</option>
            <option value="13">Talent or Variety show</option>
            <option value="4">Networking Sessions</option>
            <option value="5">Seminar or half-day event</option>
          </select>
        </div>
        <div class="item">
          <p>Date of Event</p>
          <input type="date" name="date"   value ="<%= date%>">
          <i class="fas fa-calendar-alt"></i>
        </div>
        <div class="item">
          <p>Time of Event</p>
          <input type="time" name="time" value ="<%= time %>">
          <i class="fas fa-clock"></i>
        </div>
       
        <div class="item">
          <p>Description of Event</p>
          <textarea rows="3"  name="description" value ="<%= description %>"></textarea>
        </div>
		
        <div class="item">
          <p>Venue Name</p>
          <input type="text" name="venue"  value ="<%= venue%>">
        </div>
        <div class="item">
          <p>Venue Address</p>
         
          <textarea rows="3"  name="street"   value ="<%= address %>"></textarea>
        
        </div>
        <div class="item">
          <p>Venue Capacity </p>
          <input type="text" name="capacity"  value ="<%= capacity %>">
        </div>
        <div class="item">
          <p>Expected Attendance</p>
          <input type="text" name="attendance"  value ="<%= attendance %>">
        </div>
		  <div class="question">
          <p>Facilities you expect</p>
          <div class="question-answer" value ="<%= facilities %>">
            <div>
              <input type="checkbox" value="none" id="checkbox_1" name="contact"/>
              <label for="checkbox_1" class="checkbox"><span>Transporting</span></label>
            </div>
            <div>
              <input type="checkbox" value="none" id="checkbox_2" name="contact"/>
              <label for="checkbox_2" class="checkbox"><span>Catering</span></label>
            </div>
            <div>
              <input type="checkbox" value="none" id="checkbox_3" name="contact"/>
              <label for="checkbox_3" class="checkbox"><span>Decoration</span></label>
            </div>
			<div>
              <input type="checkbox" value="none" id="checkbox_4" name="contact"/>
              <label for="checkbox_4" class="checkbox"><span>Staff requirement</span></label>
            </div>
            <div>
              <input type="checkbox" value="none" id="checkbox_5" name="contact"/>
              <label for="checkbox_5" class="checkbox"><span>Music Bands/ DJs</span></label>
            </div>
            <div>
              <input type="checkbox" value="none" id="checkbox_6" name="contact"/>
              <label for="checkbox_6" class="checkbox"><span>Promotional banners </span></label>
            </div>
            <div>
              <input type="checkbox" value="none" id="checkbox_7" name="contact"/>
              <label for="checkbox_7" class="checkbox"><span>Photography</span></label>
            </div>
            </div>
        </div>
        <div class="item">
          <p>Select Payment method</p>
          <select name = "pay"  value ="<%= pay %>">
            <option value=""></option>
            <option value="1">*Please select*</option>
            <option value="2">Pre-payment</option>
            <option value="3">Post-payment</option>
			<option value="4">Advance and Post-payment</option>
            
          </select>
        </div>
        <div class="item">
          <p>Expected Budget Limit</p>
          <input type="text" name="budget"    value ="<%= budget %>">
        </div>
        
        <div class="question">
          <p>Will tickets issued?</p>
          <div class="question-answer"   value ="<%= tickets %>">
            <div>
              <input type="radio" value="none" id="radio_1" name="recorded" />
              <label for="radio_1" class="radio"><span>Yes</span></label>
            </div>
            <div>
              <input type="radio" value="none" id="radio_2" name="recorded" />
              <label for="radio_2" class="radio"><span>No</span></label>
            </div>
          </div>
        </div>
        <div class="btn-block">
          <button type="submit" href="">Update Event Request</button>
        </div>
      </form>
    </div>

</section>
        
</body>
</html>