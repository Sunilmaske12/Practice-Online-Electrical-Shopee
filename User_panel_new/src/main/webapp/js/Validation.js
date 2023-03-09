
//=================Registration validation start===============
function validRegister(){
	flag=true;

		var name=$("#name").val();
		var mobile=$("#contact").val();
		var email=$("#email").val();
		var Address=$("#Address").val();
		var password=$("#pass").val();
		var confirm_password=$("#re_pass").val();
		var emailEXP=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var mobileEXP=/[0-9]{10}/;
		var passwordEXP=/[A-Z][a-z]*[0-9][a-z]*/;

		if(name=='' || name==undefined){
			$("#name_error").html("***Please enter name!!")
			flag=false;
		}
		if(mobile=='' || mobile==undefined){
			$("#mobile_error").html("***Please enter number !!")
			flag=false;
		} else if(mobileEXP.test(mobile)==false){
			flag=false;
		}
		if(email==''){
			$("#email_error").html("**Please enter email!!");
			flag=false;
		} else if(emailEXP.test(email)==false){
			flag=false;
		}

		if(Address=='' || Address==undefined){
			$("#address_error").html("Please enter Address!")
			flag=false;
		} 

		if(password=='' || password==undefined){
			$("#pass_error").html("Please enter password!!")
			flag=false;
		} else if(passwordEXP.test(password)==false || password.length<8){
			flag=false;
		}


		if(confirm_password=='' || confirm_password==undefined){
			$("#confirm_password_error").html("***Please confirm password!!")
			flag=false;
		 } else if(password!=confirm_password){
	 	flag=false;
		 }

	return flag;
}


 $(document).ready(function(){
  	$("#register-form").click(function(){

		var name=$("#name").val();
		var mobile=$("#contact").val();
		var email=$("#email").val();
		var Address=$("#Address").val();
		var password=$("#pass").val();
		var confirm_password=$("#re_pass").val();
		var emailEXP=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var mobileEXP=/[0-9]{10}/;
		var passwordEXP=/[A-Z][a-z]*[0-9][a-z]*/;

		
		if(mobile=='' || mobile==undefined){
			
		} else if(mobileEXP.test(mobile)==true){
			$("#mobile_error").html("**Valid**")
		} else{
            $("#mobile_error").html("***Mobile number should contain 10 digit only!!")		}
		if(email==''){
		} else if(emailEXP.test(email)==false){
			$("#email_error").html("**Invalid email! it should be like exapmle@gmail.com!!")
		}else{
			$("#email_error").html("**Valid**")
		}

		if(password=='' || password==undefined){
		} else if(passwordEXP.test(password)==false || password.length<8){
			$("#pass_error").html("***Invalid password! it should start with upper case alphabet contain minimum 1 numerical value and minimum length 8!!")
		} else{
			$("#pass_error").html("**Valid**")
		}


		if(confirm_password=='' || confirm_password==undefined){
		 } else if(password!=confirm_password){
				$("#confirm_password_error").html("***Password not match!!")
	 		 } else {
	 		 	$("#confirm_password_error").html("**Match**")
	 		 }
	});

});
//=================Registration validation end===============