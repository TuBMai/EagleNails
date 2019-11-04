<!DOCTYPE html>

<?php include ('includes/header.php');?>
<div class="row" style="padding-top:50px;">
 <div class="column left">
  <div class="news ">
  <h2 class="appointment">Appointment</h2>
  <p>* All appointments will be confirmed by email or call!</p>
  <form name="myForm" onsubmit="alert('We will call back to confirm time for your appointment. Thanks you!')" method="post">
  <table class="customerInfo">
  <tr>
  <td class="desktop"><label for="name">Name :</label></td>
  <td ><input type="text" name="txtName" id="txtName" placeholder="Name" maxlength="25" required></td>
  </tr>
  <tr>
  <td class="desktop"><label for="gender">Gender :</label></td>
  <td >
  <input style="width:40px !important;" type="radio" name="gender" value="male" > Male
  <input type="radio" name="gender" value="female"  style="width:40px!important;" checked> Female
  </td>
  </tr>
  <tr>
  <td class="desktop"><label for="phone">Phone Number :</label></td>
  <td>
<input type="text" name="txtPhone" id="txtPhone" placeholder="Phone number"  maxlength="10"  required>
</td>
  </tr>
  <tr>
  <td class="desktop"><label for="email">E-mail :</label>
</td>
  <td><input type="email" name="txtemail" id="txtemail" placeholder="Email" required></td>
  </tr>
  <tr>
  <td class="desktop"><label for="feet">Feet services :</label></td>
  <td><select><!--This lish will be get from database -->
  <option value="">Feet services</option>
  <option value="5">Regular Pedicure</option>
  <option value="6">Deluxe Pedicure</option>
  <option value="8">Zen Therapy Pedicure</option>
  <option value="15">Toes polishes change</option>
</select>
</td>
  </tr>
  <tr>
  <td class="desktop"><label for="hands">Hands services :</label></td>
  <td><select><!--This lish will be get from database -->
  <option value="">Hands services</option>
  <option value="16">Nails Polishes Change</option>
  <option value="11">Regular New Set</option>
  <option value="12">New Set+ Gel</option>
  <option value="17">Pink n White</option>
  <option value="18">Obre Pink n White</option>
  <option value="19">Dipping New Set</option>
</select></td>
  </tr>
  <tr>
  <td class="desktop"><label for="request">Request :</label></td>
  <td><select><!--This lish will be get from database -->
  <option value="" >Request</option>
  <option value="1000">Ben</option>
  <option value="1001">Amy</option>
  <option value="1002">Carter</option>
  <option value="1004">Heather</option>
  <option value="1003">Hah</option>
</select></td>
  </tr>
  <tr>
  <td class="desktop"><label for ="Date">Expected Date/Time:</label></td>
  <td><input  type="date" id="date"required></td>
  </tr>
  <tr>
  <td class="desktop"><label for ="Note">Note:</label></td>
  <td><textarea  name="txtNote" id="txtNote" rows="4" placeholder="Time comming and any issues must be wroten down here!" required></textarea></td>
  </tr>
  <tr>
  <td colspan="2">
  <input id="mySubmit" type="submit" value="Submit">
  </td>
  </tr>
  </table>
</form>


  </div>

  </div>
  <div class="column right">
    <div id="profile" class="cell row zpadding" style="background-color: white;">
	<img class="column leftimg" alt="Profile Picture" src="picture/ben.jpg">
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
	<img class="column leftimg" alt="Profile Picture" src="picture/ben.jpg">
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
	<img class="column leftimg" alt="Profile Picture" src="picture/carter.jpg">
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
	<img class="column leftimg" alt="Profile Picture" src="picture/amy.jpg">
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
	<img class="column leftimg" alt="Profile Picture" src="picture/hah.jpg">
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
	 
	</div>	
	<div class="cell row zpadding" style="background-color: white;">
	<img class="column leftimg" alt="Profile Picture" src="picture/heather.jpg">
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
</div>
<?php include ('includes/footer.php');?>
