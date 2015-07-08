var exemplo1Ctrl = function ($scope, $rootScope, $location, backendService) {
    $rootScope.activetab = $location.path();
    
    $rootScope.titulo = "Listagem de Usuários";
    $scope.modelo = false;
    
    $scope.listar = function(){
        backendService.list("usuario").then(function(usuarios){
           $scope.usuarios = usuarios; 
        });
    }
    
    $scope.remover = function(id){
        backendService.remove("usuario",id).then(function(){
            $scope.listar();
        });
    };
    
    $scope.editar = function(item){
        //converte em texto e depois retorna para objeto json para clonar o objeto
        $scope.modelo = JSON.parse(JSON.stringify(item));
    };
    
    $scope.salvarModelo = function(){
        backendService.update('usuario',$scope.modelo).then(function(){
            $scope.modelo = false;
            $scope.listar();
        });
    };
    
    $scope.cancelarModelo = function(){
        $scope.modelo = false;
    };
    
    
    $scope.listar();
    $scope.selecionado = null;
    
};

angular.module('app').controller('exemplo1Ctrl', exemplo1Ctrl);
