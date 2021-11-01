<?php
class Toko extends CI_Controller 
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Model_Toko');
	}

	public function viewTemplate($url, $data = null) 
    {
        $this->load->view('toko/template/header', $data);
        $this->load->view($url, $data);
        $this->load->view('toko/template/footer');
    }

	 public function index() { $this->viewTemplate('toko/index', array('title' => 'Form', 'produk' => $this->Model_Toko->getProduk())); //jangan lupa index nya juga dibuat ya
    }

     public function hasil() 
    {
        $data =   array(
            'title' => 'Hasil',
            'nama'  => $this->input->post('nama'),
            'nomortelpon'  => $this->input->post('nomortelpon'),
            'produk'  => $this->input->post('produk'),
            'ukuran'  => $this->input->post('ukuran'),
            'harga'  => $this->input->post('harga'),
            'pcs'  => $this->input->post('pcs'),
            'total'  => $this->input->post('total')
        );
        $this->viewTemplate('toko/hasil', $data); 
    }

    public function harga() 
    {
        $produk = $this->input->post('namaproduk');
        $data = $this->Model_Toko->getHarga($produk);
        echo json_encode($data);
    }
}

