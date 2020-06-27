<?php

    class User extends Model
    {

        public $USER;

        public function __construct()
        {
            parent::__construct();
            if (isset($user)) {
                $this->USER = $this->getDataUser("users", "WHERE `id`=" . $user['userID'] . " AND `status`='1'");
                if (empty($this->USER['id'])) {
                    unset($user['userID']);
                    if ($user == $_COOKIE) {
                        setcookie('userID', '', time(), '/');
                    }
                    header('location: /');
                }
            }

        }

        public function Registration() {

            $name = $_POST['name'];
            $username = $_POST['username'];
            $email = $_POST['email'];
            $phone = $_POST['phone'];
            $bDay = $_POST['bDay'];
            $country = $_POST['country'];
            $password = $_POST['password'];

            // If exist

            $sql_user = $this->con->prepare("SELECT * FROM `users` WHERE `username`=?");
            $sql_user->execute(array($username));

            if ( $sql_user->rowCount() ) {

                $this->responseJson(["type"=>'ok', "title"=>'', "message"=>'
					<div class="alert alert--bordered alert-danger animated fadeInRight" role="alert" id="error-alert">
						<div class="alert-icon">
							<svg class="woox-icon icon-del"><use xlink:href="/assets/svg-icons/sprites/icons.svg#icon-del"></use></svg>
						</div>
						<strong>' . $this->val["errors"]["taken"] . '
						<a href="" class="icon-close" id="error-alert-close">
							<svg class="woox-icon icon-del"><use xlink:href="/assets/svg-icons/sprites/icons.svg#icon-del"></use></svg>
						</a>
					</div>']);
                die;

            }

            $sql_email = $this->con->prepare("SELECT * FROM `users` WHERE `email`=?");
            $sql_email->execute(array($email));

            if ( $sql_email->rowCount() ) {

                $this->responseJson(["type"=>'ok', "title"=>'', "message"=>'
					<div class="alert alert--bordered alert-danger animated fadeInRight" role="alert" id="error-alert">
						<div class="alert-icon">
							<svg class="woox-icon icon-del"><use xlink:href="/assets/svg-icons/sprites/icons.svg#icon-del"></use></svg>
						</div>
						<strong>' . $this->val["errors"]["email_taken"] . '
						<a href="" class="icon-close" id="error-alert-close">
							<svg class="woox-icon icon-del"><use xlink:href="/assets/svg-icons/sprites/icons.svg#icon-del"></use></svg>
						</a>
					</div>']);
                die;

            }

            // Register

            $reg_user = $this->con->prepare("INSERT INTO `users` ( `name`, `username`, `email`, `password`, `phone`, `country`, `bDate`, `regDate` ) VALUES ( ?,?,?,?,?,?,?,? )");
            $reg_user->execute(array($name, $username, $email, hash('sha512', $password), $phone, $country, $bDay, date("m/d/Y")));

            // If registered

            if ( $reg_user ) {

                $id = $this->getDataUser( 'users' , "WHERE `username` = '" . $username . "'")['id'];
                $till = TIME() + 86400 + 1;

                setcookie('userID', $id, $till, '/');

                $this->responseJson(["type"=>'ok', "title"=>'', "message"=>'
					<div class="alert alert--bordered alert-success animated fadeInRight" role="alert" id="error-alert">
						<div class="alert-icon">
							<svg class="woox-icon icon-del"><use xlink:href="/assets/svg-icons/sprites/icons.svg#icon-check-mark-2"></use></svg>
						</div>
						<strong>' . $this->val["login"]['success'] . '
					</div><script>setTimeout(function() {  location.href = "/"; }, 3000)</script>']);

            } else {

                $this->responseJson(["type"=>'ok', "title"=>'', "message"=>'
					<div class="alert alert--bordered alert-danger animated fadeInRight" role="alert" id="error-alert">
						<div class="alert-icon">
							<svg class="woox-icon icon-del"><use xlink:href="/assets/svg-icons/sprites/icons.svg#icon-del"></use></svg>
						</div>
						<strong>' . $this->val["errors"]["error"] . $this->val["errors"]["total_error"] . '
						<a href="" class="icon-close" id="error-alert-close">
							<svg class="woox-icon icon-del"><use xlink:href="/assets/svg-icons/sprites/icons.svg#icon-del"></use></svg>
						</a>
					</div>']);

            }

        }

        public function Login() {
            $username = $_POST['username'];
            $password = $_POST['password'];
            $password_hash = hash('sha512', $password);

            // check
            if ( empty($username) || empty($password)) {
                if ( isset($_COOKIE['userID']) ) {
                    unset($_COOKIE['userID']);
                    setcookie('userID', '', TIME() - 60 * 20, '/');
                }
                $this->responseJson(["type"=>'ok', "title"=>'', "message"=>'
					<div class="alert alert--bordered alert-danger animated fadeInRight" role="alert" id="error-alert">
						<div class="alert-icon">
							<svg class="woox-icon icon-del"><use xlink:href="/assets/svg-icons/sprites/icons.svg#icon-del"></use></svg>
						</div>
						<strong>' . $this->val["errors"]['error'] . '</strong>' . $this->val["errors"]['fill_all'] . '
						<a href="" class="icon-close" id="error-alert-close">
							<svg class="woox-icon icon-del"><use xlink:href="/assets/svg-icons/sprites/icons.svg#icon-del"></use></svg>
						</a>
					</div>']);
                die;
            }

            // get user
            $sql_user = $this->con->prepare("SELECT * FROM `users` WHERE `email`=? OR `username`=? AND `password`=?");
            $sql_user->execute(array($username, $username, $password_hash));

            // if exists
            if ($sql_user->rowCount()) {
                $row_user = $sql_user->fetch();
                $id = $row_user['id'];
                $status = $row_user['status'];
                $till = TIME() + 86400 + 1 . @$_POST['remember'];
                // check status
                if ($status == 0) {
                    // result
                    $this->responseJson(["type"=>'ok', "title"=>'', "message"=>'
					<div class="alert alert--bordered alert-danger animated fadeInRight" role="alert" id="error-alert">
						<div class="alert-icon">
							<svg class="woox-icon icon-del"><use xlink:href="/assets/svg-icons/sprites/icons.svg#icon-del"></use></svg>
						</div>
						<strong>' . $this->val["errors"]['error'] . '</strong>Ձեր հաշիվը անվավեր է
						<a href="" class="icon-close" id="error-alert-close">
							<svg class="woox-icon icon-del"><use xlink:href="/assets/svg-icons/sprites/icons.svg#icon-del"></use></svg>
						</a>
					</div>']);
                    die;
                }
                // register session
                setcookie('userID', $id, $till, '/');
                // result
                $this->responseJson(["type"=>'success', "message"=>'Welcome.', "reload"=>'1']);
                die;
            } else {
                if ( isset($_COOKIE['userID']) ) {
                    unset($_COOKIE['userID']);
                    setcookie('userID', '', TIME() - 60 * 20, '/');
                }
                $this->responseJson(["type"=>'ok', "title"=>'', "message"=>'
					<div class="alert alert--bordered alert-danger animated fadeInRight" role="alert" id="error-alert">
						<div class="alert-icon">
							<svg class="woox-icon icon-del"><use xlink:href="/assets/svg-icons/sprites/icons.svg#icon-del"></use></svg>
						</div>
						<strong>' . $this->val["errors"]['error'] . '</strong>Մուտքային տվյալները սխալ են
						<a href="" class="icon-close" id="error-alert-close">
							<svg class="woox-icon icon-del"><use xlink:href="/assets/svg-icons/sprites/icons.svg#icon-del"></use></svg>
						</a>
					</div>']);
            }
        }

        public function logout() {
            if ( isset($_COOKIE['userID']) ) {
                unset($_COOKIE['userID']);
                setcookie('userID', '', TIME() - 60 * 20, '/');
            }
        }

        // Rename images
        public function renameImages ( $dir = '' ) {
            $file = scandir ( $dir );

            for ($i=2; $i < count($file) + 1; $i++) {
                rename( $dir . $file[$i], $dir . $i . '.jpg' );
            }
        }

        // Random image
        public function shuffleImages ( $dir = '', $fulldir = '' ) {
            $file = new FilesystemIterator($dir, FilesystemIterator::SKIP_DOTS);
            $count = iterator_count($file);

            echo $fulldir . rand(1, $count);
        }

        /* --- Database functions */

        // Get database *User function
        public function UserSQL($table = '', $query = '', $count = 1) {

            $sql = $this->con->prepare("SELECT * FROM `$table` $query");
            $sql->execute();

            // Return row
            if($count == 1) {
                return $sql->fetch();
            }

            // Return rows
            else if ($count == 'all') {
                return $sql->fetchAll();
            }
        }

        // Clear function
        public function Data($query = '', $count = 1) {
            $sql = $this->con->prepare("$query");
            $sql->execute();
            // return row
            if($count == 1) {
                return $sql->fetch();
            }
            // return rows
            else if ($count == 'all') {
                return $sql->fetchAll();
            }
        }

        /* End database functions */

        /* --- Photos --- */

        public function editPhoto($group = '', $parent = '', $format = '', $type = 'crop', $y_small = '', $x_small = '', $y_large = '', $x_large = '', $watermark = '') {
            // $group    /*  directory  name                     */
            // $parent   /*  Form data insert (lastInsertId) id  */
            // $format   /*  Image format (.jpg, .png , all...)  */
            // $type     /*  Image 'resize' and 'crop' type      */
            // $y_small  /*  Small image width                   */
            // $x_small  /*  Small image height                  */
            // $y_large  /*  Large image width                   */
            // $x_large  /*  Small image height                  */
            // get admin
            $select = $this->con->prepare("SELECT * FROM `photos` WHERE `parent`=? AND `group`=?");
            $select->execute(array($parent, $group));
            // watermark size
            $lg_watermark_url = 'assets/img/watermark_large.png';
            $sm_watermark_url = 'assets/img/watermark_small.png';

            // if exists
            if ($select->rowCount()) {
                $photo = $select->fetch();
                $name = $photo['id'].".$format";
                $image = new SimpleImage();

                if (isset($_FILES['file'])) {
                    if($type == 'resizeToWidth') {
                        /* resizeToWidth */
                        // Small image
                        if($x_small != '') {
                            $image->load($_FILES['file']['tmp_name']);
                            $image->resizeToWidth($x_small);
                            if ($watermark != '') {
                                $image->watermark('0', '0', $sm_watermark_url);
                            }
                            $image->save("/assets/images/$group/small/$name");
                        }
                        // Large image
                        if ($x_large != '') {
                            $image->load($_FILES['file']['tmp_name']);
                            $image->resizeToWidth($x_large);
                            if ($watermark != '') {
                                $image->watermark('0', '0', $lg_watermark_url);
                            }
                            $image->save("/assets/images/$group/large/$name");
                        }
                    } else {
                        /* Crop Image */
                        // Small image
                        if($y_small != '' && $x_small != '') {
                            $image->load($_FILES['file']['tmp_name']);
                            $image->crop($x_small, $y_small);
                            if ($watermark != '') {
                                $image->watermark('0', '0', $sm_watermark_url);
                            }
                            $image->save("/assets/images/$group/small/$name");
                        }
                        // Large image
                        if ($y_large != '' && $x_large != '') {
                            $image->load($_FILES['file']['tmp_name']);
                            $image->crop($x_large, $y_large);
                            if ($watermark != '') {
                                $image->watermark('0', '0', $lg_watermark_url);
                            }
                            $image->save("/assets/images/$group/large/$name");
                        }
                    }
                }

            } else {
                $this->addPhoto($group, $parent, $format, $type, $y_small, $x_small , $y_large , $x_large);
            }

        }

        public function uploadImage($group = '', $parent = '', $format = '', $size = '') {

            $select = $this->con->prepare("SELECT * FROM `photos` WHERE `parent`=? AND `group`=?");
            $select->execute(array($parent, $group));
            // if exists
            if ($select->rowCount()) {
                $photo = $select->fetch();
                $name = $photo['id'].".$format";
                if ($size != '') {
                    move_uploaded_file ($_FILES['file']['tmp_name'], "/assets/images/$group/$size/$name");
                } else {
                    move_uploaded_file ($_FILES['file']['tmp_name'], "/assets/images/$group/small/$name");
                    move_uploaded_file ($_FILES['file']['tmp_name'], "/assets/images/$group/large/$name");
                }
            } else {
                $this->con->query("INSERT INTO `photos` (`group`, `parent`, `sort`) VALUES ('$group', '$parent', '0')");
                $name = $this->con->lastInsertId().".$format";
                if ($size != '') {
                    move_uploaded_file ($_FILES['file']['tmp_name'], "/assets/images/$group/$size/$name");
                } else {
                    move_uploaded_file ($_FILES['file']['tmp_name'], "/assets/images/$group/small/$name");
                    move_uploaded_file ($_FILES['file']['tmp_name'], "/assets/images/$group/large/$name");
                }

            }
        }

        public function removePhotoID () {
            if(isset($_POST['id']) && isset($_POST['format']))  {
                $format = $_POST['format'];
                $photo = $this->getDataUser("photos","WHERE `id`=".$_POST['id']."");
                if(isset($photo)) {
                    if ($_POST['size'] == 'large' || $_POST['size'] == 'small') {
                        unlink("assets/img/".$photo['group']."/".$_POST['size']."/".$photo['id'].".$format");
                    } else {
                        unlink("assets/img/".$photo['group']."/small/".$photo['id'].".$format");
                        unlink("assets/img/".$photo['group']."/large/".$photo['id'].".$format");
                    }
                    $this->con->query("DELETE FROM `photos` WHERE `id`=".$photo['id']."");
                }

            }

        }

        public function removeData () {

            $table = $_POST['table'];
            $id = $_POST['id'];

            $delete = $this->con->prepare("DELETE  FROM `$table` WHERE `id`=? AND `userID`='".$this->USER['id']."'");
            $delete->execute(array($id));

        }

    }
