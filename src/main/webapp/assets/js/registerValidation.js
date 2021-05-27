$( document ).ready( function (){
  
    $("#registerForm").validate({
    rules:{
      name: "required",
      email:{
        required: true,
        email: true
      },
      phone: "required",
      password:{
        required: true,
        minlength: 8
      },
      confirmpassword:{
        required: true,
        equalTo : "#password"
      },
    },
    messages:{
      name: "Please enter Your First Name",
      email: "Please enter a valid email address",
      phone: "Please enter phone Number",
      password:{
        required: "Please Provide a Password",
        minlength: "Your Password must at least 8 Characters long"
      },
      confirmpassword:{
        required: "Please Provide a Confirm Password",
        equalTo: "Password Not Match"
      },
    },
    errorElement: "em",
  
            errorPlacement: function (error, element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight: function (element, errorClass, validClass) {
                $(element).addClass('is-invalid').addClass('has-success has-feedback');
            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).removeClass('is-invalid');
               
            }
  });
  });
 
  function validateNullValues(){

    //asign value 
    var userName = document.getElementById("name").value; 
    var userEmail = document.getElementById("email").value;
    var phoneNumber  = document.getElementById("phone").value;
    var UserPassword  = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmpassword").value;
    //check user name not null
    if(userName == null || userName =="" || 
       userEmail == null || userEmail == "" || 
       phoneNumber == null || phoneNumber == "" ||
       UserPassword == null || UserPassword == "" || 
       confirmPassword == null || confirmPassword == "" ){   

        toastr.warning('Please Fill Fields')

        
    }
    
}



//}
  /*(function ($) {
    $(document).ready(function () {
        jQuery.validator.setDefaults({
            highlight: function (element, errorClass, validClass) {
                if (element.type === "radio") {
                    this.findByName(element.name).addClass(errorClass).removeClass(validClass);
                } else {
                    $(element).closest('.form-group').removeClass('has-success has-feedback').addClass('has-error has-feedback');
                    $(element).closest('.form-group').find('i.fa').remove();
                    $(element).closest('.form-group').append('<i class="fa fa-exclamation fa-lg form-control-feedback"></i>');
                }
            },
            unhighlight: function (element, errorClass, validClass) {
                if (element.type === "radio") {
                    this.findByName(element.name).removeClass(errorClass).addClass(validClass);
                } else {
                    $(element).closest('.form-group').removeClass('has-error has-feedback').addClass('has-success has-feedback');
                    $(element).closest('.form-group').find('i.fa').remove();
                    $(element).closest('.form-group').append('<i class="fa fa-check fa-lg form-control-feedback"></i>');
                }
            }
        });

        $("form").validate({
            rules: {
                'name': {
                    required: true,
                    minlength: 5,
                    maxlength: 20
                },
                    'email': {
                    required: true,
                    email: true,
                    minlength: 5,
                    maxlength: 100
                },
                    'assword': {
                    required: true,
                    minlength: 6,
                    maxlength: 25
                },
                    'RepeatPassword': {
                    required: true,
                    minlength: 5,
                    maxlength: 25,
                    equalTo: "#password"
                }
            }
        });
    });
})(jQuery)*/