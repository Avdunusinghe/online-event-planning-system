<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Requests</title>
<meta content="" name="description">
  <meta content="" name="keywords">
  
<link href="./Plugins/node_modules/bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
<link rel="stylesheet" href="./Plugins/node_modules/toastr/build/toastr.css">
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/Request.css" rel="stylesheet">



<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<script src="./assets/js/Request.js" type="text/javascript"></script>
<style>



</style>
</head>
<body>


   
  <section class="form my-4 mx-5">
<div class="testbox">
      <form  name = "form1" action="RequestInsertServlet" method = "POST"  onsubmit="notNull()">
        <div class="banner">
		<img  src="assets/img/wallevent.jpg"   width="100%" height = "200px">
          <h1>Event Request Form</h1>
        </div>
		 <div class="item">
          <p>Customer-Name</p>
            <input type="text" name="name" placeholder="Name" required/>
        </div>
		<div class="item">
          <p>Contact Email</p>
          <input type="text" name="email" size="30" placeholder="Someone@example.com"  
           required>
          
        </div>
		  <div class="item">
          <p>Contact Number</p>
          <input type="text" name="phone" required>
        </div>
		 <div class="item">
          <p>Select the Event</p>
          <select name = "event">
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
          <input type="date" name="date"    required>
          <i class="fas fa-calendar-alt"></i>
        </div>
        <div class="item">
          <p>Time of Event</p>
          <input type="time" name="time"  required>
          <i class="fas fa-clock"></i>
        </div>
        <div class="item">
          <p>Venue Name</p>
          <input type="text" name="venue"  placeholder="Venue" required>
        </div>
        <div class="item">
          <p>Venue Address</p>
         
          <textarea rows="3"  name="address"  placeholder="Street address" required></textarea>
        
        </div>
        
        <div class="item">
          <p>Expected Attendance</p>
          <input type="text" name="attendance" placeholder="Enter number of attendees" required>
        </div>
		  
        <div class="item">
          <p>Select Payment method</p>
          <select name = "pay">
            <option value=""></option>
            <option value="1">*Please select*</option>
            <option value="2">Pre-payment</option>
            <option value="3">Post-payment</option>
			<option value="4">Advance and Post-payment</option>
            
          </select>
        </div>
        <div class="item">
          <p>Expected Budget Limit</p>
          <input type="text" name="budget"   placeholder="Enter budget price" required>
        </div>
        
        <div class="question">
        <p>Will tickets issued?</p>
        <div class="question-answer">
          <div>
            <input type="radio" value="1" id="radio_1" name="tickets"/ checked required>
            <label for="radio_1" class="radio"><span>Yes</span></label>
          </div>
          <div>
            <input type="radio" value="2" id="radio_2" name="tickets"/>
            <label for="radio_2" class="radio"><span>No</span></label>
          </div>
        </div>
      </div>
        <div class="btn-block">
          <button type="submit" >Submit</button>
        </div>
      </form>
    </div>

</section>
        
 
    <br> <br> <br> <br> <br>

   <footer id="footer" style="bottom: 0; position: fixed; width: 100%;" >
   
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>TheEventer</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
        All the links in the footer should remain intact.
        You can delete the links only if you purchased the pro version.
        Licensing information: https://bootstrapmade.com/license/
        Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=TheEvent
      -->
        Designed by <a href=""> MLB_OOP_G259</a>
      </div>
    </div>
  </footer><!-- End  Footer -->

</body>

</html>