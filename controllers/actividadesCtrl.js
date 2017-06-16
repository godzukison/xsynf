app.controller('actividadesCtrl', function($scope, $http) {
    $scope.title = "Listado de actividades";
    $scope.priceSlider=150;

       moment.locale('es') ;
       $scope.listar = function() {
          var actividades = {};
          $http({
              method: 'GET',
              url: 'api/listActividades.php',
          }).then(successCallback, errorCallback);

          function successCallback(response) {
              $scope.actividades = response.data;
              for (var key in response.data) {
                  $scope.actividades[key].datestarth = moment(response.data[key].timestart).fromNow();
              }
              $scope.nextname =  $scope.actividades[0].name;
              $scope.nextplace =  $scope.actividades[0].place;
              $scope.nextdescr =  $scope.actividades[0].descr;
              $scope.nextdateh =  $scope.actividades[0].datestarth;
              $scope.nextimgurl =  $scope.actividades[0].imgurl;
              $scope.nextfechah =  $scope.actividades[0].fechah;
              $scope.nextdatestart =  $scope.actividades[0].datestart;
              console.log( $scope.actividades );
          }

          function errorCallback(error) {
              console.log(error);
          }
      }
        $scope.listar();


    $scope.spotlight = function(id) {
       for (var key in $scope.actividades) {
              if ($scope.actividades[key].id == id) {
                $scope.nextname =  $scope.actividades[key].name;
                $scope.nextplace =  $scope.actividades[key].place;
                $scope.nextdescr =  $scope.actividades[key].descr;
                $scope.nextdateh =  $scope.actividades[key].datestarth;
                $scope.nextimgurl =  $scope.actividades[key].imgurl;
                 $scope.nextfechah =  $scope.actividades[key].fechah;
                    $scope.datestart =  $scope.actividades[key].datestart;

              }
         }
     window.scrollTo(0, 0);

    };
 

 
 	
});