<!DOCTYPE html>
<link rel="stylesheet" href="services.css">
 <?php include ('includes/header.php');?>
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
<div class="title" id="manicure" >
<h3 class="servicetxt">Manicure</h3>
<div class="servicecontent">
<div class="serviceDsc">
  <a target="_blank" href="picture/regularmanicure.jpg">
	<img src="picture/regularmanicure.jpg" alt="regular manicure" width="350" height="200">
  </a>
  <div class="desc">Regular Manicure</div>
</div>
<div class="serviceDsc">
  <a target="_blank" href="picture/deluxemanicure.jpg">
	<img src="picture/deluxemanicure.jpg" alt="deluxe manicure" width="330" height="200">
  </a>
  <div class="desc">Deluxe Manicure</div>
</div>
<div class="serviceDsc">
  <a target="_blank" href="picture/gelnails.jpg">
	<img src="picture/gelnails.jpg" alt="gel nail" width="330" height="200">
  </a>
  <div class="desc">Gel Nails</div>
</div>
<table alt="Price table"class="price">
<tr>
<th>Service</th>
<th>Price</th>
</tr>
<tr>
<td>Regular Manicure</td>
<td>$15</td>
</tr>
<tr>
<td>Deluxe Manicure</td>
<td>$25</td>
</tr>
<tr>
<td>Gel Manicure</td>
<td>$30</td>
</tr>
<tr>
<td>Deluxe Manicure + Gel</td>
<td>$35</td>
</tr>
<tr>
<td>Add french tip</td>
<td>+ $5</td>
</tr>
<tr>
<td>Add 1 nail design</td>
<td>+ $5</td>
</tr>
<tr>
<td>Add all nails design</td>
<td>+ $12+</td>
</tr>
<tr>
<th colspan="2">Price doesn't include tax.&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  Tax 6.75%</th>
</tr>
</table>
</div>
</div>
<div class="tittle" id="pedicure" >
<h3 class="servicetxt">Pedicure</h3>
<div class="servicecontent">
<div class="serviceDsc">
  <a target="_blank" href="picture/regularpedicure.jpg">
	<img src="picture/regularpedicure.jpg" alt="regular pedicure" width="350" height="200">
  </a>
  <div class="desc">Regular Pedicure</div>
</div>
<div class="serviceDsc">
  <a target="_blank" href="picture/deluxepedicure.jpg">
	<img src="picture/deluxepedicure.jpg" alt="deluxe pedicure" width="330" height="200">
  </a>
  <div class="desc">Deluxe Pedicure</div>
</div>
<div class="serviceDsc">
  <a target="_blank" href="picture/zenpedicure.jpg">
	<img src="picture/zenpedicure.jpg" alt="Zen therapy Pedicure" width="330" height="200">
  </a>
  <div class="desc">Zen therapy Pedicure</div>
</div>
<div class="serviceDsc">
  <a target="_blank" href="picture/addhotstones.jpg">
	<img src="picture/addhotstones.jpg" alt=" Hot Stone" width="330" height="200">
  </a>
  <div class="desc">Add Hot Stone</div>
</div>
<table alt="Price table"class="price">
<tr>
<th>Service</th>
<th>Price</th>
</tr>
<tr>
<td>Regular Pedicure</td>
<td>$30</td>
</tr>
<tr>
<td>Deluxe Pedicure</td>
<td>$38</td>
</tr>
<tr>
<td>Zen Therapy Pedicure</td>
<td>$45</td>
</tr>
<tr>
<td>Add Gel polishes</td>
<td>+$15</td>
</tr>
<tr>
<td>Add french tip</td>
<td>+$5</td>
</tr>
<tr>
<td>Add Hot stone</td>
<td>+ $5</td>
</tr>
<tr>
<td>Add all nails design</td>
<td>+ $12+</td>
</tr>
<tr>
<th colspan="2">Price doesn't include tax.&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp Tax 6.75%</th>
</tr>
</table>
<table alt="Price table"class="desktop price" style="width: 650px;display:table;">
<tr>
<th>Services</th>
<th>Foot Clean</th>
<th>Callous Remove</th>
<th>Sugar Scrub</th>
<th>Foot Mask</th>
<th>Regular Lotion</th>
<th>Special Lotion</th>
<th>Hot Stone</th>
<th>Paraffin</th>
</tr>
<tr>
<td>Regular Pedicure</td>
<td>&#10004;</td>
<td>&#10004;</td>
<td>&#10004;</td>
<td>&#10006;</td>
<td>&#10004;</td>
<td>&#10006;</td>
<td>&#10006;</td>
<td>&#10006;</td>
</tr>
<tr>
<td>Deluxe Pedicure</td>
<td>&#10004;</td>
<td>&#10004;</td>
<td>&#10004;</td>
<td>&#10004;</td>
<td>&#10006;</td>
<td>&#10004;</td>
<td>&#10004;</td>
<td>&#10006;</td>
</tr>
<tr>
<td>Zen Therapy Pedicure</td>
<td>&#10004;</td>
<td>&#10004;</td>
<td>&#10004;</td>
<td>&#10004;</td>
<td>&#10006;</td>
<td>&#10004;</td>
<td>&#10004;</td>
<td>&#10004;</td>
</tr>
<tr>
<th colspan="9">We use special lotions, scrubs for Deluxe and Zen Pedicure</th>
</tr>
</table>
<br>
<table alt="Price table" class="mobile price" >
<tr>
<th>Services</th>
<th>Regular Pedicure</th>
<th>Deluxe Pedicure</th>
<th>Zen Therapy Pedicure</th>
</tr>
<tr>
<th>Foot Clean</th>

