<!DOCTYPE html>
<link rel="stylesheet" href="gallery.css">
<link rel="stylesheet" href="services.css">
<?php include ('includes/header.php');
require('includes/EagleNailsConnection.php');

?>
<div class="row">
<div class="tittle" id="manicure" >
<h3 class="servicetxt">Work Sharing</h3>
<div class="mainslides">
<?php
$display = 12;
if (isset($_GET['p']) && is_numeric($_GET['p'])) { // Already been determined.
	$pages = $_GET['p'];
} else { // Need to determine.
 	// Count the number of records:
	$q = "SELECT COUNT(postid) FROM post";
	$r = @mysqli_query($connection, $q);
	$row = @mysqli_fetch_array($r, MYSQLI_NUM);
	$records = $row[0];
	// Calculate the number of pages...
	if ($records > $display) { // More than 1 page.
		$pages = ceil ($records/$display);
	} else {
		$pages = 1;
	}
}
if (isset($_GET['s']) && is_numeric($_GET['s'])) {
	$start = $_GET['s'];
} else {
	$start = 0;
}
$q = "SELECT e.FirstName, pi.PictureLink,p.Description, p.postTitle FROM (post p left join employee e on (p.EmployeeID=e.EmployeeID)) left join picture pi on(p.PictureID=pi.PictureID) ORDER BY PostID DESC LIMIT $start, $display";
$r = @mysqli_query($connection, $q); // Run the query.
while ($row = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
	
	echo '<div class="galleryDsc">';
	echo '<a target="_blank" href="' . $row['PictureLink'] . '">';
	echo '<img src="' . $row['PictureLink'] . '" alt="regular manicure" width="350" height="200">';
	echo '</a>';
	echo '<div class="desc">';
	echo '<h3>' . $row['postTitle'] . '</h3>';
	echo '<p class="transparent60">Made by ' . $row['FirstName'] . '</p>';
	echo '<p style="text-align: initial !important;">' . $row['Description'] . '</p>';
	echo '</div></div>';
}
mysqli_free_result($r);
mysqli_close($connection);
?>
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
 <div class="buttonDiv" >
    <a class="switchpage action bGrey" href="#" onclick="currentDiv(1)" >1</a>
    <a class="switchpage action" href="#" onclick="currentDiv(2)" >2</a>
    <a class="switchpage action" href="#" onclick="currentDiv(3)">3</a>
  </div>

</div>

</div>
<?php include ('includes/footer.php');?>
