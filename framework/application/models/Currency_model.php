<?php

class Currency_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
	}
	
	public function get_currency( $cur_code )
	{
		 $data = array( 'cur_code' => $cur_code );
		 $query = $this->db->get_where( 'currency', $data );
		 return $query->row_array();
	}
	
	public function convert_currency( $cur_from, $cur_to )
	{
		$data = array( 'cur_from' => $cur_from, 'cur_to' => $cur_to );
		$query = $this->db->get_where( 'currency_rates', $data );
		//echo $this->db->last_query();
		return $query->row_array();
	}
	
}