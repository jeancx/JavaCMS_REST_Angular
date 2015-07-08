var exemplo2Ctrl = function ($scope, $rootScope, $location,backendService) {

    $rootScope.activetab = $location.path();
    
    $rootScope.titulo = "Inserir novo usuário";
    
    $scope.modelo = {
        nome: '',
        login: ''
    };
    
    $scope.salvarModelo = function(){
        $scope.msg = null;
        backendService.insert('usuario',$scope.modelo).then(
                function(retorno){
                    $scope.msg = "Registro inserido com sucesso";
                },
                function(erro){
                    $scope.msg = "Erro ao inserir registro. Código de erro"+erro.status;
                }
        );
    };
      
};

angular.module('app').controller('exemplo2Ctrl', exemplo2Ctrl);
