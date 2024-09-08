<div class="container-fluid py-3">
    <div class="row justify-content-center">
        <div class='col row'>
            <div class='col'>
                <h4 class='txt-red'><b>Employee Trashbin</b></h4>
            </div>
            <div class='col text-right'>
                <a class='' href=''><i class='fas fa-arrow-right fa-3x'></i> Home/employee</a>
            </div>
            <hr>
        </div>
        <div class="col-md-12">
            <a href="<?=base_url() . 'employee-list'?>" class="btn btn-outline-primary my-2">Back</a>
            <form action="<?=base_url() . 'delete-multiple-selected-employee-permanenlty'?>" method="post">
                <div class="col-12 p-0 d-flex gap-3 justify-content-between">
                    <div class="col-3 d-flex gap-3">
                        <input id="itemID" type="text" name="itemID" value="" hidden>
                        <select class="form-select" name="bulkAction" id="">
                            <option value="" hidden>Bulk Action</option>
                            <option value="1">Delete Permanently</option>
                            <option value="2">Restore</option>
                        </select>
                        <button type="submit" class="btn btn-outline-dark">Apply</button>
                    </div>

                    <div class="col flex-end text-right">
                        <a class="btn btn-danger" href="<?=base_url().'delete-all-employee-permanently'?>">Delete All</a>
                    </div>
                </div>
            </form>
            <hr>
            <div class="col d-flex gap-2 ">
                

                <?php if (session()->has('success')): ?>
                <div class="float-end  notification alert z-1 alert-success col-3 p-0 my-2 successMessage">
                    <p class="m-0 p-1"><?=session('success') ?? ''?></p>
                </div>
                <?php endif?>

                <?php if (session()->has('errors')): ?>
                <div class="float-end  notification alert z-1 alert-danger col-3 p-0 my-2 successMessage">
                    <p class="m-0 p-1"><?=session('errors') ?? ''?></p>
                </div>
                <?php endif?>

            </div>
            
            <div class="card">

                <div class="card-header">Employee list</div>
                <div class="card-body">

                    <table class="table" id="myTable">
                        <thead>
                            <tr>
                                <th>
                                    <input class="ml-1 selectAll" type="checkbox">
                                </th>
                                <th>S.n</th>
                                <th>Employee name</th>
                                <th>Designation</th>
                                <th>Email</th>
                                <th>Mobile</th>
                                <th>Display Order</th>
                                <th>status</th>
                                <th>Image</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 0;if (!empty($employeeTrashList)): foreach ($employeeTrashList as $el): $i++?>
                            <tr>
                                <td><input type="checkbox" class="ml-1 checkBoxClass selectItem" value="<?php if (!empty($el['employeeId'])): echo $el['employeeId'];
        endif?>"></td>
                                <td><?=$i.'.' ?? ''?></td>
                                <td><?=$el['employname'] ?? ''?></td>
                                <td><?=$el['designation'] ?? ''?></td>
                                <td><?=$el['email'] ?? ''?></td>
                                <td><?=$el['mobile'] ?? ''?></td>
                                <td><?=$el['employeeOrder'] ?? ''?></td>
                                <td><?=$el['activeStatus'] ? '<span class="bg-success rounded-2 px-1">Active</span>' : '<span class="bg-danger rounded-2 px-1">Inactive</span>';?>
                                </td>
                                <td><img class="w-25" src="<?=base_url() . 'assets/uploads/' . $el['image'] ?? ''?>"
                                        alt="">
                                </td>
                                <td class="d-flex gap-2">
                                   
                                    <a href="<?=base_url() . 'delete-employee-this-premanently?employeeId='.($el['employeeId'] ?? '')?>"><i
                                            class="fa fa-trash text-danger"></i></a>

                                </td>



                            </tr>
                            <?php endforeach;endif?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>