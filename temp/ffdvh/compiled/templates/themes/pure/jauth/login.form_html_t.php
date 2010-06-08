<?php 
 require_once('/home/calmacil/proj/ffdvh/ffdvh/lib/jelix/plugins/tpl/html/function.formurl.php');
 require_once('/home/calmacil/proj/ffdvh/ffdvh/lib/jelix/plugins/tpl/html/function.formurlparam.php');
 require_once('/home/calmacil/proj/ffdvh/ffdvh/lib/jelix/plugins/tpl/html/function.jurl.php');
function template_meta_e867509d90cdadf5aa77293af075f3f6($t){

}
function template_e867509d90cdadf5aa77293af075f3f6($t){
?><div id="auth_login_zone">
<?php if($t->_vars['failed']):?>
<p><?php echo jLocale::get('jauth~auth.failedToLogin'); ?></p>
<?php endif;?>


<?php if(! $t->_vars['isLogged']):?>
<form action="<?php jtpl_function_html_formurl( $t,'jauth~login:in');?>" method="post" id="loginForm">
      
		<label class="petit" for="login">Login :</label>
		<input type="text" name="login" id="login" size="9" value="<?php echo $t->_vars['login']; ?>" />
		<br />
		<label class="petit" for="password">Mot de passe :</label></th>
		<input type="password" name="password" id="password" size="9" />
		<br />
       <?php if($t->_vars['showRememberMe']):?>
       <p>
		<label for="rememberMe"><?php echo jLocale::get('jauth~auth.rememberMe'); ?></label>
		<p><input type="checkbox" name="rememberMe" id="rememberMe" value="1" />
		<?php endif;?>

		
		<?php jtpl_function_html_formurlparam( $t,'jauth~login:in');?>
		<?php if(!empty($t->_vars['auth_url_return'])):?>
		<input type="hidden" name="auth_url_return" value="<?php echo htmlspecialchars($t->_vars['auth_url_return']); ?>" />
		<?php endif;?>

		<br />
		<input type="submit" value="<?php echo jLocale::get('jauth~auth.buttons.login'); ?>"/>
	</form>
	<p class="petit"><a href="<?php jtpl_function_html_jurl( $t,'base~identity:register');?>">Je veux m'inscrire !</a></p>
<?php else:?>

	<?php if($t->_vars['user']->nickname):?>
		<p><?php echo $t->_vars['user']->nickname; ?></p>
	<?php else:?>

		<p><?php echo $t->_vars['user']->login; ?></p>
	<?php endif;?>

    
	<a href="<?php jtpl_function_html_jurl( $t,'jauth~login:out');?>">Déconnexion</a>
    
<?php endif;?>
</div>

<hr />
<?php 
}
?>