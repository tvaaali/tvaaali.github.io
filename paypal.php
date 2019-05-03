

<?php
	//error_reporting(0);
	error_reporting(E_ALL);
	ini_set('display_errors', 1);
	
	date_default_timezone_set('UTC');
	$session_lifetime = 3600 * 24 * 2; // 2 days
	session_set_cookie_params ($session_lifetime);
	session_start();

	




  //require_once('config.php');
  $sandbox = TRUE;
 
// Set PayPal API version and credentials.
$api_version = '85.0';
$api_endpoint = $sandbox ? 'https://api-3t.sandbox.paypal.com/nvp' : 'https://api-3t.paypal.com/nvp';
$api_username = $sandbox ? 'tvaaali-facilitator_api1.gmail.com' : 'LIVE_USERNAME_GOES_HERE';
$api_password = $sandbox ? 'BHCTLN4P76X84T6P' : 'LIVE_PASSWORD_GOES_HERE';
$api_signature = $sandbox ? 'AWlyEipXf-Cd7BwhhJmWKneE6BPrAXZbc.gXh-HlEgH1i4mTQzBCwHwU' : 'LIVE_SIGNATURE_GOES_HERE';
  
  // Store request params in an array
$request_params = array
                    (
                    'METHOD' => 'DoDirectPayment', 
                    'USER' => $api_username, 
                    'PWD' => $api_password, 
                    'SIGNATURE' => $api_signature, 
                    'VERSION' => $api_version, 
                    'PAYMENTACTION' => 'Sale',                   
                    'IPADDRESS' => $_SERVER['REMOTE_ADDR'],
                    'CREDITCARDTYPE' => 'MasterCard', 
                    'ACCT' => '5297163654438941', 
                    'EXPDATE' => '062016',           
                    'CVV2' => '689', 
                    'FIRSTNAME' => 'Tester', 
                    'LASTNAME' => 'Testerson', 
                    'STREET' => '813 Oakes', 
                    'CITY' => 'Palo Alto', 
                    'STATE' => 'CA',                     
                    'COUNTRYCODE' => 'US', 
                    'ZIP' => '94303', 
                    'AMT' => '85.00', 
                    'CURRENCYCODE' => 'USD', 
                    'DESC' => 'Testing Payments Pro'
                    );
					
					
// Loop through $request_params array to generate the NVP string.
$nvp_string = '';
foreach($request_params as $var=>$val)
{
    $nvp_string .= '&'.$var.'='.urlencode($val);    
}			

echo $nvp_string;


// Send NVP string to PayPal and store response
$curl = curl_init();
        curl_setopt($curl, CURLOPT_VERBOSE, 1);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($curl, CURLOPT_TIMEOUT, 30);
        curl_setopt($curl, CURLOPT_URL, $api_endpoint);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $nvp_string);
 
$result = curl_exec($curl);     
curl_close($curl);	


// Parse the API response
$nvp_response_array = parse_str($result);

//echo ("Result:" . $result);


//echo ("REspomse:" . $nvp_response_array);
//parse_str($result);
//print_r ($result);
$result_array = NVPToArray($result);
echo '<pre / >';
print_r ($result_array);
// Function to convert NTP string to an array


	
function NVPToArray($NVPString){
    $proArray = array();
    while(strlen($NVPString))
    {
        // name
        $keypos= strpos($NVPString,'=');
        $keyval = substr($NVPString,0,$keypos);
        // value
        $valuepos = strpos($NVPString,'&') ? strpos($NVPString,'&'): strlen($NVPString);
        $valval = substr($NVPString,$keypos+1,$valuepos-$keypos-1);
        // decoding the respose
        $proArray[$keyval] = urldecode($valval);
        $NVPString = substr($NVPString,$valuepos+1,strlen($NVPString));
    }
    return $proArray;
}