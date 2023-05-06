<?php
    include '../Model/database.php';
    include '../Model/user.php';
   
   class UserService{
   
    protected $db;


   /**
    * Constructor for the UserController class.
    *Initializes a new instance of the UserController class and creates a new
    *instance of the Database class to establish a connection to the database.
    *@return void
    */

    public function __construct() {
    $this->db = new Database();

    }

    /**
     * Returns an array of User objects representing all users in the database.
     * 
     * @return User[] An array of User objects representing all users in the database.
     */
    function getAllUsers(){
       
        $userList=array();
        $result =$this->db->conn->query("SELECT * FROM users");
        
        if($result){
            while($row = $result->fetch_assoc()){
                 $user= new User($row["id"], $row["name"]);
                 array_push($userList, $user);
            }
            $result->free();
        }
        
        return $userList;
    }

}
