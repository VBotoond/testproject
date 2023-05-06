<?php
include '../Model/database.php';
include '../Model/user.php';
include '../Model/advertisement.php';
class AdvertisementService {

protected $db;

public function __construct() {
    $this->db = new Database();

}

/**
 * Retrieves a list of all advertisements, along with the name of the user who created each advertisement.
 * @return array An array of Advertisement objects, each representing a row from the "advertisements" table in the database.
 */

function getAllAdvertisements(){

    $advertisementList=array();
    $result= $this->db->conn->query("SELECT advertisements.*, users.name FROM advertisements JOIN users ON advertisements.userid=users.id");
    
    if($result){
        while($row = $result->fetch_assoc()){
             $user= new Advertisement($row["id"], $row["userid"], $row["title"], $row["name"]);
             array_push($advertisementList, $user);
        }
        $result->free();
    }
    
    return $advertisementList;
}
}