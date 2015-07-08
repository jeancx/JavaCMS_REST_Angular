var homeCtrl = function ($scope, $rootScope, $location, backendService) {
    $rootScope.titulo = "Aplicação básica com angular";
};

angular.module('app').controller('homeCtrl', homeCtrl);
