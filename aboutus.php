<!DOCTYPE html>
<style>
padding-top:50px;
</style>
<?php include ('includes/header.php');?>
<div class="row">
  <div class="news " style="height: auto;">
  <h2 class="tittle">Eagle Nails LLC</h2>
  <img src="picture/eagleNailsMain.jpg" style="width:400px;" alt="about us">
  <p>Eagle Nails Shop has been in Akron, Ohio 44312 for over 12 years. We always try to give our clients the best nails care and nails trending.</p>
  <p> We have over 500+ colors of gels polishes and over a thousand regular one. We have experience staffs, who will provide the best services in the area. Come to us and you will not want to go to any where else! <br>
  Eagle Nails, Welcome!!!
  </p>
  
  <div class="address">
<p>Address: 1500 Canton road, Akron Ohio 44312</p>
<span>Tel: </span><a class="mobile" href="tel:330-733-5188">330-733-5188</a>
<span class="desktop">330-733-5188</span>
 <div id="map" class="googlemap" style="width:100%;height:260px;"> 
 
</div>
<script>
function myMap() {
  var mapCanvas = document.getElementById("map");
  var myCenter = new google.maps.LatLng(41.024515, -81.423855); 
  var mapOptions = {center: myCenter, zoom: 15};
  var map = new google.maps.Map(mapCanvas,mapOptions);
  var marker = new google.maps.Marker({
    position: myCenter,
    icon: "picture/eagle-icon.png"
  });
  marker.setMap(map);
}
</script>


<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC0spmJBB-E1XKWhIJAgoPpqYhen5Aj-gk&callback=myMap"></script> 
  </div>
  </div>

<?php include ('includes/footer.php');?>
