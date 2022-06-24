<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

    public function general() {
        $this->load->view('admin');
    }
    public function registro_a() {
        $this->load->view('registro_admin');
    }
    public function registrar() {
        $user_admin = $this->input->post('user_admin');
        $pass_admin = $this->input->post('pass_admin');
        $email_admin = $this->input->post('email_admin');

        $this->load->model('AdminModel');
        if ($this->AdminModel->add_admin($user_admin, $pass_admin, $email_admin)) {
            $data['texto'] = "Administrador creado con éxito";
            $this->load->view('admin', $data);
        } else {
            $data['texto'] = "Ese administrador ya existe";
            $this->load->view('registro_admin', $data);
        }
    }

    public function checklogin() {
        $user_admin = $this->input->post('user_admin');
        $pass_admin = $this->input->post('pass_admin');

        $this->load->model('AdminModel');
        if ($user_admin && $pass_admin && $this->AdminModel->validate_admin($user_admin, $pass_admin)) {
            $data['texto'] = "Bienvenido " .$user_admin;
            $this->load->view('admin', $pass_admin);
        } else {
            $this->load->view('login_admin');
        }
    }
    public function logout() {
        $this->session->sess_destroy();
        $this->load->view('login_admin');
    }

    public function eliminar_a() {
        $this->load->model('AdminModel');

        $lista = $this->AdminModel->list_user();
        $this->session->set_userdata('lista_users', $lista);
 
        $this->load->view('eliminar_admin');
    }
    public function delete() {
        $user_del = $this->input->post('user_del');
        
        $this->load->model('AdminModel');
        if ($this->AdminModel->delete_admin($user_del)) {
            $this->session->sess_destroy();
            $this->load->view('admin');
        } else {
            $this->load->view('eliminar_admin');
        }
    }
}

?>