  app.controller('detalleNotaCtrl', ['$sce','$scope', '$http','$routeParams', function($sce,$scope, $http, $routeParams) {

      $scope.getNota = function() {
          $scope.editnote = {};
          $http({
              method: 'GET',
              url: 'api/getNota.php',
              params: {
                  id: $routeParams.id
              }
          }).then(successCallback, errorCallback);
          function successCallback(response) {
              console.log(response.data);
              $scope.title = response.data[0].header;
              $scope.subtitle = response.data[0].subheader;
               $scope.imgurl = response.data[0].url;
               
                 $scope.bodyhtml = $sce.trustAsHtml(response.data[0].body);
                $scope.author = response.data[0].author;
                 $scope.created = response.data[0].created;
                     $scope.createdh = moment(response.data[0].created).fromNow() ;

          }
          function errorCallback(error) {
              alert(response.data);
          }
      }
      $scope.getNota();

 }]); 