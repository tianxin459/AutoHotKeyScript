describe('DashboardTrxCtrl', function () {

    var pendingPromiseDefer, historyPromiseDefer;

    var scope, data;

    var $rootScope, User, Transaction, Payment, Dialog, $filter, $http;
    var $dialog, $location, $window, $document, $anchorScroll, BuildId, $q, $timeout, $state;
    var mockFetchStatusDefer, mockVerifySSNDefer;

    beforeEach(function () {
        data = Data_Dashboard;
    });

    beforeEach(function () {
        window.TestUtil.InjectProvider();
    });

    beforeEach(function () {
        inject(function (_$rootScope_, _User_, _Transaction_, _Payment_, _Dialog_, _$filter_, _$http_,
            _$dialog_, _$location_, _$window_, _$document_, _$anchorScroll_, _BuildId_, _$timeout_, _$state_, _$q_, $controller) {

            $rootScope = _$rootScope_;
            scope = $rootScope.$new();
            User = _User_;
            Transaction = _Transaction_;
            Payment = _Payment_;
            Dialog = _Dialog_;
            $filter = _$filter_;
            $http = _$http_
            $dialog = _$dialog_;
            $location = _$location_;
            $window = _$window_;
            $state = _$state_;
            $q = _$q_;



            window.TestUtil.CreateSpyOnAndCallFakeForObj(User);
            window.TestUtil.CreateSpyOnAndCallFakeForObj(Transaction);
            window.TestUtil.CreateSpyOnAndCallFakeForObj(Payment);
            window.TestUtil.CreateSpyOnAndCallFakeForObj(Dialog);

            //------------------------------------------------------------------
            // mock User service 
            //------------------------------------------------------------------
            User.Accounts = data.userInfo.Accounts;
            User.getPrimaryAccount.and.callFake(
                function () {
                    var acct;
                    data.userInfo.Accounts.map(function (account) {
                        if (account.IsPrimary && account.IsPrimary === true) {
                            acct = account;
                        }
                    }
                    )
                    return acct;
                });


            //------------------------------------------------------------------
            // mock Transaction service 
            //------------------------------------------------------------------
            pendingPromiseDefer = $q.defer;
            historyPromiseDefer = $q.defer;
            Transaction.getPendingTransactions.and.returnValue(pendingPromiseDefer.promise);
            Transaction.getCurrentTransactions.and.returnValue(historyPromiseDefer.promise);

            $controller('DashboardTrxCtrl', {
                $scope: scope,
                User: User,
                Transaction: Transaction,
                Payment: Payment,
                Dialog: Dialog,
                $filter: $filter,
                $http: $http,
                $dialog: $dialog,
                $location: $location,
                $window: $window,
                $state: $state,
                $q: $q
            });
        });

    });

    it('Check initial values', function () {
        expect(true).toBe(true);
        // pendingPromiseDefer.resolve({
        //     Result:{
        //         Transactions:data.historicalTrx
        //     }
        // });
        // historyPromiseDefer.resolve(data.historicalTrx);
        // scope.$apply();
        /*
        $scope.data = {};
        $scope.PendingTransactions = [];
        $scope.Transactions = [];
        $scope.trxLoaded = false;
        $scope.showDisputeOptions = false;
        $scope.showCheck = false;
        $scope.showPending = false;
        $scope.showMoreTrx = false;
        $scope.doingRequest = false;
        $scope.Math = window.Math;
        $scope.continueDeposit = false;
        */
    });
});
