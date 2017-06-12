var app = angular.module('myApp', ['ngRoute']);
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
    }).when('/nota/:id', {
        templateUrl: 'nota.html',
        controller: 'detalleNotaCtrl'
    })
    .when('/contact', {
        templateUrl: 'contact.html',
        controller: 'contactCtrl'
    }).otherwise({
        template: '<h3>#404 No encontrado</h3>'
    });
});