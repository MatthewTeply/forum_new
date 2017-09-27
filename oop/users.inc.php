<?php

session_start();

require("classes/user.class.php");
include 'db.inc.php';

function showUsr($conn, $username) {

	$user_query = new user;
	echo $user_query->showUser($conn, $username);
}

function getInf($conn, $username) {

	$em_query = new user;
	echo $em_query->getInfo($conn, $username);
}

function setPm($conn, $content, $master, $username) {

	$pm = new user;
	$pm->setPrivateMsg($conn, $content, $master, $username);
}

function getPm($conn, $username) {

	$pm = new user;
	$pm->getPrivateMsg($conn, $username);
}

function checkBan($conn, $username) {

	$ban = new user;
	echo $ban->checkUserBan($conn, $username);
}

function setUsrImg($conn, $file, $username) {

	$img = new user;
	echo $img->setUserImage($conn, $file, $username);
}

//=For Static Calls=
	if (isset($_POST['usrImg_subm']))
		setUsrImg($conn, $_FILES['usrImg_file'], $_SESSION['209_uid']);

//=For Ajax=
if (isset($_POST['showUsr_call']))
	showUsr($conn, $_POST['uid']);

if (isset($_POST['setPm_call']))
	setPm($conn, $_POST['content'], $_POST['mid'], $_SESSION['209_uid']);

if (isset($_POST['checkBan_call']))
	checkBan($conn, $_POST['uid']);
