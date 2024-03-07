<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div class="templatemo-content-container">
	<div class="templatemo-flex-row flex-content-row">
		<div class="templatemo-content-widget white-bg col-2">
			<div class="col-1">
			    <div class="panel panel-default templatemo-content-widget white-bg no-padding templatemo-overflow-hidden">
			      <i class="fa fa-times"></i>
			      <div class="panel-heading templatemo-position-relative">
			      	<div class="square"></div>
					<h2 class="templatemo-inline-block">ORDER MANAGEMENT</h2>
			      </div>
			      <br>
			      <div class="row">
			        <div class="col-md-3 m-2">
			          <input type="text" class="form-control" placeholder="By Order ID" name="orderId">
			        </div>
			        <div class="col-md-3 m-2">
			          <input type="text" class="form-control" placeholder="By Status" name="status">
			        </div>
			        <a href="#" class="btn btn-warning">Search</a>
			      </div>
			      <div class="table-responsive">
			        <table class="table table-striped table-bordered">
			          <thead>
			            <tr>
			              <td>Order ID</td>
			              <td>Status</td>
			              <td>Total</td>
			            </tr>
			          </thead>
			          <tbody>
			            <tr>
			              <td>order001</td>
			              <td>Delivering</td>
			              <td>xxx.xxx VND</td>
			            </tr>
			          </tbody>
			        </table>
			      </div>
			    </div>
			  </div>
			
			  <div class="templatemo-flex-row flex-content-row">
			    <div class="col-1">
			      <div class="panel panel-default margin-10">
			        <div class="panel-heading">
			        	<div class="square"></div>
						<h1 class="templatemo-inline-block">ORDER INFORMATION</h1>
			          <br><br>
			          <div class="mb-3">
			            <label>Order ID: </label>
			          </div>
			          <div class="mb-3">
			            <label>Address: </label>
			          </div>
			          <br>
			          <h2 class="text-uppercase">Status</h2>
			          <div class="templatemo-content-widget white-bg">
			            <i class="fa fa-times"></i>
			            <h3 class="text-uppercase margin-bottom-10">
			              Order is ...
			            </h3>
			            <br>
			            <p class="margin-bottom-0">
			              Time: xx : xx AM/PM
			            </p>
			            <br>
			            <div class="form-group">
							<a href="#" class="templatemo-blue-button">Contact</a>
						</div>
			          </div>
			        </div>
			      </div>
			    </div>
			  </div>			
		</div>
	</div>
</div>