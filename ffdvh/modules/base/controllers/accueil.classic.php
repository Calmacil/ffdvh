<?php
/**
* @package   ffdvh
* @subpackage base
* @author    yourname
* @copyright 2008 yourname
* @link      http://www.yourwebsite.undefined
* @license    All right reserved
*/

class accueilCtrl extends jController {
    /**
    *
    */
    
    function common() {
		$vue = $this->getResponse('html');
		
		$vue->bodyTpl = 'ffdvh~main';
		$vue->body->assignZone('NAVIBAR', 'nav_public');
		$vue->body->assignZone('SIDEBAR', 'side_public');
		
		return $vue;
	}
    
    function index() {
        $vue = $this->common();

        return $vue;
    }
}

