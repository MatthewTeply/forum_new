<?php
session_start();

require("classes/user.class.php");
include 'db.inc.php';

$uid = $_POST['uid'];
$pwd = $_POST['pwd'];

$login = new user;
$login_uid = $login->getUser($conn, $uid, $pwd);

if (!$login) 
	exit("Wrong username/password");

else {

	header("Location: index.php?signed_in");
	$_SESSION['209_uid'] = $login_uid;
}