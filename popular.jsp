<jsp:include page="header.jsp" />  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<title>Popular Destinations</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/popularpage.css"/>

		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


		<script>
			var active_div="default";
			$(document).ready(function(){
    			$(".destinations_default_div").show();
					$(".monuments_div").hide();
					$(".nature_div").hide();
					$(".entertainment_div").hide();
					$(".restaurants_div").hide();
					$(".destinations_default_sub_div").effect( "bounce", {times:3}, 700 );


					$("#monuments_link").click(function(){
						if(active_div=="default")
						{
							$(".destinations_default_div").hide("explode", {pieces: 64 }, 800 ,function() {
									$(".monuments_div").show("slide", { direction: "left" }, 500);	} );
						}
						if(active_div=="nature")
						{
							document.getElementById( 'destinations_menu_nature' ).style.backgroundColor="#CD5C5C";
							$(".nature_div").hide("explode", {pieces: 64 }, 800 ,function() {
									$(".monuments_div").show("slide", { direction: "left" }, 500);	} );
						}
						if(active_div=="entertainment")
						{
							document.getElementById( 'destinations_menu_entertainment' ).style.backgroundColor="#CD5C5C";
							$(".entertainment_div").hide("explode", {pieces: 64 }, 800 ,function() {
									$(".monuments_div").show("slide", { direction: "left" }, 500);	} );
						}
						if(active_div=="restaurants")
						{
							document.getElementById( 'destinations_menu_restaurants' ).style.backgroundColor="#CD5C5C";
							$(".restaurants_div").hide("explode", {pieces: 64 }, 800 ,function() {
									$(".monuments_div").show("slide", { direction: "left" }, 500);	} );
						}
						active_div="monuments";
						document.getElementById( 'destinations_menu_monuments' ).style.backgroundColor="#34495E";
						document.getElementById( 'destinations_list_id' ).style.height="1400px";
        	});

					$("#nature_link").click(function(){
						if(active_div=="default")
						{
							$(".destinations_default_div").hide("explode", {pieces: 64 }, 800 ,function() {
									$(".nature_div").show("slide", { direction: "left" }, 500);	} );
						}
						if(active_div=="monuments")
						{
							document.getElementById( 'destinations_menu_monuments' ).style.backgroundColor="#CD5C5C";
							$(".monuments_div").hide("explode", {pieces: 64 }, 800 ,function() {
									$(".nature_div").show("slide", { direction: "left" }, 500);	} );
						}
						if(active_div=="entertainment")
						{
							document.getElementById( 'destinations_menu_entertainment' ).style.backgroundColor="#CD5C5C";
							$(".entertainment_div").hide("explode", {pieces: 64 }, 800 ,function() {
									$(".nature_div").show("slide", { direction: "left" }, 500);	} );
						}
						if(active_div=="restaurants")
						{
							document.getElementById( 'destinations_menu_restaurants' ).style.backgroundColor="#CD5C5C";
							$(".restaurants_div").hide("explode", {pieces: 64 }, 800 ,function() {
									$(".nature_div").show("slide", { direction: "left" }, 500);	} );
						}
						active_div="nature";
						document.getElementById( 'destinations_menu_nature' ).style.backgroundColor="#34495E";
						document.getElementById( 'destinations_list_id' ).style.height="1070px";
    			});

					$("#entertainment_link").click(function(){
						if(active_div=="default")
						{
							$(".destinations_default_div").hide("explode", {pieces: 64 }, 800 ,function() {
									$(".entertainment_div").show("slide", { direction: "left" }, 500);	} );
						}
						if(active_div=="monuments")
						{
							document.getElementById( 'destinations_menu_monuments' ).style.backgroundColor="#CD5C5C";
							$(".monuments_div").hide("explode", {pieces: 64 }, 800 ,function() {
									$(".entertainment_div").show("slide", { direction: "left" }, 500);	} );
						}
						if(active_div=="nature")
						{
							document.getElementById( 'destinations_menu_nature' ).style.backgroundColor="#CD5C5C";
							$(".nature_div").hide("explode", {pieces: 64 }, 800 ,function() {
									$(".entertainment_div").show("slide", { direction: "left" }, 500);	} );
						}
						if(active_div=="restaurants")
						{
							document.getElementById( 'destinations_menu_restaurants' ).style.backgroundColor="#CD5C5C";
							$(".restaurants_div").hide("explode", {pieces: 64 }, 800 ,function() {
									$(".entertainment_div").show("slide", { direction: "left" }, 500);	} );
						}
						active_div="entertainment";
						document.getElementById( 'destinations_menu_entertainment' ).style.backgroundColor="#34495E";
						document.getElementById( 'destinations_list_id' ).style.height="720px";
    			});

					$("#restaurants_link").click(function(){
						if(active_div=="default")
						{
							$(".destinations_default_div").hide("explode", {pieces: 64 }, 800 ,function() {
									$(".restaurants_div").show("slide", { direction: "left" }, 500);	} );
						}
						if(active_div=="monuments")
						{
							document.getElementById( 'destinations_menu_monuments' ).style.backgroundColor="#CD5C5C";
							$(".monuments_div").hide("explode", {pieces: 64 }, 800 ,function() {
									$(".restaurants_div").show("slide", { direction: "left" }, 500);	} );
						}
						if(active_div=="nature")
						{
							document.getElementById( 'destinations_menu_nature' ).style.backgroundColor="#CD5C5C";
							$(".nature_div").hide("explode", {pieces: 64 }, 800 ,function() {
									$(".restaurants_div").show("slide", { direction: "left" }, 500);	} );
						}
						if(active_div=="entertainment")
						{
							document.getElementById( 'destinations_menu_entertainment' ).style.backgroundColor="#CD5C5C";
							$(".entertainment_div").hide("explode", {pieces: 64 }, 800 ,function() {
									$(".restaurants_div").show("slide", { direction: "left" }, 500);	} );
						}
						active_div="restaurants";
						document.getElementById( 'destinations_menu_restaurants' ).style.backgroundColor="#34495E";
						document.getElementById( 'destinations_list_id' ).style.height="1400px";
    			});
				});
		</script>

	</head>

	<body>
		<div class="container">

			<div class="popular_heading_div" align="center">
				POPULAR TOURIST DESTINATIONS IN JAIPUR
			</div>

			<div class="destinations_menu_div">
				<div class="destinations_menu_item" id="destinations_menu_monuments" align="center">
					<a id="monuments_link" href="#" onclick="return false;">Monuments</a>
				</div>
				<div class="destinations_menu_item" id="destinations_menu_nature" align="center">
					<a id="nature_link" href="#" onclick="return false;">Nature & Art</a>
				</div>
				<div class="destinations_menu_item" id="destinations_menu_entertainment" align="center">
					<a id="entertainment_link" href="#" onclick="return false;">Entertainment</a>
				</div>
				<div class="destinations_menu_item" id="destinations_menu_restaurants" align="center">
					<a id="restaurants_link" href="#" onclick="return false;">Restaurants</a>
				</div>
			</div>

			<div class="destinations_list_div" id="destinations_list_id">
				<div class="destinations_default_div" align="center">
					<img class="default_image" src="images/jaipur1.jpg" />
				</div>

				<div class="monuments_div">
					<div class="monuments_sub_div">
						<div class="monuments_sub_div_image">
							<img class="monument_image" src="images/hawamahal1.jpg" />
						</div>
						<div class="monuments_sub_div_text" align="center">
							<a href="#">HAWA MAHAL</a>
						</div>
					</div>
					<div class="monuments_sub_div">
						<div class="monuments_sub_div_image">
							<img class="monument_image" src="images/city palace1.jpg" />
						</div>
						<div class="monuments_sub_div_text" align="center">
							<a href="#">CITY PALACE</a>
						</div>
					</div>
					<div class="monuments_sub_div">
						<div class="monuments_sub_div_image">
							<img class="monument_image" src="images/jalmahal3.jpg"/>
						</div>
						<div class="monuments_sub_div_text" align="center">
							<a href="#">JAL MAHAL</a>
						</div>
					</div>
					<div class="monuments_sub_div">
						<div class="monuments_sub_div_image">
							<img class="monument_image" src="images/amer fort.jpeg" />
						</div>
						<div class="monuments_sub_div_text" align="center">
							<a href="#">AMER FORT</a>
						</div>
					</div>
					<div class="monuments_sub_div">
						<div class="monuments_sub_div_image">
							<img class="monument_image" src="images/jantar mantar1.jpg" />
						</div>
						<div class="monuments_sub_div_text" align="center">
							<a href="#">JANTAR MANTAR</a>
						</div>
					</div>
					<div class="monuments_sub_div">
						<div class="monuments_sub_div_image">
							<img class="monument_image" src="images/nahargarh1.jpg"/>
						</div>
						<div class="monuments_sub_div_text" align="center">
							<a href="#">NAHARGARH FORT</a>
						</div>
					</div>
					<div class="monuments_sub_div">
						<div class="monuments_sub_div_image">
							<img class="monument_image" src="images/jaigarh.gif" />
						</div>
						<div class="monuments_sub_div_text" align="center">
							<a href="#">JAIGARH FORT</a>
						</div>
					</div>
					<div class="monuments_sub_div">
						<div class="monuments_sub_div_image">
							<img class="monument_image" src="images/statue circle.jpg"/>
						</div>
						<div class="monuments_sub_div_text" align="center">
							<a href="#">STATUE CIRCLE</a>
						</div>
					</div>	
					<div class="monuments_sub_div">
						<div class="monuments_sub_div_image">
							<img class="monument_image" src="images/sisodia rani ka bagh.jpg"/>
						</div>
						<div class="monuments_sub_div_text" align="center">
							<a href="#">SISODIA RANI KA BAGH</a>
						</div>
					</div>
					<div class="monuments_sub_div">
						<div class="monuments_sub_div_image">
							<img class="monument_image" src="images/gaitore.jpg" />
						</div>
						<div class="monuments_sub_div_text" align="center">
							<a href="#">GAITORE</a>
						</div>
					</div>
					<div class="monuments_sub_div">
						<div class="monuments_sub_div_image">
							<img class="monument_image" src="images/galtaji.jpg"/>
						</div>
						<div class="monuments_sub_div_text" align="center">
							<a href="#">GALTA JI TEMPLE</a>
						</div>
					</div>	
					<div class="monuments_sub_div">
						<div class="monuments_sub_div_image">
							<img class="monument_image" src="images/birla mandir2.jpg"/>
						</div>
						<div class="monuments_sub_div_text" align="center">
							<a href="#">BIRLA MANDIR</a>
						</div>
					</div>
				</div>

				<div class="nature_div">
					<div class="nature_sub_div">
						<div class="nature_sub_div_image">
							<img class="nature_image" src="images/birla auditorium.gif"/>
						</div>
						<div class="nature_sub_div_text" align="center">
							<a href="#">BIRLA AUDITORIUM</a>
						</div>
					</div>
					<div class="nature_sub_div">
						<div class="nature_sub_div_image">
							<img class="nature_image" src="images/jawahar kala kendra.jpg"/>
						</div>
						<div class="nature_sub_div_text" align="center">
							<a href="#">JAWAHAR KALA KENDRA</a>
						</div>
					</div>
					<div class="nature_sub_div">
						<div class="nature_sub_div_image">
							<img class="nature_image" src="images/albert hall museum.jpg"/>
						</div>
						<div class="nature_sub_div_text" align="center">
							<a href="#">ALBERT HALL MUSEUM</a>
						</div>
					</div>
					<div class="nature_sub_div">
						<div class="nature_sub_div_image">
							<img class="nature_image" src="images/science park.jpg"/>
						</div>
						<div class="nature_sub_div_text" align="center">
							<a href="#">SCIENCE PARK</a>
						</div>
					</div>
					<div class="nature_sub_div">
						<div class="nature_sub_div_image">
							<img class="nature_image" src="images/central park.jpg"/>
						</div>
						<div class="nature_sub_div_text" align="center">
							<a href="#">CENTRAL PARK</a>
						</div>
					</div>
					<div class="nature_sub_div">
						<div class="nature_sub_div_image">
							<img class="nature_image" src="images/zoo.jpg"/>
						</div>
						<div class="nature_sub_div_text" align="center">
							<a href="#">ZOO</a>
						</div>
					</div>
					<div class="nature_sub_div">
						<div class="nature_sub_div_image">
							<img class="nature_image" src="images/jawahar circle.jpg"/>
						</div>
						<div class="nature_sub_div_text" align="center">
							<a href="#">JAWAHAR CIRCLE</a>
						</div>
					</div>
					<div class="nature_sub_div">
						<div class="nature_sub_div_image">
							<img class="nature_image" src="images/smriti van.jpg"/>
						</div>
						<div class="nature_sub_div_text" align="center">
							<a href="#">SMRITI VAN</a>
						</div>
					</div>
					<div class="nature_sub_div">
						<div class="nature_sub_div_image">
							<img class="nature_image" src="images/kanak vrindawan.jpg"/>
						</div>
						<div class="nature_sub_div_text" align="center">
							<a href="#">KANAK VRINDAWAN</a>
						</div>
					</div>
				</div>

				<div class="entertainment_div">
					<div class="entertainment_sub_div">
						<div class="entertainment_sub_div_image">
							<img class="entertainment_image" src="images/wtp2.jpg"/>
						</div>
						<div class="entertainment_sub_div_text" align="center">
							<a href="#">WORLD TRADE PARK</a>
						</div>
					</div>
					<div class="entertainment_sub_div">
						<div class="entertainment_sub_div_image">
							<img class="entertainment_image" src="images/chokhi dhani.jpg"/>
						</div>
						<div class="entertainment_sub_div_text" align="center">
							<a href="#">CHOKHI DHANI</a>
						</div>
					</div>
					<div class="entertainment_sub_div">
						<div class="entertainment_sub_div_image">
							<img class="entertainment_image" src="images/bapu bazar.jpg"/>
						</div>
						<div class="entertainment_sub_div_text" align="center">
							<a href="#">BAPU BAZAR</a>
						</div>
					</div>
					<div class="entertainment_sub_div">
						<div class="entertainment_sub_div_image">
							<img class="entertainment_image" src="images/snow park1.jpg"/>
						</div>
						<div class="entertainment_sub_div_text" align="center">
							<a href="#">SNOW PARK</a>
						</div>
					</div>
					<div class="entertainment_sub_div">
						<div class="entertainment_sub_div_image">
							<img class="entertainment_image" src="images/triton.jpg"/>
						</div>
						<div class="entertainment_sub_div_text" align="center">
							<a href="#">TRITON</a>
						</div>
					</div>
					<div class="entertainment_sub_div">
						<div class="entertainment_sub_div_image">
							<img class="entertainment_image" src="images/mgf metropolitan.jpg"/>
						</div>
						<div class="entertainment_sub_div_text" align="center">
							<a href="#">MGF METROPOLITAN</a>
						</div>
					</div>
				</div>

				<div class="restaurants_div">
					<div class="restaurants_sub_div">
						<div class="restaurants_sub_div_image">
							<img class="restaurants_image" src="images/okra marriott.jpg" />
						</div>
						<div class="restaurants_sub_div_text" align="center">
							<a href="#">OKRA</a>
						</div>
					</div>
					<div class="restaurants_sub_div">
						<div class="restaurants_sub_div_image">
							<img class="restaurants_image" src="images/Baluchi the lalit.jpg" />
						</div>
						<div class="restaurants_sub_div_text" align="center">
							<a href="#">BALUCHI</a>
						</div>
					</div>					
					<div class="restaurants_sub_div">
						<div class="restaurants_sub_div_image">
							<img class="restaurants_image" src="images/pavilion ITC Rajputana.jpg" />
						</div>
						<div class="restaurants_sub_div_text" align="center">
							<a href="#">PAVILION</a>
						</div>
					</div>
					<div class="restaurants_sub_div">
						<div class="restaurants_sub_div_image">
							<img class="restaurants_image" src="images/Bar Palladio.jpg" />
						</div>
						<div class="restaurants_sub_div_text" align="center">
							<a href="#">PALLADIO</a>
						</div>
					</div>
					<div class="restaurants_sub_div">
						<div class="restaurants_sub_div_image">
							<img class="restaurants_image" src="images/1135 A.D..jpg"/>
						</div>
						<div class="restaurants_sub_div_text" align="center">
							<a href="#">1135 A.D.</a>
						</div>
					</div>
					<div class="restaurants_sub_div">
						<div class="restaurants_sub_div_image">
							<img class="restaurants_image" src="images/Dragon House Country Inn.jpg" />
						</div>
						<div class="restaurants_sub_div_text" align="center">
							<a href="#">DRAGON HOUSE</a>
						</div>
					</div>
					<div class="restaurants_sub_div">
						<div class="restaurants_sub_div_image">
							<img class="restaurants_image" src="images/giardino.jpg"/>
						</div>
						<div class="restaurants_sub_div_text" align="center">
							<a href="#">GIARDINO</a>
						</div>
					</div>
					<div class="restaurants_sub_div">
						<div class="restaurants_sub_div_image">
							<img class="restaurants_image" src="images/marble arch.jpg"/>
						</div>
						<div class="restaurants_sub_div_text" align="center">
							<a href="#">MARBLE ARCH</a>
						</div>
					</div>
					<div class="restaurants_sub_div">
						<div class="restaurants_sub_div_image">
							<img class="restaurants_image" src="images/the grand peacock.jpg"/>
						</div>
						<div class="restaurants_sub_div_text" align="center">
							<a href="#">THE GRAND PEACOCK</a>
						</div>
					</div>
					<div class="restaurants_sub_div">
						<div class="restaurants_sub_div_image">
							<img class="restaurants_image" src="images/skybeach.jpg"/>
						</div>
						<div class="restaurants_sub_div_text" align="center">
							<a href="#">SKYBEACH</a>
						</div>
					</div>
					<div class="restaurants_sub_div">
						<div class="restaurants_sub_div_image">
							<img class="restaurants_image" src="images/bae.jpg"/>
						</div>
						<div class="restaurants_sub_div_text" align="center">
							<a href="#">CAFE BAE</a>
						</div>
					</div>
					<div class="restaurants_sub_div">
						<div class="restaurants_sub_div_image">
							<img class="restaurants_image" src="images/the royal ship.jpg"/>
						</div>
						<div class="restaurants_sub_div_text" align="center">
							<a href="#">THE ROYAL SHIP</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
<jsp:include page="footer.jsp" />  
