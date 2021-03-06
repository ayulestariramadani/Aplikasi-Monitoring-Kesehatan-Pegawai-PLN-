<?php defined('BASEPATH') or exit('No direct script access allowed');

class Holiday extends Admin_Controller 
{
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_holiday','holiday');
		$this->load->library('form_validation');
		$this->load->helper('form');
	}

	public function clear($page = '')
	{
		$this->session->unset_userdata('id_periode');
		redirect("holiday/{$page}");
	}

	public function index()
	{
		$data['title'] = 'Hari Libur';
		$data['page'] = 'admin/pages/holiday/table';
		$data['holiday'] = $this->holiday->get_all_data();
		$data['periode'] = $this->holiday->get_periode();
		$id_periode = $this->holiday->get_last_period();
		if (!$this->session->userdata('id_periode')) {
			$this->session->set_userdata('id_periode', $id_periode);
		}
		$data['id_periode'] = $this->session->userdata('id_periode');

		$this->load->view('admin/index', $data);
	}

	public function select_periode()
	{
		$id_periode = $this->input->post('id_periode');
		$this->session->set_userdata('id_periode', $id_periode);
		redirect('holiday');
	}

	public function add(){
		$data['title'] = 'Tambah data';
		$data['page'] = 'admin/pages/holiday/form';
		$data['periode'] = $this->holiday->get_periode();
    

		$holiday= $this->holiday;
		$validation = $this->form_validation;
		$validation->set_rules($holiday->rules());

		if ($validation->run())
		{
			$holiday->save();
			$this->session->set_flashdata('success','Berhasil disimpan');
			redirect('holiday');
		}

		$this->load->view('admin/index', $data);
	}
	
	public function edit($id = null)
	{
		if(!isset($id)) redirect('holiday');

		$data['title'] = 'Edit data';
		$data['page'] = 'admin/pages/holiday/edit_form';
		$data['periode'] = $this->holiday->get_periode();

		$holiday = $this->holiday;
		$validation = $this->form_validation;
		$validation->set_rules($holiday->rules());

		if ($validation->run()) {
			if ($holiday->update($id))
				redirect('holiday');
			$this->session->set_flashdata('success', 'Berhasil disimpan');
		}

		$data['holiday'] = $holiday->get_holiday($id);
		if(!$data['holiday']) show_404();

		$this->load->view('admin/index', $data);
	}

	public function delete($id = null)
	{
		if(!isset($id)) show_404();
		if($this->holiday->delete($id))
		{
			redirect(site_url('holiday'));
		}
		$this->session->set_flashdata('success', 'Berhasil dihapus');
	}
}