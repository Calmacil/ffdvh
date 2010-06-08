<?php
/**
* @package   ffdvh
* @subpackage base
* @author    yourname
* @copyright 2008 yourname
* @link      http://www.yourwebsite.undefined
* @license    All right reserved
*/

class side_publicZone extends jZone {
    protected $_tplname='side_public';

    protected function _prepareTpl(){
        //$this->_tpl->assign('foo','bar');
        
		$this->_tpl->assignZone('ZAUTH', 'jauth~loginform');
		
		$foo = $this->param('menu');
		
		if (!empty($foo)) $this->_tpl->assignZone('MENU', $foo);
    }
}
