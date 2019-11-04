<!DOCTYPE html>
<link rel="stylesheet" href="gallery.css">
<link rel="stylesheet" href="services.css">
<?php include ('includes/header.php');
require('includes/EagleNailsConnection.php');

?>
<div class="row">
<div class="title" id="manicure" >
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
	echo $records;
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

</div>
<div class="buttonDiv" >
<?php
if ($pages > 1) {
	echo '<br><p>';
	$current_page = ($start/$display) + 1;
	// If it's not the first page, make a Previous button:
	 if ($current_page != 1) {
		echo '<a class="switchpage action bGrey" href="gallery.php?s=' . ($start - $display) . '&p=' . $pages . '&sort=DESC">Previous</a> ';
		
	} 
	// Make all the numbered pages:
	for ($i = 1; $i <= $pages; $i++) {
		if ($i != $current_page) {
			echo '<a class="switchpage action bGrey" href="gallery.php?s=' . (($display * ($i - 1))) . '&p=' . $pages . '&sort=DESC">' . $i . '</a> ';
			
		} else {
			echo $i . ' ';
		}
	} // End of FOR loop.
	// If it's not the last page, make a Next button:
	 if ($current_page != $pages) {
		echo '<a class="switchpage action bGrey" href="gallery.php?s=' . ($start + $display) . '&p=' . $pages . '&sort=DESC">Next</a>';
	} 
	echo '</p>'; // Close the paragraph.
}
?>
</div>
</div>
<?php include ('includes/footer.php');?>