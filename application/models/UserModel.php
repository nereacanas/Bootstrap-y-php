<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class UserModel extends CI_Model {

    public function add_user($user, $pass, $nombre, $ape1, $ape2, $edad, $telefono, $email) {
        if ($this->existe($user)) {
            return false;
        } else {
            $data = array(
                'username' => $user,
                'password' => $pass,
                'nombre' => $nombre,
                'apellido_uno' => $ape1,
                'apellido_dos' => $ape2,
                'edad' => $edad,
                'telefono' => $telefono,
                'email' => $email
            );
    
            if ($this->db->insert('usuarios', $data)) {
                return true;
            } else {
                return false;
            }
        }
    }
    public function existe($user) {
        $this->db->select('*');
        $this->db->from('usuarios');
        $this->db->where('username', $user);

        $resultado = $this->db->get();
        $array = $resultado->result_array();

        if (count($array) == 1) {
            return true;
        } else {
            return false;
        }
    }

    public function validate_user($user, $pass) {
        $this->db->select('*');
        $this->db->from('usuarios');
        $this->db->where('username', $user);
        $this->db->where('password', $pass);

        $resultado = $this->db->get();
        $array = $resultado->result_array();

        if (count($array) == 1) {
            $this->set_session($array[0]);
            return true;
        } else {
            return false;
        }
    }
    public function set_session($usuario) {
        $this->session->set_userdata(
            array('id' => $usuario['id'],
                'username' => $usuario['username'],
                'password' => $usuario['password'],
                'nombre' => $usuario['nombre'],
                'apellido_uno' => $usuario['apellido_uno'],
                'apellido_dos' => $usuario['apellido_dos'],
                'edad' => $usuario['edad'],
                'telefono' => $usuario['telefono'],
                'email' => $usuario['email'],
                'isLoggedIn' => true
            )
        );
    }

    public function update_user($nombre, $apellido1, $apellido2, $edad, $telefono, $email) {
        $this->db->set('nombre', $nombre);
        $this->db->set('apellido_uno', $apellido1);
        $this->db->set('apellido_dos', $apellido2);
        $this->db->set('edad', $edad);
        $this->db->set('telefono', $telefono);
        $this->db->set('email', $email);
        $this->db->where('username', $this->session->userdata('username'));

        if ($this->db->update('usuarios')) {
            $this->session->set_userdata("nombre", $nombre);
            $this->session->set_userdata("apellido_uno", $apellido1);
            $this->session->set_userdata("apellido_dos", $apellido2);
            $this->session->set_userdata("edad", $edad);
            $this->session->set_userdata("telefono", $telefono);
            $this->session->set_userdata("email", $email);
            return true;
        } else {
            return false;
        }
    }
    public function update_pass($pass, $pass_renew, $pass_repeat) {
        if ($this->session->userdata('password') === $pass && $pass_renew === $pass_repeat) {
            $this->db->set('password', $pass_renew);
            $this->db->where('username', $this->session->userdata('username'));

            if ($this->db->update('usuarios')) {
                $this->session->set_userdata("password", $pass_renew);
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public function delete_user($pass) {
        if ($this->session->userdata('password') === $pass) {
            $this->db->where("username", $this->session->userdata('username'));
            if ($this->db->delete("usuarios")) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }
}
?>