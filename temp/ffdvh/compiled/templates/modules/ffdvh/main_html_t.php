<?php 
 require_once('/home/calmacil/jelix/lib/jelix/plugins/tpl/html/meta.html.php');
 require_once('/home/calmacil/jelix/lib/jelix/plugins/tpl/html/function.image.php');
function template_meta_d901480fbac03fda1c7863407e2596db($t){
jtpl_meta_html_html( $t,'csstheme','main');
jtpl_meta_html_html( $t,'csstheme','text');
jtpl_meta_html_html( $t,'csstheme','nav');
jtpl_meta_html_html( $t,'csstheme','side');
jtpl_meta_html_html( $t,'js',$t->_vars['j_jelixwww'].'jquery/jquery2.js');
jtpl_meta_html_html( $t,'js',$t->_vars['j_basepath'].'navigator.js');

}
function template_d901480fbac03fda1c7863407e2596db($t){
?>






<div id="all">
	<div id="head">
	</div>
	
	<div id="nav">
		<?php echo $t->_vars['NAVIBAR']; ?>

	</div>
	
	<div id="sidebar">
		<?php echo $t->_vars['SIDEBAR']; ?>

	</div>
	
	<div id="main">
		<?php echo $t->_vars['MAIN']; ?>

	</div>
	
	<div id="foot">
	FFDVH &copy; 2010 créé par Thomas Lenoël<br />
	<?php jtpl_function_html_image( $t,$t->_vars['j_jelixwww'].'design/images/jelix_powered.png');?>
	</div>
	
</div>
<?php 
}
?>