<td>&#10004;</td>
<td>&#10004;</td>
<td>&#10004;</td>
</tr>
<tr>
<th>Callous Remove</th>

<td>&#10004;</td>
<td>&#10004;</td>
<td>&#10004;</td>
</tr>
<tr>
<th>Sugar Scrub</th>

<td>&#10004;</td>
<td>&#10004;</td>
<td>&#10004;</td>
</tr>
<tr>
<th>Foot Mask</th>

<td>&#10004;</td>
<td>&#10004;</td>
<td>&#10004;</td>
</tr>
<tr>
<th>Special Lotion</th>
<td>&#10006;</td>
<td>&#10004;</td>
<td>&#10004;</td>
</tr>
<tr>
<th>Hot Stone</th>
<td>&#10006;</td>
<td>&#10004;</td>
<td>&#10004;</td>
</tr>
<tr>
<th>Paraffin</th>
<td>&#10006;</td>
<td>&#10006;</td>
<td>&#10004;</td>
</tr>
<tr>
<th colspan="4">We use special lotions, scrubs for Deluxe and Zen Pedicure</th>
</tr>
</table>
</div>
</div>
<div class="tittle" id="acrylicnails" >
<h3 class="servicetxt">Acrylic Nails</h3>
<div class="servicecontent">
<div class="serviceDsc">
  <a target="_blank" href="picture/newset.jpg">
	<img src="picture/newset.jpg" alt="new set" width="350" height="200">
  </a>
  <div class="desc">New Set</div>
</div>
<div class="serviceDsc">
  <a target="_blank" href="picture/gelpowder.jpg">
	<img src="picture/gelpowder.jpg" alt="Gel powder" width="330" height="200">
  </a>
  <div class="desc">Gel Set</div>
</div>
<div class="serviceDsc">
  <a target="_blank" href="picture/pinkandwhite.jpg">
	<img src="picture/pinkandwhite.jpg" alt="pink and white" width="330" height="200">
  </a>
  <div class="desc">Pink And White</div>
</div>
<div class="serviceDsc">
  <a target="_blank" href="picture/obre.jpg">
	<img src="picture/obre.jpg" alt="obre" width="330" height="200">
  </a>
  <div class="desc">Obré Pink And White</div>
</div>
<div class="serviceDsc">
  <a target="_blank" href="picture/colorpowder.jpg">
	<img src="picture/colorpowder.jpg" alt="colorpowder" width="330" height="200">
  </a>
  <div class="desc">Color Powder</div>
</div>
<table alt="Price table"class="price">
<tr>
<th>Service</th>
<th>Price</th>
</tr>
<tr>
<td>New Set</td>
<td>$30</td>
</tr>
<tr>
<td>Gel Set</td>
<td>$35</td>
</tr>
<tr>
<td>Pink and White</td>
<td>$50</td>
</tr>
<tr>
<td>Obré Pink And White</td>
<td>$50</td>
</tr>
<tr>
<td>ReFill</td>
<td>$20-30</td>
</tr>
<tr>
<td>Color Powder</td>
<td>$40</td>
</tr>
<tr>
<td>Add Gel color</td>
<td>+ $10</td>
</tr>
<tr>
<td>Add all nails design</td>
<td>+ $12+</td>
</tr>
<tr>
<td>Special Shapes, Long Nails</td>
<td>+ $5+</td>
</tr>
<tr>
<th colspan="2">Price doesn't include tax.  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp Tax 6.75%</th>
</tr>
</table>
</div>
</div>

<div class="tittle" id="dippingpowder" >
<h3 class="servicetxt">Dipping Powder</h3>
<div class="servicecontent">
<div class="serviceDsc">
  <a target="_blank" href="picture/newsetdipping.jpg">
	<img src="picture/newsetdipping.jpg" alt="new set dipping" width="350" height="200">
  </a>
  <div class="desc">New set</div>
</div>
<div class="serviceDsc">
  <a target="_blank" href="picture/changecolordipping.jpg">
	<img src="picture/changecolordipping.jpg" alt="changecolordipping" width="330" height="200">
  </a>
  <div class="desc">Change Color</div>
</div>
<div class="serviceDsc">
  <a target="_blank" href="picture/refill.jpg">
	<img src="picture/refill.jpg" alt="refill nail" width="330" height="200">
  </a>
  <div class="desc">refill</div>
</div>
<table alt="Price table"class="price">
<tr>
<th>Service</th>
<th>Price</th>
</tr>
<tr>
<td>New Set</td>
<td>$40</td>
</tr>
<tr>
<td>Change Color</td>
<td>$45</td>
</tr>
<tr>
<td>ReFill</td>
<td>$30-33</td>
</tr>
<tr>
<td>Add 1 nail design</td>
<td>+ $5</td>
</tr>
<tr>
<td>Add all nails design</td>
<td>+ $12+</td>
</tr>
<tr>
<th colspan="2">Price doesn't include tax. &nbsp &nbsp &nbsp  &nbsp &nbsp  &nbsp &nbsp  Tax 6.75%</th>
</tr>
</table>
</div>
</div>
<?php include ('includes/footer.php');?>

