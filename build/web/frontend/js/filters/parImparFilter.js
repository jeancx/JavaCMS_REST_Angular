var parImparFilter = function(){
    return function(valor) {
      if (valor % 2 === 0)
          return "par";
      return "impar";
    };
};
angular.module('app').filter('parImparFilter',parImparFilter);