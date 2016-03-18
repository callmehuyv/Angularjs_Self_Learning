it('should get login success',
  inject(['$auth', '$httpBackend', function($auth, $httpBackend){
    $httpBackend.expect('POST', 'https://api.mydomain.com/login')
      .respond(200, "[{ success : 'true', id : 123 }]");

    $auth.login('admin@admin.com', 'admin')
      .then(function(data) {
        expect(true).toBeTruthy();
    });

  $httpBackend.flush();
}]));