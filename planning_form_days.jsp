<jsp:include page="header.jsp" />  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%  
    try
    {
        int i=2;
        int j=1;
  %>           
    
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<title>Planning form</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/planning_form_dayspage.css" />	
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
                <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>

                <script type="text/javascript">
                   function initialize() {
                   var options = {
                    componentRestrictions: {country: "IN"}
                };
                    var input = document.getElementById('searchText');
                      var autocomplete = new google.maps.places.Autocomplete(input,options);
                   }
                   google.maps.event.addDomListener(window, 'load', initialize);
                </script>
		
		<script>
			$(document).ready(function(){
					$("#enter_start_location_div1").hide();
					$("#enter_end_location_div1").hide();
                                        $("#plan_without_location_link1").click(function(){
						document.getElementById( 'plan_without_location_div1' ).style.backgroundColor="#2C3E50";
						document.getElementById( 'plan_without_location_link1' ).style.color="#FFFFFF";
						document.getElementById( 'plan_without_location_div1' ).style.borderColor="#2C3E50";
                                                document.getElementById( 'plan_without_location_link1' ).style.textdecoration="none";
						$("#enter_start_location_div1").show();
					});
					$("#plan_without_end_location_link1").click(function(){
						document.getElementById( 'plan_without_end_location_div1' ).style.backgroundColor="#2C3E50";
						document.getElementById( 'plan_without_end_location_link1' ).style.color="#FFFFFF";
						document.getElementById( 'plan_without_end_location_div1' ).style.borderColor="#2C3E50";
						$("#enter_end_location_div1").show();
					});
                                       $("#enter_start_location_div2").hide();
					$("#enter_end_location_div2").hide();
                                        $("#plan_without_location_link2").click(function(){
						document.getElementById( 'plan_without_location_div2' ).style.backgroundColor="#2C3E50";
						document.getElementById( 'plan_without_location_link2' ).style.color="#FFFFFF";
						document.getElementById( 'plan_without_location_div2' ).style.borderColor="#2C3E50";
                                                document.getElementById( 'plan_without_location_link2' ).style.textdecoration="none";
						$("#enter_start_location_div2").show();
					});
					$("#plan_without_end_location_link2").click(function(){
						document.getElementById( 'plan_without_end_location_div2' ).style.backgroundColor="#2C3E50";
						document.getElementById( 'plan_without_end_location_link2' ).style.color="#FFFFFF";
						document.getElementById( 'plan_without_end_location_div2' ).style.borderColor="#2C3E50";
						$("#enter_end_location_div2").show();
					});
                                        $("#enter_start_location_div3").hide();
					$("#enter_end_location_div3").hide();
                                        $("#plan_without_location_link3").click(function(){
						document.getElementById( 'plan_without_location_div3' ).style.backgroundColor="#2C3E50";
						document.getElementById( 'plan_without_location_link3' ).style.color="#FFFFFF";
						document.getElementById( 'plan_without_location_div3' ).style.borderColor="#2C3E50";
                                                document.getElementById( 'plan_without_location_link3' ).style.textdecoration="none";
						$("#enter_start_location_div3").show();
					});
					$("#plan_without_end_location_link3").click(function(){
						document.getElementById( 'plan_without_end_location_div3' ).style.backgroundColor="#2C3E50";
						document.getElementById( 'plan_without_end_location_link3' ).style.color="#FFFFFF";
						document.getElementById( 'plan_without_end_location_div3' ).style.borderColor="#2C3E50";
						$("#enter_end_location_div3").show();
					});
                                        $("#enter_start_location_div4").hide();
					$("#enter_end_location_div4").hide();
                                        $("#plan_without_location_link4").click(function(){
						document.getElementById( 'plan_without_location_div4' ).style.backgroundColor="#2C3E50";
						document.getElementById( 'plan_without_location_link4' ).style.color="#FFFFFF";
						document.getElementById( 'plan_without_location_div4' ).style.borderColor="#2C3E50";
                                                document.getElementById( 'plan_without_location_link4' ).style.textdecoration="none";
						$("#enter_start_location_div4").show();
					});
					$("#plan_without_end_location_link4").click(function(){
						document.getElementById( 'plan_without_end_location_div4' ).style.backgroundColor="#2C3E50";
						document.getElementById( 'plan_without_end_location_link4' ).style.color="#FFFFFF";
						document.getElementById( 'plan_without_end_location_div4' ).style.borderColor="#2C3E50";
						$("#enter_end_location_div4").show();
					});
			});

		</script>
                
             
	</head>

	<body>
            <script>
                var geocoder ;
                var map;
                var start=new Array(4);
                var end=new Array(4);
                var k,l;
      function initMap() {
         map = new google.maps.Map(document.getElementById('map'), {
          zoom: 8,
          center: {lat: -34.397, lng: 150.644}
        });
      geocoder = new google.maps.Geocoder();
 
       
      }
      
      function get_start_loc(j)
      {
                    var start_loc;
                    if(j==1)
                    {
                        start_loc=document.planning_form_days.start_loc1.value;
                    }
                    else
                    {
                        start_loc=document.planning_form_days.start_loc2.value;
                    }
                    geocodeAddress(geocoder,start_loc,j,1);
                //   alert(start_loc);
                return false;
      }
    
       function get_end_loc(j)
      {
                    var end_loc;
                   
                    if(j==1)
                    {
                        start_loc=document.planning_form_days.end_loc1.value;
                    }
                    else
                    {
                        start_loc=document.planning_form_days.end_loc2.value;
                    }
                    geocodeAddress(geocoder,start_loc,j,2);
                //   alert(start_loc);
                return false;
      }

      function geocodeAddress(geocoder,address,j,a) {
       
        geocoder.geocode({'address': address}, function(results, status) {
          if (status === 'OK') {
              if(a==1)
              {    
                var location=results[0].geometry.location;
                if(j==1)
                {
                    document.getElementById("start_loc_hidden1").value = location;      
                }
                else
                {
                  document.getElementById("start_loc_hidden2").value = location;  
                }
              }
              if(a==2)
              {    
                var location=results[0].geometry.location;
                if( j==1 )
                {
                  document.getElementById("end_loc_hidden1").value = location;
                }
                else
                {
                  document.getElementById("end_loc_hidden2").value = location;  
                }
              }
          } 
          else {
            alert('Geocode was not successful for the following reason: ' + status);
          }
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key= AIzaSyCUQkthGhfephKMEmPNyH1k1afDG_pcQtY &callback=initMap">
    </script>
	<div id="map">
        </div>
		<div class="container">
			
			<div class="green_div" id="green_main_div" align="center">
                            <div class="green_book_div" id="green_book" align="left">
					<div class="plan_form_div">
						<form name="planning_form_days" action="after_planning_form_days.jsp" >
                                                   
                                                   <% while(i>0)
                                                        {
                                                    %>
                                                    
                                                    <div class="main_field_div">
								<div class="field_div" style="padding-top:20px; padding-left:20px; font-size:25px;text-decoration:underline; font-weight:bold;">
                                                                    Slot <% 
                                                                            out.print(j);
                                                                            String add=Integer.toString(j);
                                                                            String date="date"+add;
                                                                            String start_time="start_time"+add;
                                                                            String end_time="end_time"+add;
                                                                            String start_loc="start_loc"+add;
                                                                            String end_loc="end_loc"+add;
                                                                            String monuments="monuments"+add;
                                                                            String nature="nature"+add;
                                                                            String arts="arts"+add;
                                                                            String entertainment="entertainment"+add;
                                                                            String rating="rating"+add;
                                                                            String breakfast="breakfast"+add;
                                                                            String lunch="lunch"+add;
                                                                            String dinner="dinner"+add;
                                                                            String cafe="cafe"+add;
                                                                            String indian="indian"+add;
                                                                            String italian="italian"+add;
                                                                            String mexican="mexican"+add;
                                                                            String chinese="chinese"+add;
                                                                            String plan_without_end_location_link="plan_without_end_location_link"+add;
                                                                            String plan_without_start_location_link="plan_without_start_location_link"+add;
                                                                            String plan_without_end_location_div="plan_without_end_location_div"+add;
                                                                            String plan_without_start_location_div="pplan_without_start_location_div"+add;
                                                                            String plan_without_location_link="plan_without_location_link"+add;
                                                                            String plan_without_location_div="plan_without_location_div"+add;
                                                                            String enter_start_location_div="enter_start_location_div"+add;
                                                                            String enter_end_location_div="enter_end_location_div"+add;
                                                                            String start_loc_hide="start_loc_hide"+add;
                                                                            String start_loc_hidden="start_loc_hidden"+add;
                                                                            String end_loc_hide="end_loc_hide"+add;
                                                                            String end_loc_hidden="end_loc_hidden"+add;
                                                                        %>
                                                                </div>
							</div>
                                                        <div class="main_field_div">
								<div class="field_div" align="center">Day</div>
								<input class="plan_form_input_box" name=<%= date %>  />
							</div>
							<div class="main_field_div">
								<div class="field_div" align="center">Starting Time</div>
								<input class="plan_form_input_box" name=<%= start_time %> type="time" />
							</div>
							<div class="main_field_div">
								<div class="field_div" align="center">Ending Time</div>
								<input class="plan_form_input_box" name=<%= end_time %> type="time" />
							</div>
                                                        <div class="main_field_div" align="center">
                                                            <div class="plan_form_choose" id=<%= plan_without_location_div %> >
                                                                    <a href="#" onclick="return false;" id=<%= plan_without_location_link %> >Enter your starting location</a>
                                                            </div>
                                                           
                                                        </div>
							<div class="main_field_div" id=<%= enter_start_location_div %> >
								<div class="field_div" align="center">
                                                                    Starting location
                                                                </div>
								<input id="searchTextField" type="text" name=<%= start_loc %> class="plan_form_input_box" placeholder="Enter a location" autocomplete="on">
                                                                <div style="margin-top:5px; height:100%;">
                                                                    <input type="hidden" name=<%= start_loc_hide %>  id=<%= start_loc_hidden %> />
                                                                    <a style="color:#009999; font-size:18px; text-decoration:none;" href="#" onclick="return get_start_loc(<%= j %>)">Confirm</a> 
                                                                </div>
							</div>
                                                                <div class="main_field_div" align="center">
                                                            <div class="plan_form_choose" id=<%= plan_without_end_location_div %> >
                                                                    <a href="#" onclick="return false;" id=<%= plan_without_end_location_link %> >Enter your ending location</a>
                                                            </div>
                                                        </div> 
							<div class="main_field_div" id=<%= enter_end_location_div %> >
								<div class="field_div" align="center">Ending location</div>
                                                                <input id="searchTextField" type="text" name=<%= end_loc %> style="margin-bottom:40px" class="plan_form_input_box" placeholder="Enter a location" autocomplete="on">
                                                                <div style="margin-top:5px; height:100%;">
                                                                    <input type="hidden" name=<%= end_loc_hide %>  id=<%= end_loc_hidden %> />
                                                                    <a style="color:#009999; font-size:18px; text-decoration:none;" href="#" onclick="return get_end_loc(<%= j %>)">Confirm</a> 
                                                                </div>
							</div>
                                                        <div class="main_field_div">
                                                            <div class="place_type_div" style="width:20%;">
                                                               <div style="margin-right:10px; padding-top:3px; float:left;">Monuments</div>
                                                               <input type="checkbox" value=1 class="checkbox_div" name=<%= monuments %> />
                                                            </div>
                                                            <div class="place_type_div" style="width:14%;">
                                                               <div style="margin-right:10px; padding-top:3px; float:left;">Nature</div>
                                                               <input type="checkbox" value=1 class="checkbox_div" name=<%= nature %> />
                                                            </div>
                                                            <div class="place_type_div" style="width:23%;">
                                                               <div style="margin-right:10px; padding-top:3px; float:left;">Arts & Culture</div>
                                                               <input type="checkbox" value=1 class="checkbox_div" name=<%= arts %> />
                                                            </div>
                                                            <div class="place_type_div" style="width:23%;">
                                                               <div style="margin-right:10px; padding-top:3px; float:left;">Entertainment</div>
                                                               <input type="checkbox" value=1 class="checkbox_div" name=<%= entertainment %> />
                                                            </div>
                                                            <div class="place_type_div" style="width:18%;">
                                                               <div style="margin-right:10px; padding-top:3px; float:left;">High rated</div>
                                                               <input type="checkbox" value=1 class="checkbox_div" name=<%= rating %>/>
                                                            </div>
                                                        </div>
                                                      
                                                        <div class="main_field_div" style="padding-left:50px;">
                                                            <div class="meal_type_div">
                                                               <div style="margin-right:10px; padding-top:3px; float:left;">Cafe</div>
                                                               <input type="checkbox" value=1 class="checkbox_div" name=<%= cafe %> />
                                                            </div>
                                                            <div class="meal_type_div">
                                                               <div style="margin-right:10px; padding-top:3px; float:left;">Indian</div>
                                                               <input type="checkbox" value=1 class="checkbox_div" name=<%= indian %>/>
                                                            </div>
                                                            <div class="meal_type_div">
                                                               <div style="margin-right:10px; padding-top:3px; float:left;">Italian</div>
                                                               <input type="checkbox" value=1 class="checkbox_div" name=<%= italian %> />
                                                            </div>
                                                            <div class="meal_type_div">
                                                               <div style="margin-right:10px; padding-top:3px; float:left;">Mexican</div>
                                                               <input type="checkbox" value=1 class="checkbox_div" name=<%= mexican %> />
                                                            </div>
                                                            <div class="meal_type_div">
                                                               <div style="margin-right:10px; padding-top:3px; float:left;">Chinese</div>
                                                               <input type="checkbox" value=1 class="checkbox_div" name=<%= chinese %>/>
                                                            </div>
                                                        </div>
                                                        <% 
                                                            j++;
                                                            i--;
                                                            }
                                                        %>
							<input type="submit" id="submit" value="Submit" class="plan_form_submit" />
					</div>
				</div>
	
			</div>			
	
             </div>	

</body>
</html>
<%
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>
<jsp:include page="footer.jsp" />  
