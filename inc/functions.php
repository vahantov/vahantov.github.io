<?php
// decode HTML symbols and br-s
function decodeText ($str, $htmlspecialchars = true, $strip_tags = true) {
    if ($htmlspecialchars) {
        $str = htmlspecialchars_decode($str);
      /*  if ($strip_tags) {
            $str = strip_tags($str);
        }*/
    } else {
        $str = htmlspecialchars_decode($str);
    }
    return nl2br($str);
}
// image upload
function addImage($file, $path, $width, $height, $type, $watermark) {
    // SimpleImage class
    $image = new SimpleImage();
    // load file
    $image->load($file);
    // resize
    if ($type == 'resize') {
        if ($image->getWidth() >= $image->getHeight()) {
            $image->resizeToHeight($height);
            if ($image->getWidth() > $width) {
                $image->resizeToWidth($width);
            }
        } else {
            $image->resizeToWidth($width);
            if ($image->getHeight() > $height) {
                $image->resizeToHeight($height);
            }
        }
    }
    // resize to width
    if ($type == 'resizeToWidth') {
        if ($image->getWidth() > $width) {
            $image->resizeToWidth($width);
        }
    }
    // crop
    if($type == 'crop'){
        $image->crop($width, $height);
    }
    if($watermark === true){
        $image->watermark(20, 20, "assets/img/watermark.png");
    }
    $image->save($path);
}
// password generator
function passwordGenerator($count) {
    $mixer = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%*_-+=";
    $pwd = substr(str_shuffle($mixer), 0, $count);
    return $pwd;
}

// send email
function sendMailSmtp($email, $subject, $message, $sendEmail = '', $sendName = '',  $file = '') {
    // Original PHPMailer - https://github.com/PHPMailer/PHPMailer
    require_once('lib/PHPMailer/class.phpmailer.php');
    require_once('lib/PHPMailer/class.smtp.php');
    // PHPMailer
    $mail = new PHPMailer();
    // Can use SMTP
    $mail->IsSMTP();
    $mail->isHTML();
    $mail->Host     = ''; // TODO Project email
    $mail->SMTPSecure = 'ssl';
    $mail->Port     = '465';
    $mail->SMTPAuth = true;
    $mail->Username = ''; // TODO Project email
    $mail->Password = ''; // TODO Project email password
    // Sender
    if($sendEmail != '' && $sendName != '') {
        $mail->AddReplyTo($sendEmail,$sendName);
    }
    // Params
    $mail->FromName = 'support@hnchak.am'; // TODO Email
    $mail->From     = 'support@hnchak.am'; // TODO Email
    $mail->AddAddress($email);
    $mail->Subject  = $subject;
    $mail->Body     = $message;
    // File attachment
    if(!empty($file)){
        if(isset($file['tmp_name'])){
            $mail->AddAttachment($file['tmp_name'], $file['name']);
        }else{
            $mail->AddStringAttachment($file["body"], $file["name"], 'base64', 'application/octet-stream');
        }
    }
    // Send
    $result = $mail->Send();
    // Result
    return $result;
}

// send sms via mobipace.com
function sendSms($phone, $message){
    $phone = "374".substr(preg_replace('/[\/(\/)\- ]/', '', $phone), 1);
    $body = preg_replace('/ /', '+', $message);
    get_headers('https://www.mobipace.com/API_2_0/HTTP_API.aspx?function=send&username=[USERNAME]&password=[PASSWORD]&sender=[SENDER]&recipient='.$phone.'&body='.$body.'');
}

// ? secure post/get data
function checkVariable($value) {
    if(is_array($value)) {
        return array_map(function($item) {
            return checkVariable($item);
        }, $value);
    } else {
        $item = addslashes($value);
        $item = trim($item);
        if(isset($_POST) && !empty($_POST)){
            $item = htmlspecialchars($item);
            $item = preg_replace("/[\n\r]{3,}/","\r\r", $item);
        }
        return $item;
    }
}
?>
