<jsp:include page="header.jsp" />  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<title>Planning form</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/planning_formpage.css" />	
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

		<script language="javascript" type="text/javascript">
			function validate()
				{
					var name=document.planning_form.name.value;
					var start_date=document.planning_form.start_date.value;
					var end_date=document.planning_form.end_date.value;
					var oneDay = 24*60*60*1000; // hours*minutes*seconds*milliseconds
					var str = start_date;
					var res = str.split("-");
					var str1 = end_date;
					var res1 = str1.split("-");
					var date1=res[2];
					var month1=res[1];
					var year1=res[0];
					var date2=res1[2];
					var month2=res1[1];
					var year2=res1[0];
					var firstDate = new Date(year1,month1,date1);
					var secondDate = new Date(year2,month2,date2);
					var diffDays = Math.round(Math.abs((firstDate.getTime() - secondDate.getTime())/(oneDay))) + 1;
					document.getElementById("hiddenField").value =diffDays;
                                        var days=document.planning_form.hidden_input.value;
				}			
		</script>
  
	</head>

	<body>
	
		<div class="container" align="center">
			
			<div class="green_div" id="green_main_div" align="center">
			
				<div class="green_book_div" id="green_book" align="center">
					<div class="plan_form_div">
						<form name="planning_form" action="planning_form_days.jsp" onsubmit="return validate()">
							<div class="main_field_div">
								<div class="field_div" align="center">Full Name</div>
								<input class="plan_form_input_box" name="name" type="text" placeholder="Enter your full name" />
							</div>
							<div class="main_field_div">
								<div class="field_div" align="center">Starting Date</div>
								<input class="plan_form_input_box" name="start_date" type="date" />
							</div>
							<div class="main_field_div">
								<div class="field_div" align="center">Ending Date</div>
								<input class="plan_form_input_box" name="end_date" type="date" />
							</div>
                                                        <input type="hidden" id="hiddenField" name="hidden_input"/>
							<input type="submit" value="Next" class="plan_form_submit" />
                                                </form>
					</div>
				</div>
			</div>			
		</div>

</body>
</html>

<jsp:include page="footer.jsp" />  
