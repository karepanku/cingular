// Declare app level module.
angular.module('demo2', []).
  config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/view1', {templateUrl: base_url + 'demo2/view1', controller: MyCtrl1});
    $routeProvider.when('/view2', {templateUrl: base_url + 'demo2/view2', controller: MyCtrl2});
    $routeProvider.otherwise({redirectTo: '/view1'});
  }]);
  
// The controller function
function MyCtrl1($scope, $http) {
  $scope.basepth = base_url;
  $scope.template = 'View 1';
  
  // Declare the entries
  $scope.entries = {}
  
  $http({
    headers: {'Content-Type': 'application/x-www-form-urlencoded'},
    url: base_url + '/demo2/select_entries',
    method: "POST",
    data: $.param({
      "auth" : 1,
      "state" : 'West Bengal'
    }),
  })
  .success(function(data) {
    $scope.entries = data;
  });
  
}

// The controller function
function MyCtrl2($scope, $http) {
  $scope.template = 'View 2';
  
  // Declare the entries
  $scope.entries = {}
  
  $http({
    headers: {'Content-Type': 'application/x-www-form-urlencoded'},
    url: base_url + '/demo2/select_entries',
    method: "POST",
    data: $.param({
      "auth" : 1,
      "state" : 'Maharashtra'
    }),
  })
  .success(function(data) {
    console.log('Success');
    $scope.entries = data;
  });
  
}