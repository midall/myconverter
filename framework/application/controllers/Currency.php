<?php

defined( 'BASEPATH' ) OR exit( 'No direct script access allowed' );

class Currency extends CI_Controller
{
	function __construct()
	{ 
        parent::__construct();
		
		// Models
		$this->load->model( 'currency_model' );
		
		// Helpers
		$this->load->helper( 'url' );
		$this->load->helper( 'form' );
    } 
	
	public function index()
	{
		redirect( '' );
	}
	
	public function view_form()
	{
		// Get the data
		$data['cur_options'] = $this->get_currencies();
		$data['cur_history'] = $this->currency_model->get_currency_history();
		
		$this->load->view( 'currencies', $data );
	}
	
	public function calculate()
	{
		$cur_from = $this->input->get( 'cur_from' );
		$cur_to = $this->input->get( 'cur_to' );
		$cur_value = $this->input->get( 'cur_value' );
		$csrf_value = $this->input->get( 'csrf' );
		
		if( $csrf_value != $this->security->get_csrf_hash() )
		{
			redirect( '/' );
		}
		
		$from = $this->currency_model->get_currency( $cur_from );
		$to = $this->currency_model->get_currency( $cur_to );
		
		$rate = $this->currency_model->convert_currency( $from['cur_id'], $to['cur_id'] );
		
		$cur_convert = $rate['cur_rate'] * $cur_value;
		
		// Log the transaction
		$this->currency_model->save_currency( $from['cur_id'], $to['cur_id'], $cur_value, $cur_convert );
		
		echo $cur_convert;
	}
	
	private function get_currencies()
	{
		$rows = $this->currency_model->get_currencies();
		
		$currencies = array();
		foreach( $rows as $row )
		{
			$currencies[$row['cur_code']] = $row['cur_name'];
		}
		
		return $currencies;
	}
}