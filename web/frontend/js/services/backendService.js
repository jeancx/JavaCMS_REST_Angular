var backendService = function (localStorageService, $http,$q) {
    
    var backendBaseUri = 'http://localhost:8080/angular/api/';

    function unpackPromiseAndHandleErrorCodes(promise) {
        return promise.then(function (response) {
            return response.data;
        }, function (response) {
            var errorCode = response.status;
            return $q.reject(errorCode);
        });
    };


    function get(table, id) {
        return unpackPromiseAndHandleErrorCodes($http({
            url: backendBaseUri + table + "/"+id,
            method: 'GET'
        }));
    };

    function list(table) {
        return unpackPromiseAndHandleErrorCodes($http({
            url: backendBaseUri + table,
            method: 'GET'
        }));
    };

    function insert(table, newData) {
       return $http({
            method: 'POST',
            url: backendBaseUri+table,
            data: newData
       }); 
    };

    function remove(table, id) {
       return $http({
            method: 'DELETE',
            url: backendBaseUri+table+"/"+id
       });        
    };

    function update(table, data) {
       return $http({
            method: 'PUT',
            url: backendBaseUri+table+"/"+data.id,
            data: data
       }); 
    }
    ;

    return {
        get: get,
        list: list,
        update: update,
        insert: insert,
        remove: remove
    };
};

angular.module('app').service('backendService', ['localStorageService', '$http','$q', backendService]);    