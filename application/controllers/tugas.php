<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class tugas extends CI_Controller {

	public function __construct(){
		
		parent ::__construct();

		//load model
		$this->load->model('model_tugas'); 

	}

	public function index()
	{
		$data = array(

			'title' 	=> 'Rekap Tugas',
			'awal'	=> $this->model_tugas->get_all(),

		);

		$this->load->view('awal', $data);
	}

	public function data_tugas()
	{
		$data = array(

			'title' 	=> 'Rekap Tugas',
			'data_tugas'	=> $this->model_tugas->get_all(),

		);

		$this->load->view('data_tugas', $data);
	}

	
	public function tambah()
	{
		$data = array(

			'title' 	=> 'buku'

		);

		$this->load->view('tambah_data', $data);
	}

	public function simpan()
	{
		$data = array(

			'kd_buku'   => $this->input->post("kd_buku"),
			'jd_buku'   => $this->input->post("jd_buku"),
			'pengarang' => $this->input->post("pengarang"),
			'penerbit'  => $this->input->post("penerbit"),
			'stok'      => $this->input->post("stok"),
			'th_terbit' => $this->input->post("th_terbit"),

			
		);

		$this->model_tugas->simpan($data);

		$this->session->set_flashdata('notif', '<div class="alert alert-success alert-dismissible"> Success! data berhasil disimpan didatabase.
			                                    </div>');

		//redirect
		redirect('tugas/');

	}

	public function edit()
	{
		$no = $this->uri->segment(3);

		$data = array(

			'title' 	=> 'Edit data buku',
			'data_tugas' => $this->model_tugas->edit($noid)

		);

		$this->load->view('edit_tugas', $data);
	}

	public function update()
	{
		$id['no'] = $this->input->post("noid");
		$data = array(

			'kd_buku'   => $this->input->post("kd_buku"),
			'jd_buku'   => $this->input->post("jd_buku"),
			'pengarang' => $this->input->post("pengarang"),
			'penerbit'  => $this->input->post("penerbit"),
			'stok'      => $this->input->post("stok"),
			'th_terbit' => $this->input->post("th_terbit"),
			
		);

		$this->model_tugas->update($data, $id);

		$this->session->set_flashdata('notif', '<div class="alert alert-success alert-dismissible"> Success! data berhasil diupdate didatabase.
			                                    </div>');

		//redirect
		redirect('tugas/');

	}

	public function hapus()
	{
		$noid['noid'] = $this->uri->segment(3);
		
		$this->model_tugas->hapus($noid);

		//redirect
		redirect('tugas/');

	}

}
