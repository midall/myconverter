<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome to CodeIgniter</title>

	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/style.css">
	<script type = 'text/javascript' src = "<?php echo base_url(); ?>js/currency.js"></script> 
	<script type = 'text/javascript' src = "<?php echo base_url(); ?>js/jquery-3.2.1.min.js"></script>
	<script>var base_url = '<?php echo base_url() ?>';</script>
</head>
<body>

<div id="container">
	<h1>Welcome to Currency converter!</h1>

	<div id="body">
		
		<?php
		
		echo form_open( '', 'class="form_cinverter" id="form_cinverter"' );
		
		echo form_label( 'Enter value:' );
		echo form_input( 'cur_value', 1 );
		
		echo form_label( 'Currency from:' );
		echo form_dropdown( 'cur_from', $cur_options );
		
		echo form_label( 'Currency to:' );
		echo form_dropdown( 'cur_to', $cur_options );
		
		$js = 'onClick="submit_form()"';
		echo form_button( 'convert', 'Convert', $js);
		
		echo form_close();
		?>

		<p>The corresponding controller for this page is found at:</p>
		<code>application/controllers/Welcome.php</code>

	</div>

	<p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds. <?php echo  (ENVIRONMENT === 'development') ?  'CodeIgniter Version <strong>' . CI_VERSION . '</strong>' : '' ?></p>
</div>

</body>
</html>