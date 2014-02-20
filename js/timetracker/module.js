/** TIME TRACKER MODULE **/

var timetracker = angular.module('timetracker',[]).
  config(['$routeProvider', function ($routeProvider){
    $routeProvider.
      when('/home', {templateUrl: base_url + '/timetracker/home',   controller: Home}).
      when('/edit', {templateUrl: base_url + '/timetracker/edit',   controller: Edit}).
      when('/delete', {templateUrl: base_url + '/timetracker/delete',   controller: Delete}).
      otherwise({redirectTo: '/home'});
  }]);

timetracker.factory('mySharedService', function ($rootScope, $http) {
  var sharedService = {};
  
  sharedService.message = '';
  
  sharedService.prepForBroadcast = function (msg) {
    this.message = msg;
  };
  
  sharedService.broadCastItem = function () {
    $rootScope.$broadcast('handleBroadcast');
  };
  
  return sharedService;
});