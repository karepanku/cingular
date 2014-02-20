function demo_home($scope, $http) {
    $scope.name = 'Amitav';

    // Initialising the variable.
    $scope.users = [];
    
    // Getting the list of users through ajax call.
    $http({
	url: base_url + '/demo1/json_get_user',
	method: "POST",
    }).success(function (data) {
	$scope.users = data;
	console.log(data);
    });
}