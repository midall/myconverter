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
		$data['cur_options'] = $this->get_currencies();
		$data['cur_history'] = $this->currency_model->get_currency_history();
		//var_dump($data['cur_history']);
		$this->load->view( 'currencies', $data );
	}
	
	public function calculate()
	{
		//var_dump( $this->input->get()  );
		
		$cur_from = $this->input->get( 'cur_from' );
		$cur_to = $this->input->get( 'cur_to' );
		$cur_value = $this->input->get( 'cur_value' );
		
		$from = $this->currency_model->get_currency( $cur_from );
		$to = $this->currency_model->get_currency( $cur_to );
		//var_dump( $from, $to );
		
		$rate = $this->currency_model->convert_currency( $from['cur_id'], $to['cur_id'] );
		
		
		//var_dump( $rate );
		
		$cur_convert = $rate['cur_rate'] * $cur_value;
		
		
		// Log the transaction
		$this->currency_model->save_currency( $from['cur_id'], $to['cur_id'], $cur_value, $cur_convert );
		
		echo $cur_convert;
	}
	
	private function get_currencies()
	{
		$cur = array(
			'AUD' => 'Australia Dollar',
            'BRL' => 'Brazil Real',
            'CAD' => 'Canada Dollar',
            'CUP' => 'Cuba Peso',
            'CZK' => 'Czech Republic Koruna',
            'EUR' => 'Euro Member Countries',
            'FKP' => 'Falkland Islands (Malvinas) Pound',
            'HKD' => 'Hong Kong Dollar',
            'JPY' => 'Japan Yen',
            'KRW' => 'Korea (South) Won',
            'NZD' => 'New Zealand Dollar',
            'PLN' => 'Poland Zloty',
            'RUB' => 'Russia Ruble',
            'SEK' => 'Sweden Krona',
            'CHF' => 'Switzerland Franc',
            'TWD' => 'Taiwan New Dollar',
            'THB' => 'Thailand Baht',
            'TRL' => 'Turkey Lira',
            'GBP' => 'United Kingdom Pound',
            'USD' => 'United States Dollar'
		);
		
		return $cur;
	}
}