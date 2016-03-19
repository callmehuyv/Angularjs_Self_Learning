'use strict';

appController
	.controller('MainController', MainController)
	.controller('HeaderController', HeaderController)
	.controller('FooterController', FooterController)
	.controller('SidebarController', SidebarController)
	.controller('DashboardController', DashboardController)
	.controller('BackendController', BackendController)
	.controller('OperatorController', OperatorController)
	.controller('CreateOperatorController', CreateOperatorController)
	.controller('ViewOperatorController', ViewOperatorController)
	.controller('UpdateOperatorController', UpdateOperatorController)
	.controller('LoginController', LoginController)
	.controller('LogoutController', LogoutController);

	MainController.$inject = ['$scope', '$rootScope'];
	function MainController($scope, $rootScope){
	    $scope.$on('$viewContentLoaded', function() {
	        App.initComponents();
	    });
	}

	HeaderController.$inject = ['$scope'];
	function HeaderController($scope){
	    $scope.$on('$includeContentLoaded', function() {
	        Layout.initHeader();
	    });
	}

	FooterController.$inject = ['$scope'];
	function FooterController($scope){
	    $scope.$on('$includeContentLoaded', function() {
	        Layout.initFooter();
	    });
	}

	SidebarController.$inject = ['$scope'];
	function SidebarController($scope){
	    $scope.$on('$includeContentLoaded', function() {
	        Layout.initSidebar();
	    });
	}

	DashboardController.$inject = ['$scope', '$rootScope'];
	function DashboardController($scope, $rootScope){
		$rootScope.title = 'Dashboard';
		$rootScope.classBody = 'page-header-fixed page-sidebar-closed-hide-logo';
	}

	BackendController.$inject = ['$scope', '$rootScope'];
	function BackendController($scope, $rootScope){
		$rootScope.title = 'This is Backend Controller';
		$rootScope.classBody = 'page-header-fixed page-sidebar-closed-hide-logo';
	}

	OperatorController.$inject = ['$scope', '$rootScope', '$http', 'operatorService', '$location'];
	function OperatorController($scope, $rootScope, $http, operatorService, $location){
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
	}
	
	CreateOperatorController.$inject = ['$scope', '$rootScope', '$location', 'operatorService'];
	function CreateOperatorController($scope, $rootScope, $location, operatorService){
		$rootScope.title = 'Create Operator';
		$rootScope.classBody = 'page-header-fixed page-sidebar-closed-hide-logo';

		$scope.create =  function() {
			var operator = {
				name : $scope.operator.name,
				address : $scope.operator.address,
				phone : $scope.operator.phone
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
	}

	ViewOperatorController.$inject = ['$scope', '$rootScope', '$location', 'operatorService', '$stateParams'];
	function ViewOperatorController($scope, $rootScope, $location, operatorService, $stateParams){
		$rootScope.title = 'Detail Operator';
		$rootScope.classBody = 'page-header-fixed page-sidebar-closed-hide-logo';

		operatorService.get($stateParams.operatorId)
			.success(function(data) {
				$scope.operator = data;
				$rootScope.title = 'Detail Operator #'+$scope.operator.id;;
			});

	}

	UpdateOperatorController.$inject = ['$scope', '$rootScope', '$stateParams', 'operatorService', '$location'];
	function UpdateOperatorController($scope, $rootScope, $stateParams, operatorService, $location){
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

	}

	LogoutController.$inject = ['$scope', '$rootScope', '$window', '$cookieStore', '$location'];
	function LogoutController($scope, $rootScope, $window, $cookieStore, $location){
		$window.localStorage.clear();
		$location.path('/login');
	}

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
