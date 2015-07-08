var app = angular.module('app',['ngRoute','LocalStorageModule']);

app.config(function ($routeProvider){
    $routeProvider
        .when('/exemplo1',{controller:exemplo1Ctrl, templateUrl: 'templates/exemplo1.html'})
        .when('/exemplo2',{controller:exemplo2Ctrl, templateUrl: 'templates/exemplo2.html'})
        .when('/',{controller:homeCtrl, templateUrl: 'templates/inicial.html'})
        .otherwise({redirectTo:'/'});
});
    
