<?php
/**
* @package   %%appname%%
* @subpackage 
* @author    %%default_creator_name%%
* @copyright %%default_copyright%%
* @link      %%default_website%%
* @license   %%default_license_url%% %%default_license%%
*/

require ('%%rp_app%%application.init.php');
require (JELIX_LIB_CORE_PATH.'request/jXmlRpcRequest.class.php');

$config_file = '%%config_file%%';
$jelix = new JCoordinator($config_file);
$jelix->process(new jXmlRpcRequest());

