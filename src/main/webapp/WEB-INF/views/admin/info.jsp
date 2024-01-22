<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div class="templatemo-content-container">
				<div class="templatemo-flex-row flex-content-row">
					<div class="templatemo-content-widget white-bg col-2">
						<i class="fa fa-times"></i>
						<div class="square"></div>
						<h2 class="templatemo-inline-block">PERSIONAL INFORMATION</h2>
						<hr>
						<form:form action="/admin/index" method="post"
							modelAttribute="account"
							class="form-horizontal templatemo-container" role="form">
							<div class="form-inner">
								<div class="form-group">
									<div class="col-md-6">
										<label class="control-label">First Name</label>
										<form:input path="firstname" class="form-control" />
										<form:errors path="firstname" style="color:red;" />
									</div>
									<div class="col-md-6">
										<label class="control-label">Last Name</label>
										<form:input path="lastname" class="form-control" />
										<form:errors path="lastname" style="color:red;" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<label class="control-label">Email</label>
										<form:input path="email" class="form-control" />
										<form:errors path="email" style="color:red;" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-6 templatemo-radio-group">
										<div class="mb-3">
											<label class="form-label">Gender</label><br> 
											<label class="radio-inline"> 
												<form:radiobutton path="gender" value="0" label="Male" checked="true" />
											</label> 
											<label class="radio-inline"> 
												<form:radiobutton path="gender" value="1" label="Female" />
											</label> 
											<label class="radio-inline"> 
												<form:radiobutton path="gender" value="2" label="Other" />
											</label>
										</div>
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