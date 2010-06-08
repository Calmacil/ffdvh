<?php 
function template_meta_82c2429fc548a72f1d8fc9b394575837($t){
if(isset($t->_vars['formreg'])) { $t->_vars['formreg']->getBuilder('html')->outputMetaContent($t);}

}
function template_82c2429fc548a72f1d8fc9b394575837($t){
?><h1>Fiche d'inscription</h1>

<?php  $formfull = $t->_vars['formreg'];
    $formfullBuilder = $formfull->getBuilder('html');
    $formfullBuilder->setAction( 'base~identity:save',array());
    $formfullBuilder->outputHeader(array());
    $formfullBuilder->outputAllControls();
    $formfullBuilder->outputFooter();?>

<?php 
}
?>