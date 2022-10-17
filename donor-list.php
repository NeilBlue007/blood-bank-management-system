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
		<p>Donor List</p>
	<link rel="stylesheet" type="text/css" href="css/s8.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Kalam&family=Kaushan+Script&display=swap" rel="stylesheet">
</head>
<body>
	<br>
<br>
<table id="customers" style="margin: 0px auto;">
  <tr>
		<th>ID</th>
    <th>Name</th>
    <th>Blood Group</th>
    <th>Gender</th>
		<th>Age</th>
		<th>Weight</th>
		<th>Last Donated</th>
		<th>Phone Number</th>
		<th>Address</th>

  </tr>
	<?php
$q=$db->query("SELECT * FROM donor_regis");
while ($p=$q->fetch(PDO::FETCH_OBJ)) {
	?>
	<tr>

    <?php
        $d=$p->date;
        $current=date("Y/m/d");
        $month=((strtotime($current) - strtotime($d))/60/60/24)/30;
    if($month<3.0)
    {
      ?>
      <td><font color="red"><?= $p->id; ?></font></td>
      <td><font color="red"><?= $p->name; ?></font></td>
      <td><font color="red"><?= $p->bgroup; ?></font></td>
  	  <td><font color="red"><?= $p->gender; ?></font></td>
  	  <td><font color="red"><?= $p->age; ?></font></td>
  	  <td><font color="red"><?= $p->weight; ?></font></td>
        <td><font color="red"><?= $p->date; ?></font></td>
        <td><font color="red"><?= $p->number; ?></font></td>
    	  <td><font color="red"><?= $p->address; ?></font></td>
      <?php
    }
    else {
      ?>
      <td><?= $p->id; ?></td>
      <td><?= $p->name; ?></td>
      <td><?= $p->bgroup; ?></td>
  	  <td><?= $p->gender; ?></td>
  	  <td><?= $p->age; ?></td>
  	  <td><?= $p->weight; ?></td>
        <td><?= $p->date; ?></td>
        <td><?= $p->number; ?></td>
    	  <td><?= $p->address; ?></td>
  <?php
    }

    ?>
  </tr>
	<?php
}
	 ?>

</table>
<br>
  <h2 align="center" padding="40px">Note: [Red colored are not eligible for Donation] </h2>
</br>
	<div class="banner-btn">
	<div id="sideNav">
		<nav>
			<ul>
				<li><a href="admin.php">Information</a></li>
				<li><a href="donor-red.php">Donor Registration</a></li>
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
