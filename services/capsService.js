app.service('googleService', ['$http', '$q', function($http, $q) {
    var deferred = $q.defer();
    this.googleApiClientReady = function() {
        gapi.client.setApiKey('AIzaSyAQw5qWw_VAJ_q11AW2z8dJGfJDKZhN_H0');
        gapi.client.load('youtube', 'v3', function() {
            var request = gapi.client.youtube.playlistItems.list({
                 part: 'snippet',
                playlistId: 'PL1QgWGigD4WXknQh8EpCuu6K5rdSN4oQ3',
                maxResults: 6
            });
            request.execute(function(response) {
                deferred.resolve(response.result);
                console.log(response.result);
            });

        });
        console.log(deferred.promise);
        return deferred.promise;
    };
    sessionStorage.setItem( "accesstoken",'gapi.client.getToken().access_token');
    
/*
    var persistedval = sessionStorage.getItem("accesstoken");
                    if (persistedval) {
                        gapi.client.setToken({access_token :persistedval});
                        console.log(gapi.client.getToken().access_token);
                        oauth2Provider.signedIn = true;
                    }
*/

}]);