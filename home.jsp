<jsp:include page="header.jsp" />  


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<title>Homepage</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/homepage.css" />
		
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


		<script>
			$(document).ready(function(){
					$("#choose_location_link").click(function(){
						document.getElementById( 'choose_location_div' ).style.backgroundColor="#2C3E50";
						document.getElementById( 'choose_location_link' ).style.color="#FFFFFF";
						document.getElementById( 'choose_location_div' ).style.borderColor="#2C3E50";
						document.getElementById( 'plan_without_location_div' ).style.backgroundColor="#FFFFFF";
						document.getElementById( 'plan_without_location_link' ).style.color="#009999";
						document.getElementById( 'plan_without_location_div' ).style.borderColor="#FFFFFF";
					});
					$("#plan_without_location_link").click(function(){
						document.getElementById( 'plan_without_location_div' ).style.backgroundColor="#2C3E50";
						document.getElementById( 'plan_without_location_link' ).style.color="#FFFFFF";
						document.getElementById( 'plan_without_location_div' ).style.borderColor="#2C3E50";
						document.getElementById( 'choose_location_div' ).style.backgroundColor="#FFFFFF";
						document.getElementById( 'choose_location_link' ).style.color="#009999";
						document.getElementById( 'choose_location_div' ).style.borderColor="#FFFFFF";
					});
			});

		</script>
		
		<script type="text/javascript">
		
			var TxtType = function(el, toRotate, period) 
			{
				this.toRotate = toRotate;
				this.el = el;
				this.loopNum = 0;
				this.period = parseInt(period, 10) || 2000;
				this.txt = '';
				this.tick();
				this.isDeleting = false;
    		};

			TxtType.prototype.tick = function() 
			{
				var i = this.loopNum % this.toRotate.length;
				var fullTxt = this.toRotate[i];
		
				if (this.isDeleting) 
				{
					this.txt = fullTxt.substring(0, this.txt.length - 1);
				} 
				else 
				{
					this.txt = fullTxt.substring(0, this.txt.length + 1);
				}
        		this.el.innerHTML = '<span class="wrap">'+this.txt+'</span>';
        		var that = this;
        		var delta = 200 - Math.random() * 100;
		        if (this.isDeleting) 
				{ 
					delta /= 2; 
				}
        		if (!this.isDeleting && this.txt === fullTxt) 
				{
        			delta = this.period;
        			this.isDeleting = true;
        		} 
				else if (this.isDeleting && this.txt === '') 
				{
        			this.isDeleting = false;
        			this.loopNum++;
        			delta = 500;
        		}
        		setTimeout
				(
					function() 
					{
        				that.tick();
        			}, 
					delta
				);
    		};
    		window.onload = function() 
			{
				var elements = document.getElementsByClassName('typewrite');
				for (var i=0; i<elements.length; i++) 
				{
					var toRotate = elements[i].getAttribute('data-type');
					var period = elements[i].getAttribute('data-period');
					if (toRotate) 
					{
					  new TxtType(elements[i], JSON.parse(toRotate), period);
					}
				}
				var css = document.createElement("style");
				css.type = "text/css";
				css.innerHTML = ".typewrite > .wrap { border-right: 0.08em solid #FF7043;}";
				document.body.appendChild(css);
			
				var text = ["20", "5"];
				var text1 = [ "Destinations" , "Days"];
				var counter = 0;
				var elem = document.getElementById("change_blink_count");
				var elem1 = document.getElementById("change_blink_text");
				setInterval(change, 2000);
				function change() 
				{
					elem.innerHTML = text[counter];
					elem1.innerHTML = text1[counter];
					counter++;
					if( (counter >= text.length)) 
						{ counter = 0; }
				}
			};
			
		</script>
	</head>

	<body>
	
		<div class="container">
			<div class="first_image_div" align="center">
			
				<div class="blink_div" align="center">
					<div id="change_blink_count" class="blink_count_font"></div>
					<div id="change_blink_text" class="blink_text_font"></div>
				</div>
				<div class="typewriter_div" align="center">
					<h1>
						<a style="color:#FF7043; font-size:50px" href="" class="typewrite" data-period="2000" 
						data-type='[ "Visit the beautiful pink city!", "Plan your next trip!" ]'>
							<span class="wrap"></span>
						</a>
					</h1>
				</div>
				
				<div class="jal_mahal_main_div" align="left">
					<div class="jal_mahal_div">
						JAL MAHAL
					</div>
				</div>
				
			</div>
			
			<div class="blue_div" align="center">
				<div class="blue_first_div">
					
					<div class="monument_div">
						<div class="monument_image_div">
							<img class="monument_image" src="images/birla mandir.jpg" />						
						</div>
						<div class="monument_super_text_div">
							BIRLA MANDIR						
						</div>
						<div class="monument_sub_text_div">
							"Finest quality of white marble"						
						</div>
					</div>
					
					<div class="monument_div">
						<div class="monument_image_div">
							<img class="monument_image" src="images/jantar mantar.jpg" />						
						</div>
						<div class="monument_super_text_div">
							JANTAR MANTAR						
						</div>
						<div class="monument_sub_text_div">
							"Nineteen astronomical instruments"						
						</div>
					</div>
					
					<div class="monument_div">
						<div class="monument_image_div">
							<img class="monument_image" src="images/city palace.jpg" />						
						</div>
						<div class="monument_super_text_div">
							CITY PALACE						
						</div>
						<div class="monument_sub_text_div">
							"Palace of the Maharaja of Jaipur"						
						</div>
					</div>
					
				</div>
				
				<div class="blue_first_div">
					
					<div class="monument_div">
						<div class="monument_image_div">
							<img class="monument_image" src="images/choki dhani.jpg" />						
						</div>
						<div class="monument_super_text_div">
							CHOKHI DHANI						
						</div>
						<div class="monument_sub_text_div">
							"Ethnic Rajasthani food"					
						</div>
					</div>
					
					<div class="monument_div">
						<div class="monument_image_div">
							<img class="monument_image" src="images/wtp.jpg" />						
						</div>
						<div class="monument_super_text_div">
							WORLD TRADE PARK						
						</div>
						<div class="monument_sub_text_div">
							"Best shopping mall of Jaipur"						
						</div>
					</div>
					
					<div class="monument_div">
						<div class="monument_image_div">
							<img class="monument_image" src="images/nahargarh.jpg"/>						
						</div>
						<div class="monument_super_text_div">
							NAHARGARH FORT					
						</div>
						<div class="monument_sub_text_div">
							"Shooting location of Rang De Basanti"						
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="hawa_mahal_div" align="center">
				<div class="hawa_mahal_main_div" align="left">
					<div class="hawa_mahal_text_div">
						HAWA MAHAL
					</div>
				</div>
			</div>
			
                        
			
		</div>
			
	</body>
</html>

<jsp:include page="footer.jsp" />  
