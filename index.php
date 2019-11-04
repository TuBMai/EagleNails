<!DOCTYPE html>
 
  <?php include ('includes/header.php');
  require('includes/EagleNailsConnection.php');
  ?>
<div class="header">
<div class="mainpicture" style="max-width:800px">
  <img class="mainslides" src="picture/page1.jpg" style="height:360px;width:1300px;" alt="slide pictures">
  <img class="mainslides" src="picture/page2.jpg" style="height:360px;width:1300px;" alt="slide pictures">
  <img class="mainslides" src="picture/page3.jpg" style="height:360px;width:1300px;" alt="slide pictures">
  <div class="buttonDiv" style="height:360px;width:1300px;">
    <button class="switchButton action" onclick="currentDiv(1)" ></button>
    <button class="switchButton action" onclick="currentDiv(2)" ></button>
    <button class="switchButton action" onclick="currentDiv(3)"></button>
  </div>
</div>

<script>
var slideIndex = 1;
showDivs(slideIndex);
function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mainslides");
  var dots = document.getElementsByClassName("action");
  
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" bGrey", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " bGrey";
}
</script>
</div>  
 <div class="row">
  <div class="column left">
 <?php
  $q = "SELECT NewsTitle,NewsDescription,datePost,pictureLink from news LEFT JOIN picture ON NEWS.PictureID=picture.PictureID order by newsID DESC LIMIT 5 ";
$r = @mysqli_query($connection, $q); // Run the query.
while ($row = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
	echo '<div class="news">';
  echo '<h2>'.$row['NewsTitle'] .'</h2>';
  echo '<p class="transparent60">Date:'.$row['datePost'] .'.</p>';
  echo '<img src="'.$row['pictureLink'] .'" alt=" news picture">';
	echo $row['NewsDescription'];
	echo '</div>';
}
mysqli_free_result($r);
mysqli_close($connection);
  ?>
  </div>
  <div class="column right">
    <div id="profile" class="cell row zpadding" style="background-color: white;">
	<img class="column leftimg" src="picture/ben.jpg">
	<div class="column rightright" >
	<button class="button profile" id="firstprofile" type="button">View Profile</button><br> 
	 
	 <span style="text-align: right;">
	 Ben Mai
	 </span><br>
	 <span class="transparent60" style="text-align: right;">
	 Manager/Staff
	 </span>
	 <p>
	 My slogan is giving customers the best service!
	 </p>
	 
	</div>
	<!-- showing profile -->
	<div id="modalprofile" class="modal">
	<div class="modal-content">
    <span class="close">&times;</span>
	<img class="column leftimg" src="picture/ben.jpg">
	<div style="margin-left: 18%;">
	<p>Ben Mai</p>
    <p>This is all information of employee!</p> 
	</div>
	
	</div>
	</div>
	</div>
	<script>
	var modal = document.getElementById('modalprofile');
var btn = document.getElementById("firstprofile");
var span = document.getElementsByClassName("close")[0];
btn.onclick = function() {
    modal.style.display = "block";
}
span.onclick = function() {
    modal.style.display = "none";
}
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
} 
	</script>
	<!-- showing profile-end -->
	<div class="cell row zpadding" style="background-color: white;">
	<img class="column leftimg" src="picture/carter.jpg">
	<div class="column rightright" >
	<button class="button profile" type="button">View Profile</button><br> 
	<span style="text-align: right;">
	 Carter Le
	 </span><br>
	 <span class="transparent60" style="text-align: right;">
	 Manager/Staff
	 </span>
	 <p>
	 I can do any nails designs you want, Just give me idea!
	 </p>
	 
	</div>
	 
	</div>
	<div class="cell row zpadding" style="background-color: white;">
	<img class="column leftimg" src="picture/amy.jpg">
	<div class="column rightright" >
	<button class="button profile" type="button">View Profile</button><br> 
	<span style="text-align: right;">
	 Amy Tran
	 </span><br>
	 <span class="transparent60" style="text-align: right;">
	 Staff
	 </span>
	 <p>
	 I love doing nails, it is my passion!
	 </p>
	 
	</div>
	 
	</div>
		<div class="cell row zpadding" style="background-color: white;">
	<img class="column leftimg" src="picture/hah.jpg">
	<div class="column rightright" >
	<button class="button profile" type="button">View Profile</button><br> 
	<span style="text-align: right;">
	 Hah
	 </span><br>
	 <span class="transparent60" style="text-align: right;">
	Staff
	 </span>
	 <p>
	 I love doing nails, it is my passion!
	 </p>
	 
	</div>
	 
	</div>	<div class="cell row zpadding" style="background-color: white;">
	<img class="column leftimg" src="picture/heather.jpg">
	<div class="column rightright" >
	<button class="button profile" type="button">View Profile</button><br> 
	 <span style="text-align: right;">
	 Heather
	 </span><br>
	 <span class="transparent60" style="text-align: right;">
	 Staff
	 </span>
	 <p>
	 I love doing nails, it is my passion!
	 </p>
	 
	</div>
	 
	</div>
  </div>
<?php include ('includes/footer.php');?>
