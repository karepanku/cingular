<?php 

class Demo2_m extends CI_Model {
  protected $table_name;
  
  function __construct() {
    parent::__construct();
    $this->table_name = 'temp';
  }
  
  function get_entries_by_state($state) {
    $this->db->select();
    $this->db->from($this->table_name);
    $this->db->where('state',$state);
    $query = $this->db->get();
    
    return $query->result();
  }
}