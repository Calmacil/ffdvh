<?php
/**
* @package   ffdvh
* @subpackage base
* @author    yourname
* @copyright 2008 yourname
* @link      http://www.yourwebsite.undefined
* @license    All right reserved
*/

class identityCtrl extends jController {
    /**
    *
    */
    
    function common() {
		$rep = $this->getResponse('html');
		
		$rep->bodyTpl = 'ffdvh~main';
		$rep->body->assignZone('NAVIBAR', 'nav_public');
		$rep->body->assignZone('SIDEBAR', 'side_public');
		

        return $rep;
	}
    
    function index() {
        $rep = $this->getResponse('html');

        return $rep;
    }
    
    function register() {
		$vue = $this->common();
		
		
		$vue->body->assignZone('MAIN', 'register_form');
		
		
		return $vue;
	}
	
	function save() {
		
		
		$f = jForms::fill('base~formauth');
		
		if (!$f->check) {
			$vue = $this->getResponse('redirect');
			$vue->action = 'base~identity:index';
			return $vue;
		}

		$vue = $this->common();
		$c = jClasses::getService('UserManager');
		$c->save($f);

		return $vue;
	}
}

