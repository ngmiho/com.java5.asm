<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div class="templatemo-content-container">
	<div class="templatemo-flex-row flex-content-row">
		<div class="templatemo-content-widget white-bg col-2">
			<i class="fa fa-times"></i>
			<div class="square"></div>
			<h2 class="templatemo-inline-block">MANAGE PRODUCT</h2>
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
									<td><a href="" class="white-text templatemo-sort-by">Name<span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">Price<span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">Type<span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">Image<span class="caret"></span>
									</a></td>
									<td>Edit</td>
									<td>Action</td>
									<td>Delete</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1.</td>
									<td>Black Coffee</td>
									<td>13.000 VND</td>
									<td>Coffee</td>
									<td>coffee1.png</td>
									<td><a href="" class="templatemo-edit-btn">Edit</a></td>
									<td><a href="" class="templatemo-link">Action</a></td>
									<td><a href="" class="templatemo-link">Delete</a></td>
								</tr>
								<tr>
									<td>2.</td>
									<td>Brown Coffee</td>
									<td>15.000 VND</td>
									<td>Coffee</td>
									<td>coffee2.png</td>
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
				</div>
				<form:form action="/admin/product/save" method="post"
					modelAttribute="product"
					class="form-horizontal templatemo-container" role="form">
					<div class="form-inner">
						<i class="fa fa-times"></i>
							<div class="media margin-bottom-30">
								<div class="media-left padding-right-25">
									<a href="#"> <img
										class="media-object img-circle templatemo-img-bordered"
										src="images/person.jpg" alt="Sunset">
									</a>
								</div>
								<div class="media-body">
									<h2 class="media-heading text-uppercase blue-text">Black Coffee</h2>
									<p>Type: Coffee</p>
								</div>
							</div>
						<div class="form-group">
							<div class="col-md-6">
								<label class="control-label">Name</label>
								<form:input path="name" class="form-control" />
								<form:errors path="name" style="color:red;" />
							</div>
							<div class="col-md-6">
								<label class="control-label">Price</label>
								<form:input path="price" class="form-control" />
								<form:errors path="price" style="color:red;" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-6">
								<label class="control-label">Type</label>
								<form:input path="type" class="form-control" />
								<form:errors path="type" style="color:red;" />
							</div>
							<div class="col-md-6">
								<label class="control-label">Image</label>
								<form:input path="image" class="form-control" />
								<form:errors path="image" style="color:red;" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<input type="submit" value="Update" class="btn btn-warning">
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>