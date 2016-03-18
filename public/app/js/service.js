'use strict';

// DashboardController
appService
	.service('userService', function($http, $cookieStore, $location) {
		var vm = this;
		vm.login = function(username, password, remember) {
			return $http.get('http://api.lempserver.com/user/login', { params: {username: username, password: password, remember: remember} })
		}

		vm.check = function() {
			var token = $cookieStore.get('token');
			if (typeof token == 'undefined' && $location.path() != '/login' ) {
				$location.path('/login');
				console.log('Will be redirect');
			} else {
				console.log($location.path());
				console.log('Will not redirect');
			}
		}
		return vm;
	})

	.service('operatorService', function($http) {
		var vm = this;
		vm.show = function(currentPage, orderBy, searchKey) {
			return $http.get('http://angular.lempserver.com/api/operator', {
				params: {
					page: currentPage,
					orderBy: orderBy,
					searchKey: searchKey,
				}
			});
		}
		vm.create = function(operator) {
			return $http.get('http://angular.lempserver.com/api/operator/create', {
				params: operator
			});
		}
		vm.update = function(operator) {
			return $http.put('http://angular.lempserver.com/api/operator/'+operator.id, operator);
		}
		vm.delete = function(deleteSelected) {
			return $http.delete('http://angular.lempserver.com/api/operator/'+deleteSelected);
		}
		vm.get = function(operatorId) {
			return $http.get('http://angular.lempserver.com/api/operator/'+operatorId);
		}

		return vm;
	})