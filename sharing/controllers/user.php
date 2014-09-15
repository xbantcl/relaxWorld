<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class User extends CI_Controller {
	public function __construct(){
		parent::__construct();
	}
	// 登陆入口处理.
	public function login(){
		$this->smarty->view('login.tpl');
	} 
}