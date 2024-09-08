<form action="<?php echo base_url() . 'save-employee-layout' ?>" method="post" enctype="multipart/form-data">
    <div class="card p-3 position-relative">
        <?php if (session()->has('success')): ?>
        <div class="float-end  notification alert z-1 alert-success col-3 p-0 my-2 successMessage">
            <p class="m-0 p-1"><?= session('success') ?? '' ?></p>
        </div>
        <?php elseif(session()->has('errors')): ?>
        <div class="float-end alert notification alert z-1 alert-danger col-3 p-0 my-2 successMessage">
            <p class="m-0 p-1"><?= session('errors') ?? '' ?></p>
        </div>
        <?php endif; ?>
        <div class="col row">
            <div class="col">
                <h4 class="txt-blue"><b>Employee Layout</b></h4>
            </div>
            <div class="col text-right">
                <a class="" href=""><i class="fas fa-arrow-right fa-3x"></i> Home/employee-layout</a>
            </div>
        </div>
        <hr>
        <div class="col row">
            <div class="col-6">

                <div class="form-control" id="categoryToggle">
                    <label for="">Select category name...</label>
                    <span class="arrow-down float-right" id="carret">&#9660;</span>
                </div>
                <div class="category-selection my-3">

                    <ul id="categoryList">
                        <input type="text" id="categorySearch" placeholder="Search category...">

                        <?php foreach ($employeeList as $emplist): ?>
                        <li>
                            <label>
                                <input type="checkbox" name="employeeId[]"
                                    value="<?php echo isset($emplist['employeeId']) ? $emplist['employeeId'] : ''; ?>">
                                <?php echo isset($emplist['employname']) ? $emplist['employname'] : ''; ?>
                            </label>
                        </li>

                        <?php endforeach?>

                    </ul>
                </div>

            </div>
            <div class="col-3 d-flex flex-row gap-2">
                <span class="text-wrap">Order by:</span>
                <input type="number" min="1" class="form-control" name="orderBy">
                <a href="<?=base_url().'get-employee-list'?>">copy link for menu</a>
            </div>

        </div>
        <div class="card-footer">

            <button class="btn btn-danger" type="submit">Save++</button>
        </div>
    </div>
</form>


<div class="container-fluid">
    <span class="h6 my-2 fw-bold text-danger">Employee layouts List</span>
    <hr>

    <table class="table">
        <thead>
            <tr>
                <th>s.n</th>
                <th>Row Name</th>
                <th>Employee List</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php if(!empty($employeeLayouts)) : $i=0; foreach($employeeLayouts as $el): $i++ ?>
            <tr>
                <td><?=$i ?? ''?></td>
                <td><?=$i.'st'.' '.'Row' ?? ''?></td>
                <td><?=$employname ?? ''?></td>
            </tr>
            <?php endforeach; endif?>
        </tbody>
    </table>
</div>