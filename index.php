<?php 
$addr = 'localhost';
$db_user = 'root';
$db_pass = 'qwerty';
$db_name = 'colors';

$conn = mysqli_connect($addr,$db_user,$db_pass,$db_name);
$error = "";
$classy = "";
if(isset($_POST['submit'])) {
	if(strlen($_POST['color']) != 0 && strlen($_POST['class']) != 0) {
		$color = $_POST['color'];
		$sql = mysqli_query($conn,"select * from colors where color='".$color."'");
		if(mysqli_num_rows($sql) == 0) {
			$class = htmlspecialchars(mysqli_real_escape_string($conn,$_POST['class']));
			$sql = mysqli_query($conn,"insert into colors (color,class) values ('$color','$class')") or die(mysqli_error($conn));
			if($sql) {
				$error = "<div class='succ'>Color has been registered.</div>";
			}
		} else { $error = "<div class='error'>This color is already registered.</div>"; }
	} else { $error = "<div class='error'>All fields are neccessary.</div>"; }	
} elseif(isset($_GET['class']) && strlen(@$_GET['class']) != 0) {
	$id = htmlspecialchars(mysqli_real_escape_string($conn,$_GET['class']));
	$classy = "where class='".$id."'";
}
?>
<!doctype html>
<html> 
<head>
<title>Colors</title>
<link rel='stylesheet' type='text/css' href='style.css' />
<script src='jq.js'></script>
</head>
<body>
<?php echo $error; ?>
<header>
<form action='<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>' method='post'>
<input type='text' name='color' placeholder='Color hex' />
<input type='text' name='class' placeholder='Color class' />
<input type='submit' name='submit' value='Submit' />
</form>
<button id='bgc'>Background color</button>
<div class='bgc'>
	<form>
	<input type='text' class='bgcol' placeholder='Background color(hex)' />
	<button class='done'>Apply</button>
	</form>
</div>
<button id='toggle'>Filter</button>
<ul class='toggle'>
<li><a href='?' style='text-transform:uppercase;'>All</a></li>
<?php 
$sql = mysqli_query($conn,"select distinct class from colors");
while($r = mysqli_fetch_array($sql)) {
	echo "<li><a href='?class=".$r['class']."' style='text-transform:uppercase;'>".$r['class']."</a></li>";
}
?>
</ul>
</header>
<main>
<?php 
$sql = mysqli_query($conn,"select * from colors ".$classy."order by class asc");

while($r = mysqli_fetch_array($sql)) {
	echo "<div class='block' style='background:".$r['color'].";'>
		<span class='name'>".$r['color']."</span>
		<span class='class'>".$r['class']."</span>
		</div>";
}
?>
</main>
<script src='script.js'></script>
</body>
</html>