// Home
function Home ($http, $scope, mySharedService) {
  // Getting the data of the time sheet entries through http request
  $http({
    // headers: {'Content-Type': 'application/x-www-form-urlencoded'},
    url: base_url + '/timetracker/get_entries',
    // method: "POST",
    // data: $.param({"asdsad": 'asdasd'}),
  })
  .success(function(data) {
    $scope.entries = data;
  });
  
}

// Edit
function Edit ($scope, mySharedService) {
  $scope.$on('handleBroadcast', function () {
    $scope.message = mySharedService.message;
  });
}

// Delete
function Delete ($scope, mySharedService) {
  
}

// Injecting
Home.$inject = ['$scope','mySharedService'];
Edit.$inject = ['$scope','mySharedService'];
Delete.$inject = ['$scope','mySharedService'];