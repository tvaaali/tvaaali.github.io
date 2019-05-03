  <?php

ini_set("log_errors", 1);
ini_set("error_log", "webhook_errors-LIVE.log");

error_reporting(E_ALL);
//error_reporting(0);

function logToFile( $msg) {
	$filename = "webhook_LIVE.log";
	$fd = fopen($filename, "a");
	$str = "[" . date("Y/m/d h:i:s", time()) . "] " . $msg;
	fwrite($fd, $str . "\n");
	fclose($fd);
}


$to      = 'tvaaali@gmail.com';
$subject = 'Neoart.ro Web Hook - LIVE';
$message = "Bant webhook GET message: <br> \n" . json_encode($_GET)
	. " \n <br> POST message: <br> \n" . json_encode($_POST);
	// . " \n <br> Stripe message: <br> \n" . json_encode($event);

$headers =
	'From:' . "tvaaali@gmail.com" . "\r\n" .
	// 'Reply-To: ' . "contact@bant.com" . "\r\n" ;
	//	. 'X-Mailer: PHP/' . phpversion();
//echo json_encode(print_r($_GET));
//$message = $input;

logToFile("*****Event:" . json_encode($event));
mail($to, $subject, $message, $headers);
	// $filepath = 'invoices/'.$customer_email;
	// if (!file_exists($filepath)) {
	// 	mkdir($filepath, 0777, true);
	// }
	// if (!file_exists($filepath)) {
	// 	mkdir($filepath, 0777, true);
	// }

	// $proRows = '';
	// $totalAm = '';
http_response_code(200); /*// PHP 5.4 or greater */

function httpPost($url, $data){
   $curl = curl_init($url);
   curl_setopt($curl, CURLOPT_POST, true);
   curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
   curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
   $response = curl_exec($curl);
   curl_close($curl);
   return $response;
}

// hmac-sha1 code END