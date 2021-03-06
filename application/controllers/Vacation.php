<?php defined('BASEPATH') or exit('No direct script access allowed');

class Vacation extends Admin_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('m_vacation', 'vacation');
        $this->load->library('form_validation');
        $this->load->helper('form');
    }

    public function clear($page = '')
	{
		$this->session->unset_userdata('id_periode');
		redirect("vacation/{$page}");
	}

    public function index()
    {
        $data['title'] = 'Perizinan';
        $data['page'] = 'admin/pages/vacation/table';
        $data['vacation'] = $this->vacation->get_all_data();
        $data['periode'] = $this->vacation->get_periode();
		$id_periode = $this->vacation->get_last_period();
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
		redirect('vacation');
	}

    public function add()
    {
        $data['title'] = 'Tambah data';
        $data['page'] = 'admin/pages/vacation/form';
        $data['periode'] = $this->vacation->get_periode();
        $data['pegawai'] = $this->vacation->get_employee();

        $vacation = $this->vacation;
        $validation = $this->form_validation;
        $validation->set_rules($vacation->rules());

        if ($validation->run()) {
            $vacation->save();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
            redirect('vacation');
        }

        $this->load->view('admin/index', $data);

    }

    public function edit($id)
    {
        if(!isset($id)) redirect('vacation/edit');

        $data['title'] = 'Tambah data';
        $data['page'] = 'admin/pages/vacation/edit_form';
        $data['periode'] = $this->vacation->get_periode();
        $data['pegawai'] = $this->vacation->get_employee();

        $vacation = $this->vacation;
        $validation = $this->form_validation;
        $validation->set_rules($vacation->rules());

        if ($validation->run()) {
            $vacation->update($id);
            $this->session->set_flashdata('success', 'Berhasil disimpan');
            redirect('vacation');
        }

        $data['vacation'] = $vacation->get_vacation($id);
        if(!$data['vacation']) show_404();

        $this->load->view('admin/index', $data);
    }

    public function delete($id = null)
    {
        if(!isset($id)) show_404();
        if($this->vacation->delete($id))
        {
            redirect(site_url('vacation'));
        }
        $this->session->set_flashdata('success', ' Berhasil dihapus');
    }
}