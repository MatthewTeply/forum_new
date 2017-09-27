<?php

session_start();

require("classes/posts.class.php");
include 'db.inc.php';

function setContent($conn, $title, $content, $username) {

	if (isset($_SESSION['209_uid'])) {

		$posts = new posts;
		$posts->setPost($conn, $title, $content, $username);
	}
}

function getContent($conn, $uid) {

	$posts = new posts;
	echo $posts->getPost($conn, $uid);
}

function showContent($conn) {

	$posts = new posts;
	echo $posts->showPost($conn);
}

function showArt($conn) {

	$article = new posts;
	echo $article->showArticle($conn, $_GET['art']);
}

function setComment_Art($conn, $content, $username, $master_id) {

	$comment = new posts;
	$comment->setComment_Article($conn, $content, $username, $master_id);
}

function getComment_Art($conn) {

	$comment = new posts;
	$comment->getComment_Article($conn, $_SESSION['209_uid']);
}

function showComment_Art($conn, $article_mid) {

	$comment = new posts;
	echo $comment->showComment_Article($conn, $article_mid);
}

//=For Ajax=

//-setContent-
if (isset($_POST['setContent_call']) && !empty($_POST['content']) && !empty($_POST['title']))
	setContent($conn, $_POST['title'], $_POST['content'], $_SESSION['209_uid']);

//-getContent-
if (isset($_POST['getContent_call']))
	getContent($conn);

//-SetComment-
if (isset($_POST['setComment_call']))
	setComment_Art($conn, $_POST['content'], $_SESSION['209_uid'], $_POST['mid']);

//-GetComment-
if (isset($_POST['showComment_call']))
	showComment_Art($conn, $_POST['mid']);
