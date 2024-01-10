<?php
require_once "db_upass.php";

$host='localhost';
$db = 'ludo';

$user=$DB_USER;
$pass=$DB_PASS;

$user_iee=$DB_USER_IEE;


if(gethostname()=='users.iee.ihu.gr') {
	$mysqli = new mysqli($host, $user_iee, $pass, $db,null,'/home/student/iee/2019/iee2019066/mysql/run/mysql.sock');
} else {
		$pass=null;
        $mysqli = new mysqli($host, $user, $pass, $db);
}

if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . 
    $mysqli->connect_errno . ") " . $mysqli->connect_error;
}?>