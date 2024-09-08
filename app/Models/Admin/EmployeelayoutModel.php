<?php

namespace App\Models\Admin;

use CodeIgniter\Model;

class EmployeelayoutModel extends Model
{
    protected $table            = 'employeelayouts';
    protected $primaryKey       = 'emlayoutId';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';    
    protected $allowedFields    = ['employeeId','order_by'];



    public function getEmployeeLayoutList(){

        return $this->findAll();
    }


    
    

    
}
