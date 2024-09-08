<?php

namespace App\Models\Admin; // directory where this file exist

use CodeIgniter\Model;

class Introductionmodel extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'introduction_table';
    protected $allowedFields = [
        'title','description'
    ];
    
   
    public function singleData($id){        
        return $this->where('id', $id)->first();
    }


}