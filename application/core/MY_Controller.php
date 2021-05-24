<?php

class MY_Controller extends CI_Controller{
   
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Menus'); 
        if($this->session->userdata('user_id')){

        } else {
            redirect(base_url());
        }
        $this->load->model('Main_model'); 
        if($this->session->userdata('user_id')){

        } else {
            redirect(base_url());
        }
    }
    public function header($title)
    {
        $data['title'] = $title;
        $data['MY_Controller'] = $this;
        $data['parent_nav'] = $this->Menus->fetch_parent_navi();
        $this->load->view('__template/header', $data);
    }

    public function footer()
    {
        $this->load->view('__template/footer');
    }
    public function fetchsidebarChildMenuById($parent_id)
    {
        $child_menus = $this->Menus->fetchChildMenus($parent_id);
        return $child_menus;
    }
}
