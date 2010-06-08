<?php  require_once ( JELIX_LIB_PATH .'dao/jDaoRecordBase.class.php');
 require_once ( JELIX_LIB_PATH .'dao/jDaoFactoryBase.class.php');

class cDaoRecord_jauth_Jx_jelixuser_Jx_mysql extends jDaoRecordBase {
 public $login;
 public $email;
 public $password;
 public $nickname;
 public $score_lecture;
 public $localisation;
 public $theme='pure';
   public function getProperties() { return cDao_jauth_Jx_jelixuser_Jx_mysql::$_properties; }
   public function getPrimaryKeyNames() { return cDao_jauth_Jx_jelixuser_Jx_mysql::$_pkFields; }
}

class cDao_jauth_Jx_jelixuser_Jx_mysql extends jDaoFactoryBase {
   protected $_tables = array (
  'usr' => 
  array (
    'name' => 'usr',
    'realname' => 'jlx_user',
    'pk' => 
    array (
      0 => 'usr_login',
    ),
    'fields' => 
    array (
      0 => 'login',
      1 => 'email',
      2 => 'password',
      3 => 'nickname',
      4 => 'score_lecture',
      5 => 'localisation',
      6 => 'theme',
    ),
  ),
);
   protected $_primaryTable = 'usr';
   protected $_selectClause='SELECT `usr`.`usr_login` as `login`, `usr`.`usr_email` as `email`, `usr`.`usr_password` as `password`, `usr`.`usr_pseudo` as `nickname`, `usr`.`usr_scorelecture` as `score_lecture`, `usr`.`usr_localisation` as `localisation`, `usr`.`usr_theme` as `theme`';
   protected $_fromClause;
   protected $_whereClause='';
   protected $_DaoRecordClassName='cDaoRecord_jauth_Jx_jelixuser_Jx_mysql';
   protected $_daoSelector = 'jauth~jelixuser';
   public static $_properties = array (
  'login' => 
  array (
    'name' => 'login',
    'fieldName' => 'usr_login',
    'regExp' => NULL,
    'required' => true,
    'requiredInConditions' => true,
    'isPK' => true,
    'isFK' => false,
    'datatype' => 'string',
    'table' => 'usr',
    'updatePattern' => '%s',
    'insertPattern' => '%s',
    'selectPattern' => '%s',
    'sequenceName' => '',
    'maxlength' => 50,
    'minlength' => NULL,
    'ofPrimaryTable' => true,
    'defaultValue' => NULL,
    'needsQuotes' => true,
  ),
  'email' => 
  array (
    'name' => 'email',
    'fieldName' => 'usr_email',
    'regExp' => NULL,
    'required' => true,
    'requiredInConditions' => true,
    'isPK' => false,
    'isFK' => false,
    'datatype' => 'string',
    'table' => 'usr',
    'updatePattern' => '%s',
    'insertPattern' => '%s',
    'selectPattern' => '%s',
    'sequenceName' => '',
    'maxlength' => 255,
    'minlength' => NULL,
    'ofPrimaryTable' => true,
    'defaultValue' => NULL,
    'needsQuotes' => true,
  ),
  'password' => 
  array (
    'name' => 'password',
    'fieldName' => 'usr_password',
    'regExp' => NULL,
    'required' => false,
    'requiredInConditions' => false,
    'isPK' => false,
    'isFK' => false,
    'datatype' => 'string',
    'table' => 'usr',
    'updatePattern' => '',
    'insertPattern' => '%s',
    'selectPattern' => '%s',
    'sequenceName' => '',
    'maxlength' => 50,
    'minlength' => NULL,
    'ofPrimaryTable' => true,
    'defaultValue' => NULL,
    'needsQuotes' => true,
  ),
  'nickname' => 
  array (
    'name' => 'nickname',
    'fieldName' => 'usr_pseudo',
    'regExp' => NULL,
    'required' => false,
    'requiredInConditions' => false,
    'isPK' => false,
    'isFK' => false,
    'datatype' => 'string',
    'table' => 'usr',
    'updatePattern' => '%s',
    'insertPattern' => '%s',
    'selectPattern' => '%s',
    'sequenceName' => '',
    'maxlength' => 50,
    'minlength' => NULL,
    'ofPrimaryTable' => true,
    'defaultValue' => NULL,
    'needsQuotes' => true,
  ),
  'score_lecture' => 
  array (
    'name' => 'score_lecture',
    'fieldName' => 'usr_scorelecture',
    'regExp' => NULL,
    'required' => false,
    'requiredInConditions' => false,
    'isPK' => false,
    'isFK' => false,
    'datatype' => 'int',
    'table' => 'usr',
    'updatePattern' => '%s',
    'insertPattern' => '%s',
    'selectPattern' => '%s',
    'sequenceName' => '',
    'maxlength' => NULL,
    'minlength' => NULL,
    'ofPrimaryTable' => true,
    'defaultValue' => NULL,
    'needsQuotes' => false,
  ),
  'localisation' => 
  array (
    'name' => 'localisation',
    'fieldName' => 'usr_localisation',
    'regExp' => NULL,
    'required' => false,
    'requiredInConditions' => false,
    'isPK' => false,
    'isFK' => false,
    'datatype' => 'string',
    'table' => 'usr',
    'updatePattern' => '%s',
    'insertPattern' => '%s',
    'selectPattern' => '%s',
    'sequenceName' => '',
    'maxlength' => 255,
    'minlength' => NULL,
    'ofPrimaryTable' => true,
    'defaultValue' => NULL,
    'needsQuotes' => true,
  ),
  'theme' => 
  array (
    'name' => 'theme',
    'fieldName' => 'usr_theme',
    'regExp' => NULL,
    'required' => false,
    'requiredInConditions' => false,
    'isPK' => false,
    'isFK' => false,
    'datatype' => 'string',
    'table' => 'usr',
    'updatePattern' => '%s',
    'insertPattern' => '%s',
    'selectPattern' => '%s',
    'sequenceName' => '',
    'maxlength' => 50,
    'minlength' => NULL,
    'ofPrimaryTable' => true,
    'defaultValue' => 'pure',
    'needsQuotes' => true,
  ),
);
   public static $_pkFields = array('login');
 
public function __construct($conn){
   parent::__construct($conn);
   $this->_fromClause = ' FROM `'.$this->_conn->prefixTable('jlx_user').'` AS `usr`';
}
   public function getProperties() { return self::$_properties; }
   public function getPrimaryKeyNames() { return self::$_pkFields;}
 
