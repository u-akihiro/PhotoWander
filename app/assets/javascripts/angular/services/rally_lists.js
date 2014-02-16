// var rallyLists = angular.module('rallyLists', []);

// model
// rallyLists.factory('GetRallyLists', ['$resource', function ($resource) {
  // var rally_lists = $resource('/api/rally-lists'); //中身はjsonデータ
  // alert(rally_lists);
  // return rally_lists;
// }]);

// controller
// rallyLists.controller('PhoneListCtrl', ['$scope', 'GetRallyLists', function ($scope, GetRallyLists) {
  // $scope.phones = [
    // $scope.greeting = 'Hola!';
    // $scope.events = GetRallyLists.query();
  // $scope.tests = aModel.get();
  // '&callback=JSON_CALLBACK';
//   $http.get('/api/rally-lists').
//         success(function(data){
//             // $scope.events = data.results;
//             console.log
//         }).
//         error(function(data, status){
//             console.log(status)
//         });
// }]);


// rallyLists.controller('PhoneListCtrl', ['$scope', '$http', function ($scope, $http) {
function PhoneListCtrl($scope, $http){
    $http.get('api/rally-lists').success(function(data){
        $scope.phones = data;

    });
}

// view
// var myApp = angular.module('myApp',[]);
// myApp.controller('GreetingCtrl', ['$scope', function($scope) {
//     $scope.greeting = 'Hola!';
// }]);

// function GreetingCtrl($scope) {
//     $scope.greeting = 'Hola!';
// }
