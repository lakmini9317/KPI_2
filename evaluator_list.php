<?php include'db_connect.php' ?>
<div class="col-lg-12">
	<div class="card card-outline card-success">
		<div class="card-header">
			<div class="card-tools">
				<a class="btn btn-block btn-sm btn-default btn-flat border-primary" href="./index.php?page=new_evaluator"><i class="fa fa-plus"></i> Add New Evaluator</a>
			</div>
		</div>
		<div class="card-body">
			<table class="table tabe-hover table-bordered" id="list">
				<thead>
					<tr>
						<th width="5%" class="text-center">#</th>
						<th>Emp. ID</th>
						<th>Name of the officer</th>
						<th>Email</th>
						<th width="15%">Action</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$i = 1;
					$qry = $conn->query("SELECT *,concat(lastname,', ',firstname,' ',middlename) as name FROM evaluator_list order by concat(lastname,', ',firstname,' ',middlename) desc");
					while($row= $qry->fetch_assoc()):
					?>
					<tr>
						
						<th class="text-center"><?php echo $i++ ?></th>
						<th class="text-center"><?php echo $row['employee_id'] ?></th>
						<td><b><?php echo ucwords($row['name']) ?></b></td>
						<td><b><?php echo $row['email'] ?></b></td>
						<td class="text-center">
							<button type="button" class="btn btn-default btn-sm btn-flat border-info wave-effect text-info dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
		                      Action
		                    </button>
		                    <div class="dropdown-menu" style="">
		                      <a class="dropdown-item view_evaluator" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">View</a>
		                      <div class="dropdown-divider"></div>
		                      <a class="dropdown-item" href="./index.php?page=edit_evaluator&id=<?php echo $row['id'] ?>">Edit</a>
		                      <div class="dropdown-divider"></div>
		                      <a class="dropdown-item delete_evaluator" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">Delete</a>
		                    </div>
						</td>
					</tr>	
				<?php endwhile; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		$('#list').dataTable()
	$('.view_evaluator').click(function(){
		uni_modal("<i class='fa fa-id-card'></i> Evaluator Details","view_evaluator.php?id="+$(this).attr('data-id'))
	})
	$('.delete_evaluator').click(function(){
	_conf("Are you sure to delete this Evaluator?","delete_evaluator",[$(this).attr('data-id')])
	})
	})
	function delete_evaluator($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_evaluator',
			method:'POST',
			data:{id:$id},
			success:function(resp){
				if(resp==1){
					alert_toast("Data successfully deleted",'success')
					setTimeout(function(){
						location.reload()
					},1500)

				}
			}
		})
	}
</script>