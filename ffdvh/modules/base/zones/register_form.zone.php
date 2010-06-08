<?php
/**
* @package   ffdvh
* @subpackage base
* @author    yourname
* @copyright 2008 yourname
* @link      http://www.yourwebsite.undefined
* @license    All right reserved
*/

class register_formZone extends jZone {
    protected $_tplname='register_form';

    protected function _prepareTpl(){
        //$this->_tpl->assign('foo','bar');
        
        
		$f = jForms::create('base~formauth');
		$this->_tpl->assign('formreg', $f);
		
    }
}
