<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="templatemo-content-container">
	<div class="templatemo-flex-row flex-content-row">
		<div class="templatemo-content-widget white-bg col-2">
			<i class="fa fa-times"></i>
			<div class="square"></div>
			<h2 class="templatemo-inline-block">MANAGE ACCOUNT</h2>
			<hr>
			<div class="templatemo-content-container">
				<div class="templatemo-content-widget no-padding">
					<div class="panel panel-default table-responsive">
						<table
							class="table table-striped table-bordered templatemo-user-table">
							<thead>
								<tr>
									<td><a href="" class="white-text templatemo-sort-by">#
											<span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">First
											Name <span class="caret">
									</span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">Last
											Name <span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">Gender <span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">User
											Name <span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">Phone <span class="caret"></span>
									<td><a href="" class="white-text templatemo-sort-by">Address <span class="caret"></span>
									<td><a href="" class="white-text templatemo-sort-by">Email
											<span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">Role<span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">Active<span class="caret"></span>
									</a></td>
									<td>Edit</td>
									<td>Action</td>
									<td>Delete</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1.</td>
									<td>John</td>
									<td>Smith</td>
									<td>Male</td>
									<td>0900000001</td>
									<td>TP.HCM</td>
									<td>@jS</td>
									<td>js@company.com</td>
									<td>Admin</td>
									<td>True</td>
									<td><a href="" class="templatemo-edit-btn">Edit</a></td>
									<td><a href="" class="templatemo-link">Action</a></td>
									<td><a href="" class="templatemo-link">Delete</a></td>
								</tr>
								<tr>
									<td>2.</td>
									<td>John</td>
									<td>Smith</td>
									<td>Male</td>
									<td>0900000002</td>
									<td>TP.HCM</td>
									<td>@jS</td>
									<td>js@company.com</td>
									<td>Admin</td>
									<td>True</td>
									<td><a href="" class="templatemo-edit-btn">Edit</a></td>
									<td><a href="" class="templatemo-link">Action</a></td>
									<td><a href="" class="templatemo-link">Delete</a></td>
								</tr>
							</tbody>
						</table>
						<div class="pagination-wrap">
							<ul class="pagination">
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li class="active"><a href="#">3 <span class="sr-only">(current)</span></a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#" aria-label="Next"> <span
										aria-hidden="true"><i class="fa fa-play"></i></span>
								</a></li>
							</ul>
						</div>
					</div>
					<form:form action="/admin/user" method="post"
						modelAttribute="user"
						class="form-horizontal templatemo-container" role="form">
							<i class="fa fa-times"></i>
							<div class="media margin-bottom-30">
								<div class="media-left padding-right-25">
									<a href="#"> <img
										class="media-object img-circle templatemo-img-bordered"
										src="images/person.jpg" alt="Sunset">
									</a>
								</div>
								<div class="media-body">
									<h2 class="media-heading text-uppercase blue-text">John
										Barnet</h2>
									<p>Project Manager</p>
								</div>
							</div>
							<div class="form-inner">
								<div class="form-group">
									<div class="col-md-6">
										<label for="first_name" class="control-label">First
											Name</label>
										<form:input path="firstName" class="form-control" />
										<form:errors path="firstName" style="color:red;" />
									</div>
									<div class="col-md-6">
										<label for="first_name" class="control-label">Last Name</label>
										<form:input path="lastName" class="form-control" />
										<form:errors path="lastName" style="color:red;" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-6">
										<label for="first_name" class="control-label">User
											Name</label>
										<form:input path="userName" class="form-control" />
										<form:errors path="userName" style="color:red;" />
									</div>
									<div class="col-md-6">
										<label for="first_name" class="control-label">Password
											</label>
										<form:input tyle="password" path="password" class="form-control" />
										<form:errors path="password" style="color:red;" />
									</div>
									<div class="col-md-6">
										<label for="email" class="control-label">Email</label>
										<form:input path="email" class="form-control" />
										<form:errors path="email" style="color:red;" />
									</div>
								</div><div class="form-group">
									<div class="col-md-6">
										<label for="phone" class="control-label">Phone</label>
										<form:input path="phoneNumber" class="form-control" />
										<form:errors path="phoneNumber" style="color:red;" />
									</div>
									
								</div>
								
								<div class="form-group">
									<div class="col-md-6 templatemo-radio-group">
										<div class="mb-3">
											<label class="form-label">Role</label><br> 
											<label
												class="radio-inline"> 
												<form:radiobutton path="admin" value="0" label="Admin" checked="true" />
											</label> 
											<label class="radio-inline"> 
												<form:radiobutton path="admin" value="1" label="User"/>
											</label> 
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-6 templatemo-radio-group">
										<div class="mb-3">
											<label class="form-label">Active</label><br> 
											<label
												class="radio-inline"> 
												<form:radiobutton path="active" value="0" label="Yes" checked="true" />
											</label> 
											<label class="radio-inline"> 
												<form:radiobutton path="active" value="1" label="No"/>
											</label> 
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<input type="submit" value="Save" class="btn btn-warning">
									</div>
								</div>
							</div>
						</form:form>
				</div>
			</div>
		</div>
	</div>
</div>