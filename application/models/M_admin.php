<?php 

    defined('BASEPATH') or exit('No Direct Access Script are Allowed');

    //untuk login
    class M_admin extends CI_Model
    {
        public function logged_in($username)
        {
            return $this->db->select()->where('username', $username)->limit(1)->get('login');
        }
    }