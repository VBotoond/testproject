<?php
include '../Service/advertisementService.php';

class AdvertisementController {
    protected $advertisementService;
    

    public function __construct() {
        $this->advertisementService = new AdvertisementService();
       
    }

    public function getAllAdvertisements() {
        $advertisements = $this->advertisementService->getAllAdvertisements();
        return $advertisements;
    }
}