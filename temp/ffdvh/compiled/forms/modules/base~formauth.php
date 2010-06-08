<?php 
class cForm_base_Jx_formauth extends jFormsBase {
 public function __construct($sel, &$container, $reset = false){
          parent::__construct($sel, $container, $reset);
$ctrl= new jFormsControlinput('login');
$ctrl->required=true;
$ctrl->datatype->addFacet('maxLength',50);
$ctrl->label='Login :';
$this->addControl($ctrl);
$ctrl= new jFormsControlinput('nickname');
$ctrl->required=true;
$ctrl->datatype->addFacet('maxLength',50);
$ctrl->label='Pseudonyme :';
$this->addControl($ctrl);
$ctrl= new jFormsControlinput('pwd');
$ctrl->required=true;
$ctrl->datatype->addFacet('maxLength',50);
$ctrl->label='Mot de passe :';
$this->addControl($ctrl);
$ctrl= new jFormsControlinput('pwd2');
$ctrl->required=true;
$ctrl->datatype->addFacet('maxLength',50);
$ctrl->label='Mot de passe (répéter):';
$this->addControl($ctrl);
$ctrl= new jFormsControlinput('loc');
$ctrl->datatype->addFacet('maxLength',255);
$ctrl->label='Localisation :';
$this->addControl($ctrl);
$ctrl= new jFormsControlinput('email');
$ctrl->required=true;
$ctrl->datatype->addFacet('maxLength',255);
$ctrl->label='Adresse courriel :';
$this->addControl($ctrl);
$ctrl= new jFormsControlsubmit('_submit');
$ctrl->label='S\'inscrire';
$ctrl->datasource= new jFormsStaticDatasource();
$this->addControl($ctrl);
  }
} ?>