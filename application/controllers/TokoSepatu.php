<?php
class TokoSepatu extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('ModelTokoSepatu');
        
    }
    public function index()
    {
        $this->load->view('tokosepatu/Input_TokoSepatu');
    }

    public function cetak()
    {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('nama','Nama Pembeli', 'required');
        $this->form_validation->set_rules('nohp','Nomor HP', 'required');
        $this->form_validation->set_rules('merk','Merek Sepatu', 'required');
        $this->form_validation->set_rules('ukuran', 'Ukuran Sepatu', 'required');
        
        if($this->form_validation->run() == FALSE)
        {
            $this->load->view('tokosepatu/Input_TokoSepatu');
        }else{
            
        $data=[
            'nama' => $this->input->post('nama'),
            'nohp' => $this->input->post('nohp'),
            'merk' => $this->input->post('merk'),
            'ukuran' => $this->input->post('ukuran'),
            'harga' => $this->ModelTokoSepatu->proses($this->input->post('merk'))
        ];

        if ($this->input->post('merk') == "Nike"){
            $data['harga'] = 375000;
        }elseif ($this->input->post('merk') == "Adidas") {
           $data['harga'] = 300000;
        }elseif ($this->input->post('merk') == "Kicker") {
            $data['harga'] = 250000;
         }elseif ($this->input->post('merk') == "Eiger") {
            $data['harga'] = 275000;
         }elseif ($this->input->post('merk') == "Bucherri") {
            $data['harga'] = 400000;
         }

        $this->load->view('tokosepatu/Output_TokoSepatu', $data);
    }
    }
}