// JavaScript source code
var myapp1 = angular.module('myApp', [])
var mycrtl1 = myapp1.controller('Mycntrlr', function ($scope, $http) {     

    $http.get('http://localhost:1476/api/GetCompanyGroups').then(function (response, data) {
        $scope.Companies = response.data;
        $scope.getselectval();
    });

    $scope.getselectval = function (seltype) {
        var cmpId = (seltype) ? seltype.Id : -1;

        $http.get('http://localhost:1476/api/Roles/getroles?companyId=' + cmpId).then(function (res, data) {
            $scope.roles = res.data;
        });

    }

    $scope.saveNewRole = function (selectedRole) {

        if (selectedRole == null) {
            alert('Please enter role name.');
            return;
        }

        if (selectedRole.Name == null) {
            alert('Please enter role name.');
            return;
        }
        if (selectedRole.company ==null || selectedRole.company.Id == null) {
            alert('Please select a company');
            return;
        }

        var selRole = {
            Id: -1,
            Name: selectedRole.Name,
            Description: selectedRole.Description,
            Active: 1,//selectedRole.Active,
            companyId: selectedRole.company.Id
        };

        var req = {
            method: 'POST',
            url: 'http://localhost:1476/api/roles/saveroles',
            data: selRole
        }
        $http(req).then(function (response) {
            alert('saved successfully.');
        });

        $scope.currRole = null;

    };

    $scope.saveRoles = function (selectedRole) {
       
        var selRole = {

            Id:selectedRole.Id,
            Name: selectedRole.Name,
            Description: selectedRole.Description,
            Active: selectedRole.Active,
            companyId:selectedRole.companyId

        };
      
        var req = {
            method: 'POST',
            url: 'http://localhost:1476/api/roles/saveroles',
            data: selRole
        }
        $http(req).then(function (response) {
            alert('saved successfully.');
        });

        $scope.currRole = null;

    };

    $scope.setCurrRole = function (grp) {
        $scope.currRole = grp;
    };

    $scope.clearCurrRole = function () {
        $scope.currRole = null;
    };
});