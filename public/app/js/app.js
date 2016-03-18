'use strict';

var app = angular.module('app', [
	'appController',
	'appService',
	'ngResource',
	'ui.router',
	'ngCookies',
	'satellizer',
	'ui.bootstrap',
	'ngMock',
]);

// Register main controller
var appController = angular.module('appController', []);

// Register main service
var appService = angular.module('appService', []);

app
	.config(['$stateProvider', '$urlRouterProvider', '$authProvider', function($stateProvider, $urlRouterProvider, $authProvider) {
		$authProvider.loginUrl = 'http://angular.lempserver.com/api/user/auth';
	    $urlRouterProvider.otherwise('/');
	    $stateProvider
	        .state('backend', {
	            abstract: true,
	            views: {
	              '@' : {
	                templateUrl: 'templates/backend.html',
	                controller: 'BackendController'
	              },
	              'test@backend' : {
	              	template: 'hello test'
	              },
	            }
	        })
	        .state('dashboard', {
				parent: 'backend',
				url: '/',
				templateUrl: 'templates/dashboard.html',
				controller: 'DashboardController'
			})
			.state('operator.create', {
				parent: 'backend',
				url: '/operator/create',
				templateUrl: 'templates/operator.create.html',
				controller: 'CreateOperatorController',
			})
			.state('operator.view', {
				parent: 'backend',
				url: '/operator/view/{operatorId}',
				templateUrl: 'templates/operator.view.html',
				controller: 'ViewOperatorController',
			})
			.state('operator.update', {
				parent: 'backend',
				url: '/operator/update/{operatorId}',
				templateUrl: 'templates/operator.update.html',
				controller: 'UpdateOperatorController',
			})
	        .state('operator', {
				parent: 'backend',
				url: '/operator',
				templateUrl: 'templates/operator.html',
				controller: 'OperatorController',
	        })

			.state('login', {
				url: '/login',
				templateUrl: 'templates/login.html',
				controller: 'LoginController'
			})
			.state('logout', {
				url: '/logout',
				templateUrl: 'templates/login.html',
				controller: 'LogoutController'
			})

	}])

app
	.run(function($rootScope, $location, $http, $auth, $state) {
		console.log('Bạn đã thay đổi routes, kiểm tra đã đăng nhập: '+$auth.isAuthenticated());
		$rootScope.$on('$stateChangeStart', function () {
			console.log('Bạn đã thay đổi routes, kiểm tra đã đăng nhập: '+$auth.isAuthenticated());
		    if ($location.path() != '/login' && !$auth.isAuthenticated()) {
		    	$location.path('/login');
		    }
		});
	});

