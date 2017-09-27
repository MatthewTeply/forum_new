<?php

class user {

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

	public function check($conn, $check_what, $check_for) {

	    $stmnt = $conn->prepare("SELECT * FROM users WHERE ".$check_what."=?");
	    $stmnt->bind_param("s", $st_check);

	    $st_check = $check_for;

	    $stmnt->execute();
	    $results = $stmnt->get_result();

	    $numRows = $results->num_rows;

	    if($numRows > 0)
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

	public function setUser($conn, $username, $password, $email, $username_length, $password_length) {

		if ($this->check($conn, "uid", $username) == true)
			exit("err_uid_taken");

		elseif ($this->check($conn, "em", $email) == true)
			exit("err_em_taken");

		else {

			if (strlen($username) < $username_length)
				exit("err_uid_short");

			elseif (strlen($password) < $password_length)
				exit("err_pwd_short");

			elseif (preg_match('/[\'^£$%&*()}{@#~?><>,|=_+¬-]/', $username) == true)
	        	exit("err_uid_special");

	        elseif(strpos($email, "@") == false || strpos($email, ".") == false)
	        	exit("err_em_invalid");

	        else {

		        $hashed_password = password_hash($password, PASSWORD_DEFAULT);
				$stmnt = $conn->prepare("INSERT INTO users (uid, pwd, em) VALUES (?, ?, ?)");
				$stmnt->bind_param("sss", $st_uid, $st_pwd, $st_em);

				$st_uid = $username;
				$st_pwd = $hashed_password;
				$st_em = $email;

				$stmnt->execute();

				echo("succ_uid:".$username);
				return true;
	        }
		}
	}

	public function getUser($conn, $username, $password) { //Sign in

		$stmnt = $conn->prepare("SELECT * FROM users WHERE uid=?");
		$stmnt->bind_param("s", $st_uid);

		$st_uid = $username;

		$stmnt->execute();
		$results = $stmnt->get_result();

		$row = $results->fetch_assoc();

		$hash_pwd = $row['pwd'];
		$hash = password_verify($password, $hash_pwd);

		if ($row['BAN'] == 1) {

			exit("Sorry, you are banned :(");
		}

		else {

			if ($hash == 0) {

				exit("Wrong name/password!");
				return false;
			}

			else {

				$stmnt = $conn->prepare("SELECT * FROM users WHERE uid=? AND pwd=?");
				$stmnt->bind_param("ss", $st_uid, $st_pwd);

				$st_uid = $username;
				$st_pwd = $hash_pwd;

				$stmnt->execute();
				$results = $stmnt->get_result();

				$numRows = $results->num_rows;
				$row = $results->fetch_assoc();

				if ($numRows == 0) {

					exit("Wrong name/password!");
					return false;
				}

				else
					return $row['uid'];
			}
		}
	}

	public function getInfo($conn, $username) {

		$stmnt = $conn->prepare("SELECT * FROM users WHERE uid=?");
		$stmnt->bind_param("s", $st_uid);

		$st_uid = $username;

		$stmnt->execute();
		$results = $stmnt->get_result();

		$row = $results->fetch_assoc();

		if (empty($row['uid']) || empty($row['em'])) {

			echo "<h1 id='username_h1' class='invalid' style='color: var(--red);'>User ".$username." does not exist!</h1>";
		}

		else {

			echo "<h1>"; 

			if ($row['usr_img'] == NULL) {

				echo "<i class='fa fa-user-o'></i> ";
			}

			else {

				echo "<img src=".$row['usr_img']." id='username_img'></img> "; 
			}

			echo $row['uid']; 

			if ($row['BAN'] == 1) {

				echo " (<span id='username_h1' class='invalid' style='color: var(--red);'>Banned</span>)";
			}

			if ($row['admin'] == 1) {

				echo " (<span id='username_h1' style='color: var(--blue);'>Administrator</span>)";
			}

			echo"</h1><h3>".$row['em']."</h3>";
		}

	}

	public function unsetUser() {

		session_start();

		session_unset();
		session_destroy();
	}

	function showUser($conn, $uid) {

		$stmnt = $conn->prepare("SELECT * FROM users WHERE uid LIKE CONCAT('%', ?, '%')");
		$stmnt->bind_param("s", $st_uid);

		$st_uid = $uid;

		$stmnt->execute();
		$results = $stmnt->get_result();

		while ($row = $results->fetch_assoc()) {

			echo "<b>User : </b><a href='index.php?usr=".$row['uid']."'><img src=".$row['usr_img']." class='post_usr_img'/>".$row['uid'];

			if ($row['BAN'] == 1) {

				echo " [<span style='color: var(--red);'>Banned</span>]";
			}

			if ($row['admin'] == 1) {

				echo " [<span style='color: var(--blue);'>Administrator</span>]";
			}

			echo"</a>  (".$row['em'].")<br>";
		}
	}

	function setPrivateMsg($conn, $content, $master, $username) {

		$admin = $this->checkAdmin($conn, $_SESSION['209_uid']);

		$stmnt = $conn->prepare("SELECT * FROM users WHERE uid=?");
		$stmnt->bind_param("s", $st_uid);

		$st_uid = $master;

		$stmnt->execute();
		$results = $stmnt->get_result();

		$numRows = $results->num_rows;

		if ($numRows == 0) {

			exit("Err_mid_invalid");
		}

		else {

			$content_max_lenght = 250;

			if (strlen($content) > 250) {

				exit("Err_pm_long");
			}

			elseif (empty($content)) {

				exit("Err_pm_empty");
			}

			elseif (strpos($content, "/ban") !== false && $admin == true) {

				$stmnt = $conn->prepare("UPDATE users SET BAN=? WHERE uid=?");
				$stmnt->bind_param("ss", $st_BAN, $st_uid);

				$st_BAN = 1;
				$st_uid = $master;

				$stmnt->execute();

				echo "BAN";
				//echo "User ".$uid." has been banned!";
			}

			else {

				$stmnt = $conn->prepare("INSERT INTO pms (content, mid, uid) VALUES (?, ?, ?)");
				$stmnt->bind_param("sss", $st_content, $st_mid, $st_uid);

				$st_content = $content;
				$st_mid = $master;
				$st_uid = $username;

				$stmnt->execute();

				return true;
			}
		}
	}

	function getPrivateMsg($conn, $username) {

		$stmnt = $conn->prepare("SELECT * FROM pms WHERE mid=?");
		$stmnt->bind_param("s", $st_mid);

		$st_mid = $username;

		$stmnt->execute();
		$results = $stmnt->get_result();

		while ($row = $results->fetch_assoc()) {

			echo "<div class='prv_msg'><p>".$row['content']."</p><i><a href='index.php?usr=".$row['uid']."'>".$this->getOpImage($conn, $row['uid']).$row['uid']."</a></i></div>";
		}
	}

	function checkUserBan($conn, $username) {

		$stmnt = $conn->prepare("SELECT * FROM users WHERE uid=?");
		$stmnt->bind_param("s", $st_uid);

		$st_uid = $username;

		$stmnt->execute();
		$results = $stmnt->get_result();

		$row = $results->fetch_assoc();

		if ($row['BAN'] == 1) {

			return true;
		}

		else {

			return false;
		}
	}

	function setUserImage($conn, $file, $username) {

		if (isset($file)) {

			$fileName = $file['name'];
			$fileTmpName = $file['tmp_name'];
			$fileSize = $file['size'];
			$fileError = $file['error'];

			$fileExt = explode(".", $fileName);
			$fileActualExt = strtolower(end($fileExt));

			$filesAllowed = array("jpg", "png", "gif");

			if ($fileActualExt == $filesAllowed[0] || $fileActualExt == $filesAllowed[1] || $fileActualExt == $filesAllowed[2]) {

				if ($fileError == 0) {

					$fileNewName = $username."_pic.".$fileActualExt;
					$fileDestination = 'uploads/'.$fileNewName;

					move_uploaded_file($fileTmpName, $fileDestination);

					$stmnt = $conn->prepare("UPDATE users SET usr_img=? WHERE uid=?");
					$stmnt->bind_param("ss", $st_fileDestination, $st_uid);

					$st_fileDestination = $fileDestination;
					$st_uid = $username;

					$stmnt->execute();

					return "Image ".$fileName." uploaded successfuly!";
				}

				else {

					exit("There was an error uploading your file!");
				}
			}

			else {

				exit("Invalid extension (".$fileActualExt.") allowed extensions : JPG, PNG, GIF");
			}
		}
	}

}