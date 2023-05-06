<?php

class Advertisement {
    public $id;
    public $userid;
    public $title;
    public $username;

    public function __construct($id, $userid, $title, $username) {
        $this->id = $id;
        $this->userid = $userid;
        $this->title = $title;
        $this->username = $username;
    }

    public function getId() {
        return $this->id;
      }
      
      public function getUserId() {
        return $this->userid;
      }
    
      public function getTitle() {
        return $this->title;
      }

    
      public function getUsername() {
        return $this->username;
      }
}