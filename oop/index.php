<?php
	session_start();
	error_reporting(0);
	include 'db.inc.php';
?>

<!DOCTYPE html>
<html>
<head>
	<title>
		Forum		
	</title>
	<link rel="stylesheet" type="text/css" href="CSS/style.css">
	<link rel="stylesheet" type="text/css" href="CSS/css/font-awesome.min.css">
</head>
<body>
<input type="hidden" id="session_token" value=<?php echo $_SESSION['209_uid']; ?>>
<div class="wrapper">
	<div class="container">
		
		<?php 
			include 'header.php'; 
		?>

		<?php if (!isset($_GET['usr'])): ?>
			
			<?php if (!isset($_GET['art'])): ?>
			
			<div class="grid _main">
				<?php if (!isset($_SESSION['209_uid'])): ?>
					
					<style type="text/css"> #posts_h1 {display: none;} </style>

					<?php include 'postsfeed.php'; ?>
					<?php include 'nav.php'; ?>

				<?php else: ?>

					<style type="text/css"> ._main { grid-template-columns: 1fr; } </style>
				
				<?php endif ?>
				<?php if (isset($_GET['pa'])): echo "<h1>Post : ".$_GET['pa']." posted successfuly!</h1>";?>
				
				<?php else: ?>

					<h1 id="posts_h1" style="font-weight: 400; margin-top: 10px;">Posts</h1>
					<?php include 'postsfeed.php'; ?>

				<?php endif ?>
			</div>

			<?php else: ?>

				<div class="grid _article">
					<?php include 'displayarticle.php'; ?>
				</div>

			<?php endif ?>

		<?php else: ?>

			<?php include 'user.php'; ?>

		<?php endif ?>

	</div>
</div>


<script src="jquery.js"></script>
<script type="text/javascript" src="jq.js"></script>

</body>
</html>