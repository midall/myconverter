<?php

class Currency_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
	}
	
	public function get_currencies( )
	{
		 $query = $this->db->get( 'currency' );
		 
		 return $query->result_array();
	}
	
	public function get_currency( $cur_code )
	{
		 $data = array( 'cur_code' => $cur_code );
		 $query = $this->db->get_where( 'currency', $data );
		 
		 return $query->row_array();
	}
	
	public function get_currency_history()
	{
		$limit = 5;
		$offset = 0;
		 
		$this->db->select( 'curfrom.cur_name AS cur_from_name, curto.cur_name AS cur_to_name, his.cur_value, his.cur_convert');
		$this->db->from( 'currency_rates_history AS his' );
		$this->db->join( 'currency AS curfrom', 'curfrom.cur_id = his.cur_from' );
		$this->db->join( 'currency AS curto', 'curto.cur_id = his.cur_from' );
		$this->db->order_by( 'his.cur_date', 'DESC' );
		$this->db->limit( $limit, $offset );
		
		$query = $this->db->get();
		
		return $query->result_array();
	}
	
	public function convert_currency( $cur_from, $cur_to )
	{
		$data = array( 'cur_from' => $cur_from, 'cur_to' => $cur_to );
		$query = $this->db->get_where( 'currency_rates', $data );
		
		return $query->row_array();
	}
	
	public function save_currency( $cur_from, $cur_to, $cur_value, $cur_convert )
	{
		$data = array( 'cur_from' => $cur_from, 'cur_to' => $cur_to, 
						'cur_value' => $cur_value, 'cur_convert' => $cur_convert );
		
		$this->db->insert( 'currency_rates_history', $data );
	}
	
}