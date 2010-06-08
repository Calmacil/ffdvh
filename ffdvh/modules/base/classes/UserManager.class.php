<?php

class UserManager {


	public function save($form) {
		
		jAuth::createUser($form->getData('login'));

	}


}

?>
