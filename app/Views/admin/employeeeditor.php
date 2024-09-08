<?php if (!empty($singleEmployee)): extract($singleEmployee);endif?>
<div class="container-fluid py-3">
    <div class="row justify-content-center">
        <div class='col row'>
            <div class='col'>
                <h4 class='txt-blue'><b>Employee Setup</b></h4>
            </div>
            <div class='col text-right'>

                <a class='' href=''><i class='fas fa-arrow-right fa-3x'></i> Home/employee</a>
            </div>
            <hr>
        </div>
        <div class="col-md-12">
            <a href="<?=base_url() . 'employee-list'?>" class="btn btn-outline-primary my-2">View All</a>
            <?php if (session()->has('success')): ?>
            <div class="float-end  notification alert z-1 alert-success col-3 p-0 my-2 successMessage">
                <p class="m-0 p-1"><?=session('success') ?? ''?></p>
            </div>

            <?php elseif (session()->has('errors')): ?>
            <div class="float-end alert notification alert z-1 alert-danger col-3 p-0 my-2 successMessage">
                <ul>
                    <?php foreach (session('errors') as $error): ?>
                    <li><?=esc($error)?></li>
                    <?php endforeach?>
                </ul>
            </div>
            <?php endif;?>
            <div class="card">
                <div class="card-header">Add Employee</div>
                <div class="card-body">
                    <form action="<?=base_url() . 'save-employee' . (!empty($employeeId) ? '/' . $employeeId : '')?>"
                        method="POST" enctype="multipart/form-data">
                        <div class="col row">
                            <div class="form-group col">
                                <label for="employname">Employee Name</label>
                                <input type="text" class="form-control" id="employname" name="employname"
                                    value="<?=$employname ?? ''?>" required>
                            </div>
                            <div class="form-group col">
                                <label for="designation">Designation</label>
                                <input type="text" class="form-control" id="designation" name="designation"
                                    value="<?=$designation ?? ''?>">
                            </div>

                            <div class="form-group col">
                                <label for="level">Level</label>
                                <input type="text" class="form-control" id="level" name="level"
                                    value="<?=$level ?? ''?>">
                            </div>

                            <div class="form-group col">
                                <label for="serviceCategory">Service Category</label>
                                <input type="text" class="form-control" id="serviceCategory" name="serviceCategory"
                                    value="<?=$serviceCategory ?? ''?>">
                            </div>
                        </div>
                        <div class="col row">
                            <div class="form-group col">
                                <label for="employeeIdnUm">Employee Id No.</label>
                                <input type="text" class="form-control" id="employeeIdnUm" name="employeeIdnUm"
                                    value="<?=$employeeIdnUm ?? ''?>">
                            </div>
                            <div class="form-group col">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" name="email"
                                    value="<?=$email ?? ''?>">
                            </div>
                            <div class="form-group col">
                                <label for="mobile">Mobile</label>
                                <input type="text" class="form-control" id="mobile" name="mobile"
                                    value="<?=$mobile ?? ''?>">
                            </div>

                            <div class="form-group col">
                                <label for="address">Address</label>
                                <input type="text" class="form-control" id="address" name="address"
                                    value="<?=$address ?? ''?>">
                            </div>
                            <div class="form-group col">
                                <label for="mobile">Insert Before</label>
                                <select class="form-control" name="insertBefore" id="">
                                    <option hidden value="">Select Employee to Insert Before</option>
                                    <?php if (!empty($allemployee)): foreach ($allemployee as $all): ?>
                                    <option value="<?=$all['employeeId'] ?? ''?></option>"><?=$all['employname'] ?? ''?></option>
                                    <?php endforeach;endif?>
                                </select>
                            </div>
                        </div>
                        <div class="col row">
                            <div class="form-group col">
                                <label for="image">Image</label>
                                <input class='w-100 form-control' type='file' accept='image/*' name='featured_image'
                                    id='feature_mage'>
                            </div>
                            <div class="col-1 my-auto">
                                <img id="featureImage" class='object-fit-fill w-100 border border-2 border-light'
                                    src="<?=base_url() . 'assets/uploads/' . (!empty($image) ? $image : 'no-image.jpg')?>"
                                    alt=''>
                            </div>
                            <div class="form-group col">
                                <input type="number" class="form-control" id="employeeOrder" name="employeeOrder"
                                    value="<?=$employeeOrder ?? $last_add_order?>" hidden>
                            </div>
                        </div>

                        <div class="col row ps-4">
                            <div class="form-group form-check col ">
                                <input type="checkbox" class="form-check-input" id="activeStatus" name="activeStatus"
                                    value="1"
                                    <?php if (!empty($activeStatus) && $activeStatus == '1'): echo 'checked';endif?>>
                                <label class="form-check-label" for="activeStatus">Active</label>
                            </div>
                            <div class="col">
                                <button type="submit" class="btn btn-primary">Save +</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>