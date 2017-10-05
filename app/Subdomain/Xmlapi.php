<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 7/25/16
 * Time: 4:04 PM
 */

namespace Erp\Subdomain;


class Xmlapi
{
    private $debug			= false;
    private $host				=	'127.0.0.1';
    private $port				=	'2087';
    private $protocol		=	'https';
    private $output		=	'simplexml';
    private $auth_type 	= null;
    private $auth 			= null;
    private $user				= null;
    private $http_client		= 'curl';
    public function __construct($host = null, $user = null, $password = null )
    {
        if ( (defined('XMLAPI_DEBUG')) && (XMLAPI_DEBUG == '1') ) {
            $this->debug = true;
        }
        if ( (defined('XMLAPI_RAW_XML')) && (XMLAPI_RAW_XML == '1') ) {
            $this->raw_xml = true;
        }
        if ( ( defined('XMLAPI_USER') ) && ( strlen(XMLAPI_USER) > 0 ) ) {
            $this->user = XMLAPI_USER;
            if ( ( defined('XMLAPI_PASS') ) && ( strlen(XMLAPI_PASS) > 0 ) ) {
                $this->auth_type = 'pass';
                $this->auth = XMLAPI_PASS;
            }
            if ( ( defined('XMLAPI_HASH') ) && ( strlen(XMLAPI_HASH) > 0 ) ) {
                $this->auth_type = 'hash';
                $this->auth = preg_replace("/(\n|\r|\s)/", '', XMLAPI_HASH);
            }
            if ( ( ( defined('XMLAPI_HASH') ) && ( strlen(XMLAPI_HASH) > 0 ) )
                && ( ( defined('XMLAPI_PASS') ) && ( strlen(XMLAPI_PASS) > 0 ) ) ) {
                error_log('warning: both XMLAPI_HASH and XMLAPI_PASS are defined, defaulting to XMLAPI_HASH');
            }
            if ( !(defined('XMLAPI_HASH') ) || !defined('XMLAPI_PASS') ) {
                error_log('warning: XMLAPI_USER set but neither XMLAPI_HASH or XMLAPI_PASS have not been defined');
            }
        }
        if ( ( $user != null ) && ( strlen( $user ) < 9 ) ) {
            $this->user = $user;
        }
        if ($password != null) {
            $this->set_password($password);
        }
        if ($host == null) {
            if ( (defined('XMLAPI_HOST')) && (strlen(XMLAPI_HOST) > 0) ) {
                $this->host = XMLAPI_HOST;
            } else {
                throw new Exception("No host defined");
            }
        } else {
            $this->host = $host;
        }
        if ( defined('XMLAPI_USE_SSL' ) && (XMLAPI_USE_SSL == '0' ) ) {
            $this->protocol = "http";
        }
        if ( function_exists('curl_setopt') ) {
            $this->http_client = "curl";
        } elseif ( ini_get('allow_url_fopen') ) {
            $this->http_client = "fopen";
        } else {
            throw new Exception('allow_url_fopen and curl are neither available in this PHP configuration');
        }
    }
    public function get_debug()
    {
        return $this->debug;
    }
    public function set_debug( $debug = 1 )
    {
        $this->debug = $debug;
    }
    public function get_host()
    {
        return $this->host;
    }
    public function set_host( $host )
    {
        $this->host = $host;
    }
    public function get_port()
    {
        return $this->port;
    }
    public function set_port( $port )
    {
        if ( !is_int( $port ) ) {
            $port = intval($port);
        }
        if ($port < 1 || $port > 65535) {
            throw new Exception('non integer or negative integer passed to set_port');
        }
        if ($port == '2086' || $port == '2082' || $port == '80' || $port == '2095') {
            $this->set_protocol('http');
        }
        $this->port = $port;
    }
    public function get_protocol()
    {
        return $this->protocol;
    }
    public function set_protocol( $proto )
    {
        if ($proto != 'https' && $proto != 'http') {
            throw new Exception('https and http are the only protocols that can be passed to set_protocol');
        }
        $this->protocol = $proto;
    }
    public function get_output()
    {
        return $this->output;
    }
    public function set_output( $output )
    {
        if ($output != 'json' && $output != 'xml' && $output != 'array' && $output != 'simplexml') {
            throw new Exception('json, xml, array and simplexml are the only allowed values for set_output');
        }
        $this->output = $output;
    }
    public function get_auth_type()
    {
        return $this->auth_type;
    }
    public function set_auth_type( $auth_type )
    {
        if ($auth_type != 'hash' && $auth_type != 'pass') {
            throw new Exception('the only two allowable auth types arehash and path');
        }
        $this->auth_type = $auth_type;
    }
    public function set_password( $pass )
    {
        $this->auth_type = 'pass';
        $this->auth = $pass;
    }
    public function set_hash( $hash )
    {
        $this->auth_type = 'hash';
        $this->auth = preg_replace("/(\n|\r|\s)/", '', $hash);
    }
    public function get_user()
    {
        return $this->user;
    }
    public function set_user( $user )
    {
        $this->user = $user;
    }
    public function hash_auth( $user, $hash )
    {
        $this->set_hash( $hash );
        $this->set_user( $user );
    }
    public function password_auth( $user, $pass )
    {
        $this->set_password( $pass );
        $this->set_user( $user );
    }
    public function return_xml()
    {
        $this->set_output('xml');
    }
    public function return_object()
    {
        $this->set_output('simplexml');
    }
    public function set_http_client( $client )
    {
        if ( ( $client != 'curl' ) && ( $client != 'fopen' ) ) {
            throw new Exception('only curl and fopen and allowed http clients');
        }
        $this->http_client = $client;
    }
    public function get_http_client()
    {
        return $this->http_client;
    }
    public function xmlapi_query( $function, $vars = array() )
    {
        if (!$function) {
            throw new Exception('xmlapi_query() requires a function to be passed to it');
        }
        if ($this->user == null) {
            throw new Exception('no user has been set');
        }
        if ($this->auth ==null) {
            throw new Exception('no authentication information has been set');
        }
        $query_type = '/xml-api/';
        if ($this->output == 'json') {
            $query_type = '/json-api/';
        }
        $args = http_build_query($vars, '', '&');
        $url =  $this->protocol . '://' . $this->host . ':' . $this->port . $query_type . $function;
        if ($this->debug) {
            error_log('URL: ' . $url);
            error_log('DATA: ' . $args);
        }
        $authstr = NULL;
        if ($this->auth_type == 'hash') {
            $authstr = 'Authorization: WHM ' . $this->user . ':' . $this->auth . "\r\n";
        } elseif ($this->auth_type == 'pass') {
            $authstr = 'Authorization: Basic ' . base64_encode($this->user .':'. $this->auth) . "\r\n";
        } else {
            throw new Exception('invalid auth_type set');
        }
        if ($this->debug) {
            error_log("Authentication Header: " . $authstr ."\n");
        }
        $response = NULL;
        if ($this->http_client == 'curl') {
            $response = $this->curl_query($url, $args, $authstr);
        } elseif ($this->http_client == 'fopen') {
            $response = $this->fopen_query($url, $args, $authstr);
        }
        if ($this->debug) {
            error_log("RESPONSE:\n " . $response);
        }
        if (stristr($response, '<html>') == true) {
            if (stristr($response, 'Login Attempt Failed') == true) {
                error_log("Login Attempt Failed");
                return;
            }
            if (stristr($response, 'action="/login/"') == true) {
                error_log("Authentication Error");
                return;
            }
            return;
        }
        if ( ($this->output == 'simplexml') || $this->output == 'array') {
            $response = simplexml_load_string($response, null, LIBXML_NOERROR | LIBXML_NOWARNING);
            if (!$response) {
                error_log("Some error message here");

                return;
            }
            if ($this->debug) {
                error_log("SimpleXML var_dump:\n" . print_r($response, true));
            }
        }
        if ($this->output == 'array') {
            $response = $this->unserialize_xml($response);
            if ($this->debug) {
                error_log("Associative Array var_dump:\n" . print_r($response, true));
            }
        }
        return $response;
    }
    private function curl_query( $url, $postdata, $authstr )
    {
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_BUFFERSIZE, 131072);
        $header[0] =$authstr .
            "Content-Type: application/x-www-form-urlencoded\r\n" .
            "Content-Length: " . strlen($postdata) . "\r\n" . "\r\n" . $postdata;
        curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
        curl_setopt($curl, CURLOPT_POST, 1);
        $result = curl_exec($curl);
        if ($result == false) {
            throw new Exception("curl_exec threw error \"" . curl_error($curl) . "\" for " . $url . "?" . $postdata );
        }
        curl_close($curl);
        return $result;
    }
    private function fopen_query( $url, $postdata, $authstr )
    {
        if ( !(ini_get('allow_url_fopen') ) ) {
            throw new Exception('fopen_query called on system without allow_url_fopen enabled in php.ini');
        }
        $opts = array(
            'http' => array(
                'allow_self_signed' => true,
                'method' => 'POST',
                'header' => $authstr .
                    "Content-Type: application/x-www-form-urlencoded\r\n" .
                    "Content-Length: " . strlen($postdata) . "\r\n" .
                    "\r\n" . $postdata
            )
        );
        $context = stream_context_create($opts);
        return file_get_contents($url, false, $context);
    }
    private function unserialize_xml($input, $callback = null, $recurse = false)
    {
        $data = ( (!$recurse) && is_string($input) ) ? simplexml_load_string($input) : $input;
        if ($data instanceof SimpleXMLElement) {
            $data = (array) $data;
        }
        if (is_array($data)) {
            foreach ($data as &$item) {
                $item = $this->unserialize_xml($item, $callback, true);
            }
        }
        return (!is_array($data) && is_callable($callback)) ? call_user_func($callback, $data) : $data;
    }
    public function api1_query($user, $module, $function, $args = array() )
    {
        if ( !isset($module) || !isset($function) || !isset($user) ) {
            error_log("api1_query requires that a module and function are passed to it");
            return false;
        }
        if (!is_array($args)) {
            error_log('api1_query requires that it is passed an array as the 4th parameter');
            return false;
        }
        $cpuser = 'cpanel_xmlapi_user';
        $module_type = 'cpanel_xmlapi_module';
        $func_type = 'cpanel_xmlapi_func';
        $api_type = 'cpanel_xmlapi_apiversion';
        if ( $this->get_output() == 'json' ) {
            $cpuser = 'cpanel_jsonapi_user';
            $module_type = 'cpanel_jsonapi_module';
            $func_type = 'cpanel_jsonapi_func';
            $api_type = 'cpanel_jsonapi_apiversion';
        }
        $call = array(
            $cpuser => $user,
            $module_type => $module,
            $func_type => $function,
            $api_type => '1'
        );
        for ($int = 0; $int < count($args);  $int++) {
            $call['arg-' . $int] = $args[$int];
        }
        return $this->xmlapi_query('cpanel', $call);
    }
    public function api2_query($user, $module, $function, $args = array())
    {
        if (!isset($user) || !isset($module) || !isset($function) ) {
            error_log("api2_query requires that a username, module and function are passed to it");
            return false;
        }
        if (!is_array($args)) {
            error_log("api2_query requires that an array is passed to it as the 4th parameter");
            return false;
        }
        $cpuser = 'cpanel_xmlapi_user';
        $module_type = 'cpanel_xmlapi_module';
        $func_type = 'cpanel_xmlapi_func';
        $api_type = 'cpanel_xmlapi_apiversion';
        if ( $this->get_output() == 'json' ) {
            $cpuser = 'cpanel_jsonapi_user';
            $module_type = 'cpanel_jsonapi_module';
            $func_type = 'cpanel_jsonapi_func';
            $api_type = 'cpanel_jsonapi_apiversion';
        }
        $args[$cpuser] = $user;
        $args[$module_type] = $module;
        $args[$func_type] = $function;
        $args[$api_type] = '2';
        return $this->xmlapi_query('cpanel', $args);
    }
    public function applist()
    {
        return $this->xmlapi_query('applist');
    }
    public function createacct($acctconf)
    {
        if (!is_array($acctconf)) {
            error_log("createacct requires that first parameter passed to it is an array");
            return false;
        }
        if (!isset($acctconf['username']) || !isset($acctconf['password']) || !isset($acctconf['domain'])) {
            error_log("createacct requires that username, password & domain elements are in the array passed to it");
            return false;
        }
        return $this->xmlapi_query('createacct', $acctconf);
    }
    public function passwd($username, $pass)
    {
        if (!isset($username) || !isset($pass)) {
            error_log("passwd requires that an username and password are passed to it");
            return false;
        }
        return $this->xmlapi_query('passwd', array('user' => $username, 'pass' => $pass));
    }
    public function limitbw($username, $bwlimit)
    {
        if (!isset($username) || !isset($bwlimit)) {
            error_log("limitbw requires that an username and bwlimit are passed to it");
            return false;
        }
        return $this->xmlapi_query('limitbw', array('user' => $username, 'bwlimit' => $bwlimit));
    }
    public function listaccts($searchtype = null, $search = null)
    {
        if ($search) {
            return $this->xmlapi_query('listaccts', array('searchtype' => $searchtype, 'search' => $search ));
        }
        return $this->xmlapi_query('listaccts');
    }
    public function modifyacct($username, $args = array())
    {
        if (!isset($username)) {
            error_log("modifyacct requires that username is passed to it");
            return false;
        }
        $args['user'] = $username;
        if (sizeof($args) < 2) {
            error_log("modifyacct requires that at least one attribute is passed to it");
            return false;
        }
        return $this->xmlapi_query('modifyacct', $args);
    }
    public function editquota($username, $quota)
    {
        if (!isset($username) || !isset($quota)) {
            error_log("editquota requires that an username and quota are passed to it");
            return false;
        }
        return $this->xmlapi_query('editquota', array('user' => $username, 'quota' => $quota));
    }
    public function accountsummary($username)
    {
        if (!isset($username)) {
            error_log("accountsummary requires that an username is passed to it");
            return false;
        }
        return $this->xmlapi_query('accountsummary', array('user' => $username));
    }
    public function suspendacct($username, $reason = null)
    {
        if (!isset($username)) {
            error_log("suspendacct requires that an username is passed to it");
            return false;
        }
        if ($reason) {
            return $this->xmlapi_query('suspendacct', array('user' => $username, 'reason' => $reason ));
        }
        return $this->xmlapi_query('suspendacct', array('user' => $username));
    }
    public function listsuspended()
    {
        return $this->xmlapi_query('listsuspended');
    }
    public function removeacct($username, $keepdns = false)
    {
        if (!isset($username)) {
            error_log("removeacct requires that a username is passed to it");
            return false;
        }
        if ($keepdns) {
            return $this->xmlapi_query('removeacct', array('user' => $username, 'keepdns' => '1'));
        }
        return $this->xmlapi_query('removeacct', array('user' => $username));
    }
    public function unsuspendacct($username)
    {
        if (!isset($username)) {
            error_log("unsuspendacct requires that a username is passed to it");
            return false;
        }
        return $this->xmlapi_query('unsuspendacct', array('user' => $username));
    }
    public function changepackage($username, $pkg)
    {
        if (!isset($username) || !isset($pkg)) {
            error_log("changepackage requires that username and pkg are passed to it");
            return false;
        }
        return $this->xmlapi_query('changepackage', array('user' => $username, 'pkg' => $pkg));
    }
    public function myprivs()
    {
        return $this->xmlapi_query('myprivs');
    }
    public function domainuserdata( $domain )
    {
        if (!isset( $domain ) ) {
            error_log("domainuserdata requires that domain is passed to it");
            return false;
        }
        return $this->xmlapi_query("domainuserdata", array( 'domain' => $domain ) );
    }
    public function setsiteip ( $ip, $user = null, $domain = null )
    {
        if ( !isset($ip) ) {
            error_log("setsiteip requires that ip is passed to it");
            return false;
        }
        if ($user == null && $domain == null) {
            error_log("setsiteip requires that either domain or user is passed to it");
            return false;
        }
        if ($user == null) {
            return $this->xmlapi_query( "setsiteip", array( "ip" => $ip, "domain" => $domain ) );
        } else {
            return $this->xmlapi_query( "setsiteip", array( "ip" => $ip, "user" => $user ) );
        }
    }
    public function adddns($domain, $ip)
    {
        if (!isset($domain) || !isset($ip)) {
            error_log("adddns require that domain, ip are passed to it");
            return false;
        }
        return $this->xmlapi_query('adddns', array('domain' => $domain, 'ip' => $ip));
    }
    public function addzonerecord( $zone, $args )
    {
        if (!is_array($args)) {
            error_log("addzonerecord requires that $args passed to it is an array");
            return;
        }
        $args['zone'] = $zone;
        return $this->xmlapi_query('addzonerecord', $args);
    }
    public function editzonerecord( $zone, $line, $args )
    {
        if (!is_array($args)) {
            error_log("editzone requires that $args passed to it is an array");
            return;
        }
        $args['domain'] = $zone;
        $args['Line'] = $line;
        return $this->xmlapi_query('editzonerecord', $args);
    }
    public function getzonerecord( $zone, $line )
    {
        return $this->xmlapi_query('getzonerecord', array( 'domain' => $zone, 'Line' => $line ) );
    }
    public function killdns($domain)
    {
        if (!isset($domain)) {
            error_log("killdns requires that domain is passed to it");
            return false;
        }
        return $this->xmlapi_query('killdns', array('domain' => $domain));
    }
    public function listzones()
    {
        return $this->xmlapi_query('listzones');
    }
    public function dumpzone($domain)
    {
        if (!isset($domain)) {
            error_log("dumpzone requires that a domain is passed to it");
            return false;
        }
        return $this->xmlapi_query('dumpzone', array('domain' => $domain));
    }
    public function lookupnsip($nameserver)
    {
        if (!isset($nameserver)) {
            error_log("lookupnsip requres that a nameserver is passed to it");
            return false;
        }
        return $this->xmlapi_query('lookupnsip', array('nameserver' => $nameserver));
    }
    public function removezonerecord($zone, $line)
    {
        if ( !isset($zone) || !isset($line) ) {
            error_log("removezone record requires that a zone and line number is passed to it");
            return false;
        }
        return $this->xmlapi_query('removezonerecord', array('zone' => $zone, 'Line' => $line) );
    }
    public function resetzone($domain)
    {
        if ( !isset($domain) ) {
            error_log("resetzone requires that a domain name is passed to it");
            return false;
        }
        return $this->xmlapi_query('resetzone', array('domain' => $domain));
    }
    public function addpkg($pkg)
    {
        if (!isset($pkg['name'])) {
            error_log("addpkg requires that name is defined in the array passed to it");
            return false;
        }
        return $this->xmlapi_query('addpkg', $pkg);
    }
    public function killpkg($pkgname)
    {
        if (!isset($pkgname)) {
            error_log("killpkg requires that the package name is passed to it");
            return false;
        }
        return $this->xmlapi_query('killpkg', array('pkg' => $pkgname));
    }
    public function editpkg($pkg)
    {
        if (!isset($pkg['name'])) {
            error_log("editpkg requires that name is defined in the array passed to it");
            return false;
        }
        return $this->xmlapi_query('editpkg', $pkg);
    }
    public function listpkgs()
    {
        return $this->xmlapi_query('listpkgs');
    }
    public function setupreseller($username, $makeowner = true)
    {
        if (!isset($username)) {
            error_log("setupreseller requires that username is passed to it");
            return false;
        }
        if ($makeowner) {
            return $this->xmlapi_query('setupreseller', array('user' => $username, 'makeowner' => '1'));
        }
        return $this->xmlapi_query('setupreseller', array('user' => $username, 'makeowner' => '0'));
    }
    public function saveacllist($acl)
    {
        if (!isset($acl['acllist'])) {
            error_log("saveacllist requires that acllist is defined in the array passed to it");
            return false;
        }
        return $this->xmlapi_query('saveacllist', $acl);
    }
    public function listacls()
    {
        return $this->xmlapi_query('listacls');
    }
    public function listresellers()
    {
        return $this->xmlapi_query('listresellers');
    }
    public function resellerstats($username)
    {
        if (!isset($username)) {
            error_log("resellerstats requires that a username is passed to it");
            return false;
        }
        return $this->xmlapi_query('resellerstats', array('reseller' => $username));
    }
    public function unsetupreseller($username)
    {
        if (!isset($username)) {
            error_log("unsetupreseller requires that a username is passed to it");
            return false;
        }
        return $this->xmlapi_query('unsetupreseller', array('user' => $username));
    }
    public function setacls($acl)
    {
        if (!isset($acl['reseller'])) {
            error_log("setacls requires that reseller is defined in the array passed to it");
            return false;
        }
        return $this->xmlapi_query('setacls', $acl);
    }
    public function terminatereseller($reseller, $terminatereseller = true)
    {
        if (!isset($reseller)) {
            error_log("terminatereseller requires that username is passed to it");
            return false;
        }
        $verify = 'I understand this will irrevocably remove all the accounts owned by the reseller ' . $reseller;
        if ($terminatereseller) {
            return $this->xmlapi_query('terminatereseller', array('reseller' => $reseller, 'terminatereseller' => '1', 'verify' => $verify));
        }
        return $this->xmlapi_query('terminatereseller', array('reseller' => $reseller, 'terminatereseller' => '0', 'verify' => $verify));
    }
    public function setresellerips($user, $ip = null)
    {
        if (!isset($user) ) {
            error_log("setresellerips requires that a username is passed to it");
            return false;
        }
        $params = array("user" => $user);
        if ($ip != null) {
            $params['ip'] = $ip;
        }
        return $this->xmlapi_query('setresellerips',$params);
    }
    public function setresellerlimits( $reseller_cfg )
    {
        if ( !isset($reseller_cfg['user'] ) ) {
            error_log("setresellerlimits requires that a user is defined in the array passed to it");
            return false;
        }
        return $this->xmlapi_query('setresellerlimits',$reseller_cfg);
    }
    public function setresellermainip($reseller, $ip)
    {
        if ( !isset($reseller) || !isset($ip) ) {
            error_log("setresellermainip requires that an reseller and ip are passed to it");
            return false;
        }
        return $this->xmlapi_query("setresellermainip", array('user' => $reseller, 'ip' => $ip));
    }
    public function setresellerpackagelimits($user, $no_limit, $package = null, $allowed = null, $number = null)
    {
        if (!isset($user) || !isset($no_limit) ) {
            error_log("setresellerpackagelimits requires that a username and no_limit are passed to it by default");
            return false;
        }
        if ($no_limit) {
            return $this->xmlapi_query("setresellerpackagelimits", array( 'user' => $user, "no_limit" => '1') );
        } else {
            if ( is_null($package) || is_null($allowed) ) {
                error_log('setresellerpackagelimits requires that package and allowed are passed to it if no_limit eq 0');

                return false;
            }
            $params = array(
                'user' => $user,
                'no_limit' => '0',
                'package' => $package,
            );
            if ($allowed) {
                $params['allowed'] = 1;
            } else {
                $params['allowed'] = 0;
            }
            if ( !is_null($number) ) {
                $params['number'] = $number;
            }
            return $this->xmlapi_query('setresellerpackagelimits', $params);
        }
    }
    public function suspendreseller($reseller, $reason = null)
    {
        if (!isset($reseller) ) {
            error_log("suspendreseller requires that the reseller's username is passed to it");
            return false;
        }
        $params = array("user" => $reseller);
        if ($reason) {
            $params['reason'] = $reason;
        }
        return $this->xmlapi_query('suspendreseller', $params);
    }
    public function unsuspendreseller($user)
    {
        if (!isset($user) ) {
            error_log("unsuspendreseller requires that a username is passed to it");
            return false;
        }
        return $this->xmlapi_query('unsuspendreseller', array('user' => $user));
    }
    public function acctcounts($user)
    {
        if (!isset($user)) {
            error_log('acctcounts requires that a username is passed to it');
            return false;
        }
        return $this->xmlapi_query('acctcounts', array('user' => $user) );
    }
    public function setresellernameservers($user, $nameservers = null)
    {
        if (!isset($user)) {
            error_log("setresellernameservers requires that a username is passed to it");
            return false;
        }
        $params = array('user' => $user);
        if ($nameservers) {
            $params['nameservers'] = $nameservers;
        }
        return $this->xmlapi_query('setresellernameservers', $params);
    }
    public function gethostname()
    {
        return $this->xmlapi_query('gethostname');
    }
    public function version()
    {
        return $this->xmlapi_query('version');
    }
    public function loadavg()
    {
        return $this->xmlapi_query('loadavg');
    }
    public function getlanglist()
    {
        return $this->xmlapi_query('getlanglist');
    }
    public function reboot($force = false)
    {
        if ($force) {
            return $this->xmlapi_query('reboot', array('force' => '1'));
        }
        return $this->xmlapi_query('reboot');
    }
    public function addip($ip, $netmask)
    {
        if (!isset($ip) || !isset($netmask)) {
            error_log("addip requires that an IP address and Netmask are passed to it");
            return false;
        }
        return $this->xmlapi_query('addip', array('ip' => $ip, 'netmask' => $netmask));
    }
    public function delip($ip, $ethernetdev = null, $skipifshutdown = false)
    {
        $args = array();
        if (!isset($ip)) {
            error_log("delip requires that an IP is defined in the array passed to it");
            return false;
        }
        $args['ip'] = $ip;
        if ($ethernetdev) {
            $args['ethernetdev'] = $ethernetdev;
        }
        $args['skipifshutdown'] = ($skipifshutdown) ? '1' : '0';
        return $this->xmlapi_query('delip', $args);
    }
    public function listips()
    {
        return $this->xmlapi_query('listips');
    }
    public function sethostname($hostname)
    {
        if (!isset($hostname)) {
            error_log("sethostname requires that hostname is passed to it");
            return false;
        }
        return $this->xmlapi_query('sethostname', array('hostname' => $hostname));
    }
    public function setresolvers($nameserver1, $nameserver2 = null, $nameserver3 = null)
    {
        $args = array();
        if (!isset($nameserver1)) {
            error_log("setresolvers requires that nameserver1 is defined in the array passed to it");
            return false;
        }
        $args['nameserver1'] = $nameserver1;
        if ($nameserver2) {
            $args['nameserver2'] = $nameserver2;
        }
        if ($nameserver3) {
            $args['nameserver3'] = $nameserver3;
        }
        return $this->xmlapi_query('setresolvers', $args);
    }
    public function showbw($args = null)
    {
        if (is_array($args)) {
            return $this->xmlapi_query('showbw', $args);
        }
        return $this->xmlapi_query('showbw');
    }
    public function nvset($key, $value)
    {
        if (!isset($key) || !isset($value)) {
            error_log("nvset requires that key and value are passed to it");
            return false;
        }
        return $this->xmlapi_query('nvset', array('key' => $key, 'value' => $value));
    }
    public function nvget($key)
    {
        if (!isset($key)) {
            error_log("nvget requires that key is passed to it");
            return false;
        }
        return $this->xmlapi_query('nvget', array('key' => $key));
    }
    public function restartsrv($service)
    {
        if (!isset($service)) {
            error_log("restartsrv requires that service is passed to it");
            return false;
        }
        return $this->xmlapi_query('restartservice', array('service' => $service));
    }
    public function servicestatus($args=array())
    {
        if (!empty($args) && !is_array($args)) {
            $args = array('service'=>$args);
        } elseif (!is_array($args)) {
            $args = array();
        }
        return $this->xmlapi_query('servicestatus', $args);
    }
    public function configureservice($service, $enabled = true, $monitored = true)
    {
        if (!isset($service)) {
            error_log("configure service requires that a service is passed to it");
            return false;
        }
        $params = array('service' => $service);
        if ($enabled) {
            $params['enabled'] = 1;
        } else {
            $params['enabled'] = 0;
        }
        if ($monitored) {
            $params['monitored'] = 1;
        } else {
            $params['monitored'] = 0;
        }
        return $this->xmlapi_query('configureservice', $params);
    }
    public function fetchsslinfo($args)
    {
        if ( (isset($args['domain']) && isset($args['crtdata'])) || (!isset($args['domain']) && !isset($args['crtdata'])) ) {
            error_log("fetchsslinfo requires domain OR crtdata is passed to it");
        }
        if (isset($args['crtdata'])) {
            // crtdata must be URL-encoded!
            $args['crtdata'] = urlencode(trim($args['crtdata']));
        }
        return $this->xmlapi_query('fetchsslinfo', $args);
    }
    public function generatessl($args)
    {
        if (!isset($args['xemail']) || !isset($args['host']) || !isset($args['country']) || !isset($args['state']) || !isset($args['city']) || !isset($args['co']) || !isset($args['cod']) || !isset($args['email']) || !isset($args['pass'])) {
            error_log("generatessl requires that xemail, host, country, state, city, co, cod, email and pass are defined in the array passed to it");
            return false;
        }
        return $this->xmlapi_query('generatessl', $args);
    }
    public function installssl($args)
    {
        if (!isset($args['user']) || !isset($args['domain']) || !isset($args['cert']) || !isset($args['key']) || !isset($args['cab']) || !isset($args['ip'])) {
            error_log("installssl requires that user, domain, cert, key, cab and ip are defined in the array passed to it");
            return false;
        }
        return $this->xmlapi_query('installssl', $args);
    }
    public function listcrts()
    {
        return $this->xmlapi_query('listcrts');
    }
    public function addpop($username, $args)
    {
        if (!isset($username) || !isset($args)) {
            error_log("addpop requires that a user and args are passed to it");
            return false;
        }
        if (is_array($args) && (sizeof($args) < 3)) {
            error_log("addpop requires that args at least contains an email_username, email_password and email_domain");
            return false;
        }
        return $this->api1_query($username, 'Email', 'addpop', $args);
    }
    public function park($username, $newdomain, $topdomain)
    {
        $args = array();
        if ( (!isset($username)) && (!isset($newdomain)) ) {
            error_log("park requires that a username and new domain are passed to it");
            return false;
        }
        $args['domain'] = $newdomain;
        if ($topdomain) {
            $args['topdomain'] = $topdomain;
        }
        return $this->api2_query($username, 'Park', 'park', $args);
    }
    public function unpark($username, $domain)
    {
        $args = array();
        if ( (!isset($username)) && (!isset($domain)) ) {
            error_log("unpark requires that a username and domain are passed to it");
            return false;
        }
        $args['domain'] = $domain;
        return $this->api2_query($username, 'Park', 'unpark', $args);
    }
    public function getdiskusage($username, $args)
    {
        if (!isset($username) || !isset($args)) {
            error_log("getdiskusage requires that a username and args are passed to it");
            return false;
        }
        if (is_array($args) && (!isset($args['domain']) || !isset($args['login']))) {
            error_log("getdiskusage requires that args at least contains an email_domain and email_username");
            return false;
        }
        return $this->api2_query($username, 'Email', 'getdiskusage', $args);
    }
    public function listftpwithdisk($username)
    {
        if (!isset($username)) {
            error_log("listftpwithdisk requires that user is passed to it");
            return false;
        }
        return $this->api2_query($username, 'Ftp', 'listftpwithdisk');
    }
    public function listftp($username)
    {
        if (!isset($username)) {
            error_log("listftp requires that user is passed to it");
            return false;
        }
        return $this->api2_query($username, 'Ftp', 'listftp');
    }
    public function listparkeddomains($username, $domain = null)
    {
        $args = array();
        if (!isset($username)) {
            error_log("listparkeddomains requires that a user is passed to it");
            return false;
        }
        if (isset($domain)) {
            $args['regex'] = $domain;
            return $this->api2_query($username, 'Park', 'listparkeddomains', $args);
        }
        return $this->api2_query($username, 'Park', 'listparkeddomains');
    }
    public function listaddondomains($username, $domain = null)
    {
        $args = array();
        if (!isset($username)) {
            error_log("listaddondomains requires that a user is passed to it");
            return false;
        }
        if (isset($domain)) {
            $args['regex'] = $domain;
            return $this->api2_query($username, 'AddonDomain', 'listaddondomains', $args);
        }
        return $this->api2_query($username, 'Park', 'listaddondomains');
    }
    public function stat($username, $args = null)
    {
        if ( (!isset($username)) || (!isset($args)) ) {
            error_log("stat requires that a username and options are passed to it");
            return false;
        }
        if (is_array($args)) {
            $display = '';
            foreach ($args as $key => $value) {
                $display .= $value . '|';
            }
            $values['display'] = substr($display, 0, -1);
        } else {
            $values['display'] = substr($args, 0, -1);
        }
        return $this->api2_query($username, 'StatsBar', 'stat', $values);
    }
}