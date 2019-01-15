<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class model_tugas extends CI_model{


	public function get_all()
	{
		$query = $this->db->select("*")
				 ->from('buku')
				 ->order_by('noid', 'DESC')
				 ->get();
		return $query->result();
	}

	
	public function simpan($data)
	{
		
		$query = $this->db->insert("buku", $data);

		if($query){
			return true;
		}else{
			return false;
		}

	}

	public function edit($no)
	{
		
		$query = $this->db->where("no", $no)
				->get("buku");

		if($query){
			return $query->row();
		}else{
			return false;
		}

	}

	public function update($data, $id)
	{
		
		$query = $this->db->update("tugas", $data, $id);

		if($query){
			return true;
		}else{
			return false;
		}

	}

	public function hapus($id)
	{
		
		$query = $this->db->delete("buku", $id);

		if($query){
			return true;
		}else{
			return false;
		}

	}


}