<?php

class posts {

	public function checkAdmin($conn, $username) {

	    $stmnt = $conn->prepare("SELECT * FROM users WHERE uid=?");
	    $stmnt->bind_param("s", $st_check);

	    $st_check = $username;

	    $stmnt->execute();
	    $results = $stmnt->get_result();

	    $row = $results->fetch_assoc();

	    if($row['admin'] == 1)
	        return true;
	}

	public function getOpImage($conn, $username) {

		$stmnt = $conn->prepare("SELECT * FROM users WHERE uid=?");
		$stmnt->bind_param("s", $st_uid);

		$st_uid = $username;

		$stmnt->execute();
		$results = $stmnt->get_result();

		$row = $results->fetch_assoc();

		if ($row['usr_img'] == NULL) {

			return "<i class='fa fa-user-o no_usr_img'></i>";
		}

		else {

			return "<img class='post_usr_img' src='".$row['usr_img']."' />";
		}
	}

	function setPost($conn, $title, $content, $username) {

		$max_len_title = 30;
		$max_len_cont = 250;

		if (empty($content)) {
		
			exit("Err_post_empty");
		}

		elseif (strlen($content) > $max_len_cont || strlen($title) > $max_len_title) {

			exit("Err_post_long");
		}

		else {

			$stmnt = $conn->prepare("INSERT INTO posts (title ,content, op) VALUES (?, ?, ?)");
			$stmnt->bind_param("sss", $st_title, $st_content, $st_op);

			$st_title = $title;
			$st_content = $content;
			$st_op = $username;

			$stmnt->execute();

			echo $content;
		}
	}

	function getPost($conn, $username) {

		$stmnt = $conn->prepare("SELECT * FROM posts WHERE op=? AND mid IS NULL ORDER BY id desc");
		$stmnt->bind_param("s", $st_op);

		$st_op = $username;

		$stmnt->execute();
		$results = $stmnt->get_result();

		$numRows = $results->num_rows;

		if ($numRows == 0) {

			echo "<a><h3>No posts</h3></a>";
		}

		else {

			while ($row = $results->fetch_assoc())
				echo "<a href='index.php?art=".$row['id']."'><h3>".$row['title']."</h3><i><b>".$row['op']."</b> (".$row['date_posted'].")</i></a>";
		}

	}

	function showPost($conn) {

		$stmnt = $conn->prepare("SELECT * FROM posts WHERE mid IS NULL ORDER BY id desc");
		$stmnt->execute();
		$results = $stmnt->get_result();

		while ($row = $results->fetch_assoc())
			echo "<a href='index.php?art=".$row['id']."'><h3>".$this->getOpImage($conn, $row['op']).$row['title']."</h3><i><b>".$row['op']."</b> (".$row['date_posted'].")</i></a>";
	}

	function deletePost($conn, $post_id) {

		$stmnt = $conn->prepare("DELETE FROM posts WHERE id=?");
		$stmnt->bind_param("s", $st_id);
		
		$st_id = $post_id;

		$stmnt->execute();

		exit("Post deleted!");
	}

	function showArticle($conn, $id) {

		$stmnt = $conn->prepare("SELECT * FROM posts WHERE id=? AND mid IS NULL");
		$stmnt->bind_param("s", $st_id);

		$st_id = $id;

		$stmnt->execute();
		$results = $stmnt->get_result();

		$row = $results->fetch_assoc();

		echo "<h1>".$this->getOpImage($conn, $row['op']).$row['title']."</h1><p>".$row['content']."</p><i><b>By:</b> <a href='index.php?usr=".$row['op']."'>".$row['op']."</a></i>";			
	}

	function setComment_Article($conn, $content, $op, $mid) {

		$max_len_comment = 250;
		$admin = $this->checkAdmin($conn, $_SESSION['209_uid']);

		if (empty($content)) {
		
			exit("Err_comment_empty");
		}

		elseif (strpos($content, "/ban") !== false && $admin == true) {

			$stmnt = $conn->prepare("SELECT * FROM posts WHERE id=?");
			$stmnt->bind_param("s", $st_id);

			$st_id = $mid;

			$stmnt->execute();
			$results = $stmnt->get_result();

			$row = $results->fetch_assoc();
			$uid = $row['op'];

			$stmnt = $conn->prepare("UPDATE users SET BAN=? WHERE uid=?");
			$stmnt->bind_param("ss", $st_BAN, $st_uid);

			$st_BAN = 1;
			$st_uid = $uid;

			$stmnt->execute();

			echo "User ".$uid." has been banned!";
		}

		elseif (strpos($content, "/delete") !== false && $admin == true) {

			$stmnt = $conn->prepare("DELETE FROM posts WHERE id=?");
			$stmnt->bind_param("s", $st_mid);

			$st_mid = $mid;

			$stmnt->execute();

			$stmnt = $conn->prepare("DELETE FROM posts WHERE mid=?");
			$stmnt->bind_param("s", $st_mid);

			$st_mid = $mid;

			$stmnt->execute();

			echo "Post has been deleted!";
		}

		elseif (strlen($content) > $max_len_comment) {

			exit("Err_comment_long");
		}

		else {

			$stmnt = $conn->prepare("INSERT INTO posts (content, op, mid) VALUES (?, ?, ?)");
			$stmnt->bind_param("sss", $st_content, $st_op, $st_mid);

			$st_content = $content;
			$st_op = $op;
			$st_mid = $mid;

			$stmnt->execute();
				echo "<div><b><a href='index.php?usr=".$op."'>".$op."</a> says : </b> <p>".$content."</p> </div>";
		}			
	}

	function getComment_Article($conn, $op) {

		$stmnt = $conn->prepare("SELECT * FROM posts WHERE op=? AND mid IS NOT NULL");
		$stmnt->bind_param("s", $st_op);

		$st_op = $op;

		$stmnt->execute();
		$results = $stmnt->get_result();

		while ($row = $results->fetch_assoc())
			echo "<b>Comment : </b>".$row['content']."<br>";
	}

	function showComment_Article($conn, $mid) {

		$stmnt = $conn->prepare("SELECT * FROM posts WHERE mid=? ORDER BY id desc");
		$stmnt->bind_param("s", $st_mid);

		$st_mid = $mid;

		$stmnt->execute();
		$results = $stmnt->get_result();

		$numRows = $results->num_rows;

		if ($numRows == 0) {

			echo "<div><b><p class='no_comments'>No comments</p> </div>";			
		}

		else {

			while ($row = $results->fetch_assoc())
				echo "<div><b><a href='index.php?usr=".$row['op']."'>".$this->getOpImage($conn, $row['op']).$row['op']."</a> says : </b> <p>".$row['content']."</p> </div>";			
		}
	}
}