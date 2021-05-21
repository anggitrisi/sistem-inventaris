<?
class UsersModel extends CI_Model{
    function registerUser($data){
        $this->db->insert('usr_users', $data);
        if($response){
            return 1;
        } else {
            return 0;
        }
    }
}
?>