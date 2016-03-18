'use strict';

// DashboardController
appController
	.controller('MainController', ['$scope', '$rootScope', function($scope, $rootScope){
	    $scope.$on('$viewContentLoaded', function() {
	        App.initComponents(); // init core components
	    });
	}])
	.controller('HeaderController', ['$scope', function($scope) {
	    $scope.$on('$includeContentLoaded', function() {
	        Layout.initHeader();
	    });
	}])
	.controller('FooterController', ['$scope', function($scope) {
	    $scope.$on('$includeContentLoaded', function() {
	        Layout.initHeader();
	    });
	}])
	.controller('SidebarController', ['$scope', function($scope) {
	    $scope.$on('$includeContentLoaded', function() {
	        Layout.initSidebar();
	    });
	}])
	.controller('DashboardController', ['$scope', '$rootScope', function($scope, $rootScope){
		$rootScope.title = 'Dashboard';
		$rootScope.classBody = 'page-header-fixed page-sidebar-closed-hide-logo';
	}])
	.controller('BackendController', ['$scope', '$rootScope', function($scope, $rootScope){
		$rootScope.title = 'This is Backend Controller';
		$rootScope.classBody = 'page-header-fixed page-sidebar-closed-hide-logo';
	}])
	.controller('OperatorController', ['$scope', '$rootScope', '$http', 'operatorService', '$location', function($scope, $rootScope, $http, operatorService, $location){
		$rootScope.title = 'List Operator';
		$rootScope.classBody = 'page-header-fixed page-sidebar-closed-hide-logo';

		$scope.itemsPerPage = 10;
		$scope.maxSize = 5;
		$scope.currentPage = 1;
		$scope.orderBy = 'id';
		$scope.searchKey = '';

		$scope.setPage = function (pageNo) {
			$scope.currentPage = pageNo;
		};

		$scope.delete = function(operatorId) {
			$('#confirm-delete').modal('show');
			$scope.deleteSelected = operatorId;
		}

		$scope.confirmedDelete = function(deleteSelected) {
			operatorService.delete(deleteSelected)
				.success(function(data) {
					$('#confirm-delete').modal('hide');
					if (data.status) {
						toastr.success('Delete operator successed!');
						$scope.update();
					} else {
						toastr.error('Have error whilte deleting operator!');
					}
				});
		}

		$scope.update = function() {
			operatorService.show($scope.currentPage, $scope.orderBy, $scope.searchKey)
				.success(function(data) {
					$scope.operators = data.data;
					$scope.totalItems = data.total;
					$scope.currentPage = data.current_page;
				});
		};

		operatorService.show($scope.currentPage, $scope.orderBy, $scope.searchKey)
			.success(function(data) {
				$scope.operators = data.data;
				$scope.totalItems = data.total;
				$scope.currentPage = data.current_page;
			});


	}])
	.controller('CreateOperatorController', ['$scope', '$rootScope', '$location', 'operatorService', function($scope, $rootScope, $location, operatorService){
		$rootScope.title = 'Create Operator';
		$rootScope.classBody = 'page-header-fixed page-sidebar-closed-hide-logo';

		$scope.create =  function() {
			var operator = {
				name: $scope.name,
				address: $scope.address,
				phone: $scope.phone,
			};
			operatorService.create(operator)
				.success(function(data) {
					if (data.status) {
						$location.path('/operator/view/'+data.operator.id);
						toastr.success('Create new operator success!');
					} else {
						toastr.error('Have error white creating operator!');
					}
				});
		}
	}])
	.controller('ViewOperatorController', ['$scope', '$rootScope', '$location', 'operatorService', '$stateParams', function($scope, $rootScope, $location, operatorService, $stateParams){
		$rootScope.title = 'Detail Operator';
		$rootScope.classBody = 'page-header-fixed page-sidebar-closed-hide-logo';

		operatorService.get($stateParams.operatorId)
			.success(function(data) {
				$scope.operator = data;
				$rootScope.title = 'Detail Operator #'+$scope.operator.id;;
			});

	}])
	.controller('UpdateOperatorController', ['$scope', '$rootScope', '$stateParams', 'operatorService', '$location', function($scope, $rootScope, $stateParams, operatorService, $location){
		$rootScope.title = 'Update Operator';
		$rootScope.classBody = 'page-header-fixed page-sidebar-closed-hide-logo';

		operatorService.get($stateParams.operatorId).success(function(data) {
			$scope.operator = data;
		});

		$scope.update =  function() {
			var operator = {
				id : $scope.operator.id,
				name : $scope.operator.name,
				address : $scope.operator.address,
				phone : $scope.operator.phone
			};

			operatorService.update(operator).success(function(data) {
				if (data.status) {
					toastr.success('Update operator successed!');
					$location.path('/operator');
				} else {
					toastr.error('Have error while updating operator!');
				}
			});
		}

	}])
	.controller('LoginController', LoginController)
	.controller('TestCtrl', function TestCtrl() {
		return 'hello';
	})

	.controller('LogoutController', function($scope, $rootScope, userService, $cookieStore, $location){
		$cookieStore.remove('token');
		$location.path('/login');
	});

LoginController.$inject = ['$scope', '$auth', '$rootScope', '$location'];
function LoginController($scope, $auth, $rootScope, $location) {
	$rootScope.title = 'Login';
	$rootScope.classBody = 'login';

    $scope.login = function() {
        var credentials = {
            email: $scope.email,
            password: $scope.password
        }
        $auth.login(credentials).then(
        	function() {
                $location.path('/');
                toastr.success('Login success!');
        	},
        	function() {
        		toastr.warning('Email or password not correct!');
        	}
        );
    }
};

function TestCtrl() {
	return 'Hello';
}