<?php include('db_connect.php') ?>
<?php
$twhere ="";
if($_SESSION['login_type'] != 1)
  $twhere = "  ";
?>
<!-- Info boxes -->
<?php if($_SESSION['login_type'] == 2): ?>
        <div class="row">
          <div class="col-12 col-sm-6 col-md-4">
           <a href="./index.php?page=department">
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM department_list ")->num_rows; ?></h3>
                <p>Total Divisions</p>
              </div>
              <div class="icon">
                <i class="fa fa-th-list" style="color:#FFAB45;"></i>
              </div>
            </div></a>
          </div>

           <div class="col-12 col-sm-6 col-md-4">
           <a href="./index.php?page=designation">
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM designation_list")->num_rows; ?></h3>
                <p>Total Designations</p>
              </div> 
              <div class="icon">
                <i class="fa fa-list-alt" style="color:#FFAB45;"></i>
              </div>
            </div></a>
          </div>

           <div class="col-12 col-sm-6 col-md-4">
            <a href="./index.php?page=user_list">
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM users")->num_rows; ?></h3>
                <p>Total Users</p>
              </div>
              <div class="icon">
                <i class="fa fa-users" style="color:#FFAB45;"></i>
              </div>
            </div></a>
          </div>

          
          <div class="col-12 col-sm-6 col-md-4">
          <a href="./index.php?page=employee_list">
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM employee_list")->num_rows; ?></h3>
                <p>Total Employees</p>
              </div>
              <div class="icon">
                <i class="fa fa-user-friends" style="color:#FFAB45;"></i>
              </div>
            </div></a>
          </div>

          <div class="col-12 col-sm-6 col-md-4">
           <a href="./index.php?page=evaluator_list">
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM evaluator_list")->num_rows; ?></h3>
                <p>Total Evaluators</p>
              </div>
              <div class="icon">
                <i class="fa fa-user-secret" style="color:#FFAB45;"></i>
              </div>
            </div></a>
          </div>

          
          <div class="col-12 col-sm-6 col-md-4" >
           <a href="./index.php?page=task_list"> 
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM task_list")->num_rows; ?></h3>
                <p>Total Tasks</p>
              </div>
                  <div class="icon">
                <i class="fa fa-tasks" style="color:#FFAB45;"></i>
              </div>
            </div>
          </div></a>
      </div>

<?php else: ?>
   <div class="col-12">
          <div class="card">
            <div class="card-body">
              Welcome <?php echo $_SESSION['login_name'] ?>!
            </div>
          </div>
      </div>
          
<?php endif; ?>
