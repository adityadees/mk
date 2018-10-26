<?php
class Padmin extends CI_Controller{
	function __construct(){

		parent::__construct();
		$this->load->model('m_padmin');
	}
	public function index(){
		$x['data']=$this->m_padmin->get_mk_by_nim();
		$this->load->view('header');
		$this->load->view('sidebar');
		$this->load->view('topbar');
		$this->load->view('index',$x);
		$this->load->view('footer');
	}

	

}		