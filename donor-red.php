<?php
include('connection.php');
session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title>Blood Bank Management System</title>
	<img src="images/150.png" class="logo">
	<div class="banner-text">
		<h1>Blood Bank</h1>
		<p>Donor Registration</p>
	<link rel="stylesheet" type="text/css" href="css/s9.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Kalam&family=Kaushan+Script&display=swap" rel="stylesheet">
</head>
<body>
	<br>
	<?php
       $un=$_SESSION['un'];
       if(!$un)
       {
         header("Location:login.php");
       }
      ?>
      <br><br><br>
      <center><div id="form">
        <form action="" method="post">
        <table>
         <label for="first" >Full Name:</label>
	<input id="first" type="text" name="name" placeholder="Full Name"  autofocus required />

	<br /><br />

	<label>Blood Group:</label>

	<select name="bgroup" style="border-radius: 10px">
		<option>Select</option>
		<option>A+</option>
		<option>A-</option>
		<option>B+</option>
		<option>B-</option>
		<option>AB+</option>
		<option>AB-</option>
		<option>O+</option>
		<option>O-</option>

		</select>

	<br /><br />

	<label for="Gender">Gender:</label>
	<input type="radio" name="gender" value="Male"/>Male
	<input type="radio" name="gender" value="Female"/>Female
	<input type="radio" name="gender" value="Others"/>Others

	<br /><br />

	<label for="age">Age:</label>
	<input id="last" type="text" placeholder="" name="age" />
	<br /><br />
	<label for="weight">Weight:</label>
	<input id="weight" type="text" name="weight" placeholder="" />
	<br /> <br />

	<label>Last Donated:</label>
			<input id="date" name="date" type="date" value="2019-01-01">
		 <br /><br />



	<label for="phone">Phone Number:</label>
	<input id="phone" type="tel" name="number"placeholder="+8801********" required />

	<br /><br />

	<label for="address">Address:</label>
	<textarea name="address" id="address" placeholder="Please include your Division & City" cols="35" rows="2"></textarea>
	<br /><br />

</div>


<br>
<?php include 'map.php'; ?>
	</form>
	<br />

    <?php
    if(isset($_POST['sub'])){
    	$id=uniqid();
        $name=$_POST['name'];
        $bgroup=$_POST['bgroup'];
        $gender=@$_POST['gender'];
        $age=$_POST['age'];
        $weight=$_POST['weight'];
        $date=$_POST['date'];
        $number=$_POST['number'];
        $address=$_POST['address'];
				

        $q=$db->prepare("INSERT INTO donor_regis(id,name,bgroup,gender,age,weight,date,number,address) VALUES (:id,:name,:bgroup,:gender,:age,:weight,:date,:number,:address)");

        $q->bindValue('id',$id);
        $q->bindValue('name',$name);
        $q->bindValue('bgroup',$bgroup);
        $q->bindValue('gender',$gender);
        $q->bindValue('age',$age);
        $q->bindValue('weight',$weight);
        $q->bindValue('date',$date);
        $q->bindValue('number',$number);
        $q->bindValue('address',$address);

        if($q->execute()){
                    $latitude=$_POST['latitude'];
					$longitude=$_POST['longitude'];
					$l=$db->prepare("INSERT INTO location(id,latitude,longitude) VALUES (:id,:latitude,:longitude)");
					$l->bindValue('id',$id);
					$l->bindValue('latitude',$latitude);
					$l->bindValue('longitude',$longitude);

        if($l->execute()){
	          echo "<script>alert('Registration Succesfull!')</script>";
              }
        }
        else{
            echo "<script>alert('Registration Failed!')</script>";
        }
    }

    ?>
      </div></center>
    </div>

	<div class="banner-btn">
	<div id="sideNav">
		<nav>
			<ul>
				<li><a href="admin.php">Information</a></li>
				<li><a href="donor-list.php">Donor List</a></li>
				<li><a href="blood.php">Search Blood</a></li>
				<li><a href="patient-red.php">Patient Registration</a></li>
				<li><a href="patient-list.php">Patient List</a></li>
				<li><a href="logout.php">Log out</a></li>
			</ul>
		</nav>
	</div>
</div>
	<div id="menuBtn">
		<img src="images/menu.png" id="menu">
	</div>
	

<script>
		var menuBtn=document.getElementById("menuBtn")
		var sideNav=document.getElementById("sideNav")
		var menu=document.getElementById("menu")

				menuBtn.onclick=function(){
					if(sideNav.style.right=="-250px"){
						sideNav.style.right="0";
						}
					else{
						sideNav.style.right="-250px";
						
					}
}
	</script>

</body>
</html>