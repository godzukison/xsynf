   app.controller('notasCtrl', ['$scope', '$http', '$location', '$rootScope', function($scope, $http, $location, $rootScope) {
     $scope.title = 'Noticias';
     moment.locale('es') ;
       $scope.listar = function() {
          var notas = {};
          $http({
              method: 'GET',
              url: 'api/listNotes.php',
          }).then(successCallback, errorCallback);

          function successCallback(response) {
              $scope.notas = response.data;
              for (var key in response.data) {
                 
                  $scope.notas[key].createdh=moment(response.data[key].created).fromNow();
                  if( response.data[key].featured == true){
                     $scope.ndheader= $scope.notas[key].header;//nota destacada
                       $scope.ndsubheader= $scope.notas[key].subheader;//nota destacada
                      $scope.ndauthor= $scope.notas[key].author;
                      $scope.ndurl= $scope.notas[key].url;
                      $scope.ndid= $scope.notas[key].id;
                      $scope.ndcreated= $scope.notas[key].created2;
                      $scope.ndcreatedh=   moment($scope.notas[key].created).fromNow();
                  }
              }

              console.log($scope.notas);
  
          }

          function errorCallback(error) {
              alert(response.data);
          }
      }
        $scope.listar();

 }]); 