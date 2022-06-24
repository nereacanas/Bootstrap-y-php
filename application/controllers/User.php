<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

    public function registro() {
        $this->load->view('registro');
    }
    public function registrar() {
        $user = $this->input->post('username');
        $pass = $this->input->post('password');
        $nombre = $this->input->post('nombre');
        $ape1 = $this->input->post('apellido1');
        $ape2 = $this->input->post('apellido2');
        $edad = $this->input->post('edad');
        $telefono = $this->input->post('telefono');
        $email = $this->input->post('email');

        $this->load->model('UserModel');
        if ($this->UserModel->add_user($user, $pass, $nombre, $ape1, $ape2, $edad, $telefono, $email)) {
            $data['texto'] = "Usuario creado con éxito";
            $this->load->view('index', $data);
        } else {
            $data['texto'] = "Ese nombre de usuario ya existe";
            $this->load->view('index', $data);
        }
    }

    public function login() {
        $this->load->view('login');
    }
    public function checklogin() {
        $user = $this->input->post('username');
        $pass = $this->input->post('password');

        $this->load->model('UserModel');
        if ($user && $pass && $this->UserModel->validate_user($user, $pass)) {
            $data['texto'] = "Bienvenido " .$user;
            $this->load->view('inicio', $data);
        } else {
            $this->load->view('index');
        }
    }
    public function logout() {
        $this->session->sess_destroy();
        $this->load->view('index');
    }

    public function perfil() {
        $this->load->view('perfil');
    }
    public function mostrar() {
        $this->load->view('mostrar');
    }

    public function actualizar() {
        $this->load->view('actualizar');
    }
    public function update() {
        $nombre = $this->input->post('nombre');
        $apellido1 = $this->input->post('apellido1');
        $apellido2 = $this->input->post('apellido2');
        $edad = $this->input->post('edad');
        $telefono = $this->input->post('telefono');
        $email = $this->input->post('email');

        $this->load->model('UserModel');
        if ($this->UserModel->update_user($nombre, $apellido1, $apellido2, $edad, $telefono, $email)) {
            $this->load->view('perfil');
        }
    }

    public function modificar() {
        $this->load->view('modificar');
    }
    public function modify() {
        $pass = $this->input->post('password');
        $pass_renew = $this->input->post('password_renew');
        $pass_repeat = $this->input->post('password_repeat');

        $this->load->model('UserModel');
        if ($this->UserModel->update_pass($pass, $pass_renew, $pass_repeat)) {
            $this->load->view('perfil');
        } else {
            $this->load->view('perfil');
        }
    }

    public function eliminar() {
        $this->load->view('eliminar');
    }
    public function delete() {
        $pass = $this->input->post('password');

        $this->load->model('UserModel');
        if ($this->UserModel->delete_user($pass)) {
            $this->session->sess_destroy();
            $this->load->view('index');
        } else {
            $this->load->view('perfil');
        }
    }

}

?>