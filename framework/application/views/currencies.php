<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome to CodeIgniter</title>

	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/style.css">
	
	<script type = 'text/javascript' src = "<?php echo base_url(); ?>js/jquery-3.2.1.min.js"></script>
	<script type = 'text/javascript' src = "<?php echo base_url(); ?>js/currency.js"></script> 
	<script>var base_url = '<?php echo base_url() ?>';</script>
</head>
<body>

<div id="container">
	<h1>Welcome to Currency converter!</h1>

	<div id="body">
		
		<?php
		
		echo form_open( '', 'class="form_cinverter" id="form_cinverter"' );
		
		echo form_label( 'Enter value:' );
		$data = array( 'name' => 'cur_value', 'id' => 'cur_value',  'value' => 1 );
		echo form_input( $data );
		
		echo form_label( 'Currency from:' );
		$data = array( 'id' => 'cur_from' );
		echo form_dropdown( $data, $cur_options );
		
		$data = array( 'name' => 'Swap', 'id' => 'swap',  'value' => 'Swap' );
		echo form_button( $data, 'Swap' );
		
		echo form_label( 'Currency to:' );
		$data = array( 'id' => 'cur_to' );
		echo form_dropdown( $data, $cur_options );
		
		$js = 'onClick="submit_form()"';
		echo form_button( 'convert', 'Convert', $js);
		
		echo form_close();
		?>

		<p>The result is: <code id="result"></code></p>
	</div>

	<p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds. <?php echo  (ENVIRONMENT === 'development') ?  'CodeIgniter Version <strong>' . CI_VERSION . '</strong>' : '' ?></p>
</div>

</body>
</html>