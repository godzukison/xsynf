var app = angular.module('myApp', ['ngRoute' ]);   
app.filter('youtubeEmbedUrl', function ($sce) {
    return function(videoId) {
      return $sce.trustAsResourceUrl('http://www.youtube.com/embed/' + videoId+'?autoplay=0&showinfo=0&controls=0');
    };
  });

app.config(['$locationProvider', function($locationProvider) {
    $locationProvider.hashPrefix('');
}]);
app.config(function($routeProvider) {
    $routeProvider.when('/', {
        templateUrl: 'home.html',
        controller: 'homeCtrl'
    })
    .when('/home', {
        templateUrl: 'home.html',
        controller: 'homeCtrl'
    })
     .when('/actividades', {
        templateUrl: 'actividades.html',
        controller: 'actividadesCtrl'
    }).when('/actividad/:id', {
        templateUrl: 'act.html',
        controller: 'detalleActividadCtrl'
    })
    .when('/capitulos', {
        templateUrl: 'capitulos.html',
        controller: 'capitulosCtrl'
    })
    .when('/cap/;id', {
        templateUrl: 'cap.html',
        controller: 'detalleCapituloCtrl'
    })
    .when('/notas', {
        templateUrl: 'notas.html',
        controller: 'notasCtrl'
    }).when('/notas/:id', {
        templateUrl: 'nota.html',
        controller: 'detalleNotaCtrl'
    })
    .when('/contact', {
        templateUrl: 'contact.html',
        controller: 'contactCtrl'
    }).otherwise({
        templateUrl: 'notfound.html'
    });
});