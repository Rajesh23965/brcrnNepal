<?php

namespace App\Models\Admin;

use CodeIgniter\Model;

class EmployeeModel extends Model
{
    protected $table            = 'employees';
    protected $primaryKey       = 'employeeId';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';    
    protected $allowedFields    = [


        'employname','designation','email','mobile','image','employeeOrder',
        'level','serviceCategory','employeeIdnUm','address','deleteStatus','activeStatus','addedon','addedby'
    ];


    public function getAllEmployee(){

        return $this->where('deleteStatus','0')->orderBy('employeeOrder', 'ASC')->findAll();
    }


    public function getEmployeeById($employeeId){

        return $this->where('employeeId',$employeeId)->where('deleteStatus','0')->first();

    }

    public function getAllEmployeeWithLayout() {
        return $this
            ->join('employeelayouts', 'FIND_IN_SET(employees.employeeId,employeelayouts.employeeId) > 0','left')
            ->orderBy('employeelayouts.order_by', 'ASC')
            ->findAll();
    }


   


    

    
}
