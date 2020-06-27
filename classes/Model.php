<?php
abstract class Model{

    protected $con;
    public $lang;
    public $val;

    public function __construct(){
            // settings local

             $dsn = 'mysql:host=w0rtex.beget.tech; dbname=w0rtex_psp';
             $username = 'w0rtex_psp';
             $password = 'Printsprint1';

            // PDO options
            $opt = array(
                PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES UTF8, time_zone = '+04:00'"
            );
            // connection
            try {
                $this->con = new PDO($dsn, $username, $password, $opt);
            } catch(PDOException $e) {
                echo 'Connection failed: '.$e->getMessage();
            }

    }

    /*--- GET DATA ---*/
    public function getDataModel($table = '', $query = '', $count = 1) {
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


    /******* ALL *******/

    protected function responseJson($_args = []){
        $data = [
            "messageType"=>$_args['type'],
            "message"=>$_args['message'],
            "reload" => (isset($_args['reload']) && !empty($_args['reload'])) ? $_args['reload'] : false,
            "href" => (isset($_args['href']) && !empty($_args['href'])) ? $_args['href'] : false,
            "reset" => (isset($_args['reset']) && !empty($_args['reset'])) ? $_args['reset'] : false,
        ];
        echo json_encode($data);
    }

}
?>
