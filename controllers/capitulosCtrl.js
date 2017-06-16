function init() {
    window.initGapi(); // Calls the init function defined on the window
}
  app.controller('capitulosCtrl', function($scope, $http, $window, $sce, googleService) {
      $scope.title = 'Historial de capitulos';
       $window.initGapi = function() {
       
        $scope.listarVideos();
         $scope.$apply($scope.videos);
        };
 
      $scope.listarVideos = function() {
          googleService.googleApiClientReady().then(function (data) {
          var videos = {} ;
          $scope.videos = data.items;
              for (var key in data.items) {
                  $scope.videos[key].titulo = data.items[key].snippet.title;
                  $scope.videos[key].embed =  data.items[key].snippet.resourceId.videoId;
                   $scope.videos[key].descr = data.items[key].snippet.description;
              }

            $scope.firsttitulo = data.items[0].snippet.title;
            $scope.firstembed =  data.items[0].snippet.resourceId.videoId;
            $scope.firstdescr = data.items[0].snippet.description;
  
              console.log($scope.firsttitulo);
            }, function (error) {
                console.log('Failed: ' + error)
            });
      };
      $scope.listarVideos();
  });