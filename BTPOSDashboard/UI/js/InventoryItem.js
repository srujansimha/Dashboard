// JavaScript source code
// JavaScript source code
var app = angular.module('myApp', ['ngStorage']);
var ctrl = app.controller('Mycntrlr', function ($scope, $http, $localStorage) {
    $scope.uname = $localStorage.uname;
    $http.get('http://localhost:1476/api/Inventory/GetInventory').then(function (response, req) {
        $scope.Item = response.data;
        $scope.getselectval();

    });
      $scope.getselectval = function (seltype) {
        var grpid = (seltype) ? seltype.Id : -1;
    //to save new inventory item
        $http.get('http://localhost:1476/api/Inventory/getsubcategory?subcatid=' + grpid).then(function (res, data) {
            $scope.Item = res.data;
        });
      }

    $scope.save = function (Item) {

        var Item = {
            Id: Item.Id,
            ItemName: Item.ItemName,
            Code: Item.Code,
            Description: Item.Description,
            Category: Item.Category,
            SubCategory: Item.SubCategory,
            ReOrderPoint: Item.ReOrderPoint
        }

        var req = {
            method: 'POST',
            url: 'http://localhost:1476/api/InventoryItem/SaveInventoryItem',
            data: Item
        }
        $http(req).then(function (res) {
            alert('saved successfully.');
            $localStorage.uname=res.data[0].name
        });



        $scope.Items1 = null;
    };

    $scope.setItems1 = function (usr) {
        $scope.Items1 = usr;
    };

    $scope.clearItems1 = function () {
        $scope.Items1 = null;
    }
});