function PhoneListCtrl($scope, $http){
    $http.get('api/rally-lists').success(function(data){
        $scope.rallys = data;
    });
}
