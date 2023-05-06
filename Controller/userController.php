<?php
include '../Service/userService.php';

class UserController {
    protected $userService;
    

    public function __construct() {
        $this->userService = new UserService();
       
    }

    public function getAllUsers() {
        $users = $this->userService->getAllUsers();
        return $users;
    }
}