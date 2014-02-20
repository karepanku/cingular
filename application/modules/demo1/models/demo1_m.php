<?php

class Demo1_m extends CI_Model {
  function __construct() {
    parent::__construct();
  }

  function get_json_data() {
    $this->db->select();
    $this->db->from('temp');
    $this->db->order_by('name');
    $query = $this->db->get();

    return $query->result();
  }
}