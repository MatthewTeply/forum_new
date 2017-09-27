<?php include 'posts.inc.php'; ?>

<h1 style="font-weight: 400; margin-top: 10px;">Post</h1>
<article>
	<?php 
		showArt($conn); 
	?>
</article>
<section>
	<?php if (isset($_SESSION['209_uid'])): ?>
	<h1 style="font-weight: 400; margin-bottom: 10px;">Comments</h1>
		<form id="form_comment_art">
			<h3>Create a comment | <span>Characters left : <span id="chars_left">250</span></span></h3>
			<textarea id="content_comment_art" placeholder="Comment..." maxlength="250"></textarea>
			<input type="hidden" id="mid_comment_art" value=<?php echo $_GET['art'] ?>>
			<br>
			<button class="btn" type="submit">Comment</button>
		</form>
	<?php endif ?>
	<div id="article_comment_div">
		<span id="article_comment_div_top"></span>
		<?php showcomment_Art($conn, $_GET['art']); ?>
	</div>
</section>