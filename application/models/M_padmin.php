<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_padmin extends CI_Model{


	function get_mk_by_nim(){
		$hsl=$this->db->query("SELECT * FROM kuliah inner join matkul on kuliah.matkul_id=matkul.matkul_id where kuliah.mahasiswa_nim='09031381320020' && kuliah_nilai!='F' order by matkul_kode asc");
		return $hsl;
	}
}