 protected function _getPkWhereClauseForSelect($pk){
   extract($pk);
 return ' WHERE  `usr`.`usr_login`'.' = '.$this->_conn->quote($login).'';
}
 
protected function _getPkWhereClauseForNonSelect($pk){
   extract($pk);
   return ' where  `usr_login`'.' = '.$this->_conn->quote($login).'';
}
public function insert ($record){
    $query = 'INSERT INTO `'.$this->_conn->prefixTable('jlx_user').'` (
`usr_login`,`usr_email`,`usr_password`,`usr_pseudo`,`usr_scorelecture`,`usr_localisation`,`usr_theme`
) VALUES (
'.($record->login === null ? 'NULL' : $this->_conn->quote($record->login,false)).', '.($record->email === null ? 'NULL' : $this->_conn->quote($record->email,false)).', '.($record->password === null ? 'NULL' : $this->_conn->quote($record->password,false)).', '.($record->nickname === null ? 'NULL' : $this->_conn->quote($record->nickname,false)).', '.($record->score_lecture === null ? 'NULL' : intval($record->score_lecture)).', '.($record->localisation === null ? 'NULL' : $this->_conn->quote($record->localisation,false)).', '.($record->theme === null ? 'NULL' : $this->_conn->quote($record->theme,false)).'
)';
   $result = $this->_conn->exec ($query);
    return $result;
}
public function update ($record){
   $query = 'UPDATE `'.$this->_conn->prefixTable('jlx_user').'` SET 
 `usr_email`= '.($record->email === null ? 'NULL' : $this->_conn->quote($record->email,false)).', `usr_pseudo`= '.($record->nickname === null ? 'NULL' : $this->_conn->quote($record->nickname,false)).', `usr_scorelecture`= '.($record->score_lecture === null ? 'NULL' : intval($record->score_lecture)).', `usr_localisation`= '.($record->localisation === null ? 'NULL' : $this->_conn->quote($record->localisation,false)).', `usr_theme`= '.($record->theme === null ? 'NULL' : $this->_conn->quote($record->theme,false)).'
 where  `usr_login`'.' = '.$this->_conn->quote($record->login).'
';
   $result = $this->_conn->exec ($query);
  $query ='SELECT `usr_password` as `password` FROM `'.$this->_conn->prefixTable('jlx_user').'` WHERE  `usr_login`'.' = '.$this->_conn->quote($record->login).'';
  $rs  =  $this->_conn->query ($query, jDbConnection::FETCH_INTO, $record);
  $record =  $rs->fetch ();
   return $result;
 }
 function getByLoginPassword ($login, $password){
    $__query =  $this->_selectClause.$this->_fromClause.$this->_whereClause;
$__query .=' WHERE  `usr`.`usr_login` '.' = '.$this->_conn->quote($login).' AND `usr`.`usr_password` '.($password === null ? 'IS NULL' : ' = '.$this->_conn->quote($password,false)).'';
    $__rs = $this->_conn->limitQuery($__query,0,1);
    $this->finishInitResultSet($__rs);
    return $__rs->fetch();
}
 function getByLogin ($login){
    $__query =  $this->_selectClause.$this->_fromClause.$this->_whereClause;
$__query .=' WHERE  `usr`.`usr_login` '.' = '.$this->_conn->quote($login).'';
    $__rs = $this->_conn->limitQuery($__query,0,1);
    $this->finishInitResultSet($__rs);
    return $__rs->fetch();
}
 function updatePassword ($login, $password){
    $__query = 'UPDATE `'.$this->_conn->prefixTable('jlx_user').'` SET 
 `usr_password`= '.($password === null ? 'NULL' : $this->_conn->quote($password,false)).'';
$__query .=' WHERE  `usr_login` '.' = '.$this->_conn->quote($login).'';
    return $this->_conn->exec ($__query);
}
 function deleteByLogin ($login){
    $__query = 'DELETE FROM `'.$this->_conn->prefixTable('jlx_user').'` ';
$__query .=' WHERE  `usr_login` '.' = '.$this->_conn->quote($login).'';
    return $this->_conn->exec ($__query);
}
 function findByLogin ($pattern){
    $__query =  $this->_selectClause.$this->_fromClause.$this->_whereClause;
$__query .=' WHERE  `usr`.`usr_login` '.' LIKE '.$this->_conn->quote($pattern).' ORDER BY `usr`.`usr_login` asc';
    $__rs = $this->_conn->query($__query);
    $this->finishInitResultSet($__rs);
    return $__rs;
}
 function findAll (){
    $__query =  $this->_selectClause.$this->_fromClause.$this->_whereClause;
$__query .=' WHERE  1=1  ORDER BY `usr`.`usr_login` asc';
    $__rs = $this->_conn->query($__query);
    $this->finishInitResultSet($__rs);
    return $__rs;
}

}
?>