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
		
	}
	
	private function get_currencies()
	{
		$cur = array(
			'ALL' => 'Albania Lek',
            'AFN' => 'Afghanistan Afghani',
            'ARS' => 'Argentina Peso',
            'AWG' => 'Aruba Guilder',
            'AUD' => 'Australia Dollar',
            'AZN' => 'Azerbaijan New Manat',
            'BSD' => 'Bahamas Dollar',
            'BBD' => 'Barbados Dollar',
            'BDT' => 'Bangladeshi taka',
            'BYR' => 'Belarus Ruble',
            'BZD' => 'Belize Dollar',
            'BMD' => 'Bermuda Dollar',
            'BOB' => 'Bolivia Boliviano',
            'BAM' => 'Bosnia and Herzegovina Convertible Marka',
            'BWP' => 'Botswana Pula',
            'BGN' => 'Bulgaria Lev',
            'BRL' => 'Brazil Real',
            'BND' => 'Brunei Darussalam Dollar',
            'KHR' => 'Cambodia Riel',
            'CAD' => 'Canada Dollar'
		);
		
		return $cur;
	}
}