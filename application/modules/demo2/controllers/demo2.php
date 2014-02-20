<?php

class Demo2 extends CI_Controller {
  function __construct() {
    parent::__construct();
  }

  function index() {
    $data['pagetitle'] = 'Demo page for Angular JS';
    $data['viewname'] = 'index_v';
    $data['scripts']['demo2'] = 'demo2';

    $this->load->view('master',$data);
  }
  
  function view1() {
    $this->load->view('demo2/partial_one');
  }
  
  function view2() {
    $this->load->view('demo2/partial_two');
  }
  
  function select_entries() {
    // Checking if post data is available
    if (isset($_POST['auth']) && $_POST['auth'] == 1) {
      $this->load->model('demo2_m');
      $data = $this->demo2_m->get_entries_by_state($this->input->post('state'));
      
      print json_encode($data);
    }
  }
}