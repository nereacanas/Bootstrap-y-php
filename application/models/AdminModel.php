<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class AdminModel extends CI_Model {

    public function add_admin($user_admin, $pass_admin, $email_admin) {
        if ($this->existe($user_admin)) {
            return false;
        } else {
            $data = array(
                'user_admin' => $user_admin,
                'pass_admin' => $pass_admin,
                'email_admin' => $email_admin
            );
    
            if ($this->db->insert('administradores', $data)) {
                return true;
            } else {
                return false;
            }
        }
    }
    public function existe($user_admin) {
        $this->db->select('*');
        $this->db->from('administradores');
        $this->db->where('user_admin', $user_admin);

        $resultado = $this->db->get();
        $array = $resultado->result_array();

        if (count($array) == 1) {
            return true;
        } else {
            return false;
        }
    }

    public function validate_admin($user_admin, $pass_admin) {
        $this->db->select('*');
        $this->db->from('administradores');
        $this->db->where('user_admin', $user_admin);
        $this->db->where('pass_admin', $pass_admin);

        $resultado = $this->db->get();
        $array = $resultado->result_array();

        if (count($array) == 1) {
            $this->set_session($array[0]);
            return true;
        } else {
            return false;
        }
    }
    public function set_session($admin) {
        $this->session->set_userdata(
            array('id' => $admin['id'],
                'user_admin' => $admin['user_admin'],
                'pass_admin' => $admin['pass_admin'],
                'email_admin' => $admin['email_admin'],
                'isLoggedIn' => true
            )
        );
    }

    public function delete_admin($user_del) {
        $this->db->where("username", $user_del);
        if ($this->db->delete("usuarios")) {
            return true;
        } else {
            return false;
        }
    }
    public function list_user() {
        $this->db->select('username');
        $this->db->from('usuarios');

        $query = $this->db->get();
        return $query->result_array();
    }
}
?>