<div class="span6" ng-app ng-controller="demo_home">
  
  <p>My name is <em>{{name}}</em></p>
  
  <table class="table table-striped table-condensed table-bordered">
    <tr>
    	<th>Name</th>
    	<th>Age</th>
    	<th>City</th>
    	<th>State</th>
    </tr>
  	<tr ng-repeat="user in users">
  		<td>{{user.name}}</td>
  		<td>{{user.age}}</td>
  		<td>{{user.city}}</td>
  		<td>{{user.state}}</td>
  	</tr>
  </table>
  
</div>