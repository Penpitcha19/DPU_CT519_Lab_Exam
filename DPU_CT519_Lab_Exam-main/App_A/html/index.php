

<html>
<head>
  <meta charset="UTF-8">
</head>

<body>
Title การแสดงรายชื่อ Hero โดย นางสาวเพ็ญพิชชา คำพิระแปง รหัสนักศึกษา 645162010019
<br>

<?php
if(isset($_GET['id'])) {
 $id = $_GET['id'];
}else{
  $id = null;
}

$mysql_hostname = "192.168.40.129";
$mysql_user = "645162010019";
$mysql_password = "P@ssw0rd";
$mysql_database = "0019_Lab_Exam";
$bd = mysqli_connect($mysql_hostname, $mysql_user, $mysql_password,$mysql_database) or die("Could not connect database");

if (!$bd) {
  die("Connection failed: " . mysqli_connect_error());
}
//echo "Connected successfully".'<br>';

if($id>0)
{
$sql_stmt = "SELECT * FROM Hero LEFT JOIN Hero_in_movie ON Hero.Hero_id = Hero_in_movie.Hero_id INNER JOIN Movie ON Hero_in_movie.Movie_id = Movie.Movie_id WHERE Hero.Hero_id =".$id;
//echo 'get id is'.$id.'<br>';

}else
{
$sql_stmt = "SELECT Picture_link, Name FROM Hero";
//echo 'get id is'.$id.'<br>';

}

$result=mysqli_query($bd,$sql_stmt);
if(!$result)
{
die("Database access failed".mysqli_error());
}

$rows=mysqli_num_rows($result);

if($rows){
echo '<!DOCTYPE html><html lang="en-US"><head><title></title></head><body>';
echo '<br><br><br>';
 while($row = mysqli_fetch_array($result)){
   echo 'Hero Name: '.$row['Name'].'<br>';
   if($id>0){ echo 'Hero Detail: '.$row['Detail'].'<br>';}
   echo 'Hero Picture :'.'<a href='.$row['Picture_link'].'" target="_blank">'.$row['Name'].'</a><br>';
   if($id>0){echo 'Movie Trailer :'.'<a href='.$row['Trailer_link'].'" target="_blank">'.$row['MName'].'</a><br><br>';}
   echo '<br>';
 }

if($id>0){echo '<a href="index.php" target="_blank">HOME</a><br><br><br>';}


echo '<button onclick="myFuction()">SQL statement to DB</button>'.PHP_EOL ;
echo '<script type="text/Javascript">' .PHP_EOL. 'function myFuction(){alert("'.$sql_stmt.'");}' .PHP_EOL. '</script>';
echo '</body></html>';
}

//Free result set
mysqli_free_result($result);
mysqli_close($bd);
?>
<br>
<br>

<br>
<br>
Developed by <a href="about.html">นางสาวเพ็ญพิชชา คำพิระแปง</a>
</body>
</html>

