<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Receipe extends CI_Controller {

    public function recetas() {
        $this->load->view('recetas');
    }
    
    public function tradicionales() {
        $this->load->model('ReceipeModel');
        $data = array(
            'resultado' => $this->ReceipeModel->tradicionales()
        );
        $this->load->view('tradicionales', $data);
    }

    public function slowfood() {
        $this->load->model('ReceipeModel');
        $data = array(
            'resultado' => $this->ReceipeModel->slowfood()
        );
        $this->load->view('slowfood', $data);
    }
    public function sinaceite() {
        $this->load->model('ReceipeModel');
        $data = array(
            'resultado' => $this->ReceipeModel->sinaceite()
        );
        $this->load->view('sinaceite', $data);
    }

    public function individual() {
        $id = $this->input->post('id');

        $this->load->model('ReceipeModel');
        if ($this->ReceipeModel->individual($id)) {
            $this->load->model('ReceipeModel');
            $ing = $this->ReceipeModel->list_ing($id);
            $this->session->set_userdata('ingrediente', $ing);  
            $comen = $this->ReceipeModel->list_coment();
            $this->session->set_userdata('comentario', $comen);      
            $data = array(
                'resultado' => $this->ReceipeModel->individual($id)
            );
            $this->load->view('individual', $data);
        } 
    }

    public function comentarios() {
        $user = $this->input->post('username');
        $comentario = $this->input->post('comentario');

        $this->load->model('ReceipeModel');
        if ($this->ReceipeModel->add_coment($user, $comentario)) {
            $this->load->view('individual');
        }
    }
}
?>