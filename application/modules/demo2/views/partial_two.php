<h2>Entries for Maharashtra</h2>
<table class="table table-bordered table-condensed table-strieped">
  <tr>
  	<th>Name</th>
  	<th>Age</th>
  	<th>City</th>
  	<th>State</th>
  </tr>
	<tr ng-repeat="entry in entries">
		<td>{{entry.name}}</td>
		<td>{{entry.age}}</td>
		<td>{{entry.city}}</td>
		<td>{{entry.state}}</td>
	</tr>
</table>