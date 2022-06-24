<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class ReceipeModel extends CI_Model {

    public function tradicionales() {
        $categoria = "Recetas tradicionales";
        
        $this->db->select('*');
        $this->db->from('recetas');
        $this->db->where('categoria', $categoria);

        return $this->db->get();
    }

    public function slowfood() {
        $categoria = "Recetas Slow Food";
        
        $this->db->select('*');
        $this->db->from('recetas');
        $this->db->where('categoria', $categoria);

        return $this->db->get();
    }

    public function sinaceite() {
        $categoria = "Recetas de freidora sin aceite";
        
        $this->db->select('*');
        $this->db->from('recetas');
        $this->db->where('categoria', $categoria);

        return $this->db->get();
    }

    public function individual($id) {        
        $this->db->select('*');
        $this->db->from('recetas');
        $this->db->where('id', $id);

        $query = $this->db->get();
        $array = $query->result_array();

        if (count($array) == 1) {
            $this->set_session($array[0]);
            return true;
        } else {
            return false;
        }
    }
    public function set_session($receta) {
        $this->session->set_userdata(
            array('id' => $receta['id'],
                'titulo' => $receta['titulo'],
                'elaboracion' => $receta['elaboracion'],
                'dificultad' => $receta['dificultad'],
                'categoria' => $receta['categoria'],
                'imagen' => $receta['imagen']
            )
        );
    }
    public function list_ing($id) {
        $this->db->select('*');
        $this->db->from('ingredientes');
        $this->db->where('id_recetas', $id);
    
        $query = $this->db->get();
        return $query->result_array();
    }

    /*public function individual($id) {        
        $this->db->select('*');
        $this->db->from('recetas');
        $this->db->where('id', $id);

        $query = $this->db->get();
        $array = $query->result_array();

        if (count($array) == 1) {
            $this->db->select('ingrediente');
            $this->db->from('ingredientes');
            $this->db->where('id_recetas', $id);
    
            $query2 = $this->db->get();
            $array2 = $query2->result_array();

            $this->set_session($array[0], $array2[0]);
            return true;
        } else {
            return false;
        }
    }
    public function set_session($receta, $ingrediente) {
        $this->session->set_userdata(
            array('id' => $receta['id'],
                'titulo' => $receta['titulo'],
                'elaboracion' => $receta['elaboracion'],
                'dificultad' => $receta['dificultad'],
                'categoria' => $receta['categoria'],
                'imagen' => $receta['imagen']
            )
        );
    }*/

    public function add_coment($user, $comentario) {
        $data = array(
            'comentario' => $comentario,
            'id_receta' => $this->session->userdata('id'),
            'username' => $user
        );

        if ($this->db->insert('comentarios', $data)) {
            return true;
        } else {
            return false;
        }
    }
    public function list_coment() {
        $this->db->select('*');
        $this->db->from('comentarios');
        $this->db->where('id_receta', $this->session->userdata('id'));

        $query = $this->db->get();
        return $query->result_array();
    }
}
?>