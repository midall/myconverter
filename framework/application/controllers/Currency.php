<?php

defined( 'BASEPATH' ) OR exit( 'No direct script access allowed' );

class Currency extends CI_Controller
{
	function __construct()
	{ 
        parent::__construct();
		
		
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
		
		$this->load->view( 'currencies', $data );
	}
	
	public function calculate()
	{
		echo 'convert';
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