//copied from data.js
var Data_Dashboard = (function () {
    function newGuid () {
        var rtn = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
                var r = Math.random()*16|0, v = c == 'x' ? r : (r&0x3|0x8);
                return v.toString(16);
            });
        return rtn;
    }

    function getTimeByDiff (baseDate, dateDiff, hourDiff, minuteDiff, secondDiff) {
        var targetDate = moment();
        targetDate.add(dateDiff, 'd');
        targetDate.hour(hourDiff);
        targetDate.minute(minuteDiff);
        targetDate.second(secondDiff);
        return targetDate.valueOf();
    }


    var _userInfo = {
        userId: null,
        FirstName: "Professor",
        LastName: "Dog",
        MMFSelected: true,
        CardImageType: "Standard",
        //CardImageType: 'Customized',
        IsFunded: true,
        ShowPTS: false,
        Accounts: [{
            IsPrimary: true,
            Id: "Gb-Prepaid",
            AvailableBalance: 115.12,
            RestrictionPoints: 0,
            TotalPendingDeposits: 100.00,
            CardAccountStatus: 'Active',
            CardAccountStatusReason: 'Activated',
            LastReportLostStolenRecentlyOrdered: null,
            //CardAccountStatusReason: 'Closed',
            //CardAccountStatusReason: 'CustomerInitiatedSpendDown',
            CardType: 'Perso',
            Capabilities: null,
            Features: [
                {
                    "Identifier": "Logout",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Budget",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Budget.CanIAffordIt",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Locator",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Funding.Initial",
                    "IsAllowed": false,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Funding.DebitCard",
                    "IsAllowed": false,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Funding.MoneyPak",
                    "IsAllowed": false,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Support.ContactUs",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Account.ConsumerProfile",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "MobileInbox",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Transaction.History",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Statement.History",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Payment.P2PSend",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Payment.P2PClaim",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Payment.BillPay",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Vault",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Account.AlertSettings",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Account.ProfileUpdate",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Card.ReportLostStolen",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Card.ReportNotReceived",
                    "IsAllowed": false,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Card.Activate",
                    "IsAllowed": false,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Card.SetATMPIN",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Transaction.Dispute",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Funding.CheckDeposit",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Card.OrderCustom",
                    "IsAllowed": false,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Card.Initial",
                    "IsAllowed": false,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Card.OrderStandard",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Account.AddressUpdate",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Login.Web",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Login.Mobile",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Membership.Monthly",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Funding.SwipeDeposit",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Funding.DirectDeposit",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Spending.DebitCard",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Spending.ATMAccess",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Spending.CashAdvance",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Account.SecurityUpdate",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Spending.AsCreditCard",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Spending.International",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Membership.Initial",
                    "IsAllowed": false,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "WrittenCheck",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Card.AllowTypeChange",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Spending.Direct2Cash",
                    "IsAllowed": true,
                    "Limits": [{
                        "Identifier": "TransactionMax",
                        "Name": "TransactionMax",
                        "Value": 1000,
                        "Type": 1
                    }, {
                        "Identifier": "TransactionMin",
                        "Name": "TransactionMin",
                        "Value": 2,
                        "Type": 0
                    }, {
                        "Identifier": "PerRolling7Day",
                        "Name": "PerRolling7Day",
                        "Value": 1000,
                        "Type": 1
                    }],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Vault.Transfer",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Membership.Waiver",
                    "IsAllowed": false,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Transfer.LinkAccounts",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Transfer.Inbound",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Transfer.Outbound",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "WrittenCheck.PreAuthorize",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "WrittenCheck.Order",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }, {
                    "Identifier": "Transfer.BetaAccess",
                    "IsAllowed": true,
                    "Limits": [],
                    "Fees": [],
                    "AllowConditions": [{
                        "Code": 0,
                        "Description": ""
                    }]
                }
            ],
            //MC Product
            //ProductId: '7232'
            //Classic
            //ProductId: '5468'
            //Uber Product
            ProductId: '7236'
            //intuit
            //ProductId: '7239'
        }, {
            IsPrimary: false,
            Id: "Gb-Saving",
            AvailableBalance: 12,
            CardAccountStatus: 'Pending', // not sure if Card status
            CardAccountStatusReason: '0' // makes any sense for savings account
        }],
        Address: {
            Street: "999 NE Example Dr",
            Unit: "500",
            City: "Anywhere",
            State: "CA",
            Zip: "99999"
        },
        Phone: "6505268188",
        IsPhoneVerified: false,
        Email: "user@example.com",
        ClientToken: "aaa-bbb-ccc",
        Question: "What's the answer",
        TreatmentInfo: {}
    };
    var originalUserInfo = angular.copy(_userInfo);

    var _notifications = [
        {
            Id: 2,
            Body: "My day is fine.",
            IsRead: false,
            TimeStamp: "2013-07-20T00:00:00-07:00",
            Title: "Here is your second notification"
        }, {
            Id: 0,
            Body: "<html><body><div>Hi boss, how is your day?</div></body></html>",
            IsRead: true,
            TimeStamp: "2013-07-22T00:00:00-07:00",
            Title: "Here is your first notification"
        },

        {
            Id: 3,
            Body: "My day is ok.",
            IsRead: false,
            TimeStamp: "2013-07-20T00:00:00-07:00",
            Title: "Here is your third notification"
        },

        {
            Id: 4,
            Body: "My day is better.",
            IsRead: false,
            TimeStamp: "2013-07-20T00:00:00-07:00",
            Title: "Here is your fourth notification"
        },

        {
            Id: 5,
            Body: "My day is the best.",
            IsRead: false,
            TimeStamp: "2013-07-20T00:00:00-07:00",
            Title: "Here is your fifth notification"
        },

        {
            Id: 6,
            Body: "My day is the greatest day ever.",
            IsRead: false,
            TimeStamp: "2013-07-20T00:00:00-07:00",
            Title: "Here is your sixth notification"
        }
    ];

    var _pendingTrx = [
        {
            "Id": null,
            "Amount": 2009.50,
            "Time": "0001-01-01T00:00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Pending",
                "TransactionID": "",
                "TransactionDate": "2015-07-15 00:00:00",
                "PostDate": '2015-07-16 00:00:00',
                "IsCredit": false,
                "Description": "Credit",
                "Amount": 2009.50,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": "Pending",
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "INITIAL LOAD",
                "MerchantCity": null,
                "MerchantState": null,
                "MerchantCategory": null,
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": null,
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.00,
            "Time": "0001-01-01T00:00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Pending",
                "TransactionID": "",
                "TransactionDate": "2013-11-06T04:58:00+00:00",
                "PostDate": null,
                "IsCredit": false,
                "Description": "DEBIT (Pending)",
                "Amount": 1.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Amazon Payments",
                "MerchantCity": "866-749-7545",
                "MerchantState": "WA",
                "MerchantCategory": null,
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "98102    ",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.00,
            "Time": "0001-01-01T00:00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Pending",
                "TransactionID": "",
                "TransactionDate": "2013-11-05T22:11:00+00:00",
                "PostDate": null,
                "IsCredit": false,
                "Description": "DEBIT (Pending)",
                "Amount": 1.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Amazon Payments",
                "MerchantCity": "866-749-7545",
                "MerchantState": "WA",
                "MerchantCategory": null,
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "98102    ",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 220.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "ReferenceId": "18787",
            "Raw": {
                "AccountToken": null,
                "Type": "Pending",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": null,
                "IsCredit": true,
                "Description": "Mobile Deposit",
                "Amount": 220.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Mobile Deposit",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Check Deposit",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "CheckDeposit",
                "TransactionReferenceID": "18787",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 220.01,
            "Time": "2013-11-04T08:00:00+00:00",
            "ReferenceId": "33939",
            "Raw": {
                "AccountToken": null,
                "Type": "Pending",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": null,
                "IsCredit": true,
                "Description": "Mobile Deposit",
                "Amount": 220.01,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Mobile Deposit",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Check Deposit",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "CheckDeposit",
                "TransactionReferenceID": "18787",
                "TransactionStage": "Cancelable",
                "Cancelable": "true",
                "FundsAvailableDate": "2013-12-03T07:00:00+00:00"
            }
        }, {
            "Id": null,
            "Amount": 220.02,
            "Time": "2013-11-04T08:00:00+00:00",
            "ReferenceId": "187asdfasdf87",
            "Raw": {
                "AccountToken": null,
                "Type": "Pending",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": null,
                "IsCredit": true,
                "Description": "Mobile Deposit",
                "Amount": 220.02,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Mobile Deposit",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Check Deposit",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "CheckDeposit",
                "TransactionReferenceID": "18787",
                "TransactionStage": "Hold",
                "Cancelable": null,
                "FundsAvailableDate": "2013-11-23T07:00:00+00:00"
            }
        }, {
            "Id": null,
            "Amount": 210.02,
            "Time": "2013-11-04T08:00:00+00:00",
            "ReferenceId": "dddwqwetsgsdf",
            "Raw": {
                "AccountToken": null,
                "Type": "Pending",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": null,
                "IsCredit": true,
                "Description": "Mobile Deposit",
                "Amount": 210.02,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Mobile Deposit",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Check Deposit",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "CheckDeposit",
                "TransactionReferenceID": "18787",
                "TransactionStage": "Hold",
                "Cancelable": "true",
                "FundsAvailableDate": "2013-11-23T07:00:00+00:00"
            }
        }
    ];

    var _historicalTrx = [
        {
            "Id": null,
            "Amount": 30.00,
            "Time": "2013-11-08T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-07T08:00:00+00:00",
                "PostDate": "2013-11-08T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 30.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 10.00,
            "Time": "2013-11-07T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-07T08:00:00+00:00",
                "PostDate": "2013-11-07T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 10.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 10.95,
            "Time": "2013-11-07T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-06T08:00:00+00:00",
                "PostDate": "2013-11-07T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 10.95,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "EIG*EASYCGI",
                "MerchantCity": "866-5392854",
                "MerchantState": "MA",
                "MerchantCategory": null,
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "01803",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 60.00,
            "Time": "2013-11-07T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-07T08:00:00+00:00",
                "PostDate": "2013-11-07T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 60.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 60.00,
            "Time": "2013-11-07T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-07T08:00:00+00:00",
                "PostDate": "2013-11-07T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 60.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 100.00,
            "Time": "2013-11-07T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-06T08:00:00+00:00",
                "PostDate": "2013-11-07T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 100.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 200.00,
            "Time": "2013-11-07T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-06T08:00:00+00:00",
                "PostDate": "2013-11-07T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Paid to Kim Kardashian (Kardashian@gmail.com)",
                "Amount": 200.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Kim Kardashian (Kardashian@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Money Sent",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "23468",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.00,
            "Time": "2013-11-05T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-04T08:00:00+00:00",
                "PostDate": "2013-11-05T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Paid to Kanye West (5553339555)",
                "Amount": 1.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Kanye West (5553339555)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Money Sent",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "23287",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 30.00,
            "Time": "2013-11-05T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-04T08:00:00+00:00",
                "PostDate": "2013-11-05T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 30.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 30.00,
            "Time": "2013-11-05T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-04T08:00:00+00:00",
                "PostDate": "2013-11-05T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 30.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 33.00,
            "Time": "2013-11-05T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-04T08:00:00+00:00",
                "PostDate": "2013-11-05T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 33.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 44.00,
            "Time": "2013-11-05T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-04T08:00:00+00:00",
                "PostDate": "2013-11-05T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 44.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 397.00,
            "Time": "2013-11-05T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-04T08:00:00+00:00",
                "PostDate": "2013-11-05T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 397.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 0.80,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-02T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 0.80,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-02T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 1.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-01T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 1.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-01T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 1.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.32,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-01T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 1.32,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.32,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-01T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 1.32,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 5.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 5.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 10.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 10.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 10.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 10.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 20.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 20.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 20.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 20.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 20.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 20.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 50.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 50.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 50.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 50.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 50.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 50.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 50.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 50.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 50.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 50.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 50.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-04T08:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 50.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 50.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 50.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 50.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 50.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 50.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 50.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 50.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 50.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 50.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-04T08:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 50.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 50.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 50.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 50.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 50.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 70.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 70.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 70.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 70.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 70.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 70.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 75.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 75.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 100.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 100.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 100.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 100.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 200.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 200.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 200.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-04T08:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Credit",
                "Amount": 200.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "DD:E*TRADE-ACH TRNSFR",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Direct Deposit",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 200.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 200.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 200.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 200.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 200.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 200.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 200.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 200.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 200.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 200.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 200.20,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 200.20,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 201.32,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 201.32,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 201.32,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-03T07:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 201.32,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO ACCOUNT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 66.02,
            "Time": "2014-01-04T08:00:00+00:00",
            "ReferenceId": "187asdfajjsdfdeclined87",
            "Raw": {
                "AccountToken": null,
                "Type": "Declined",
                "TransactionID": "",
                "TransactionDate": "2014-01-03T07:00:00+00:00",
                "PostDate": null,
                "IsCredit": true,
                "Description": "Mobile Deposit",
                "Amount": 66.02,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Mobile Deposit",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Check Deposit",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "CheckDeposit",
                "TransactionReferenceID": "c1878997",
                "TransactionStage": "Canceled",
                "Cancelable": null,
                "FundsAvailableDate": "2013-11-23T07:00:00+00:00"
            }


        }, {
            "Id": null,
            "Amount": 260.00,
            "Time": "2013-11-04T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-04T08:00:00+00:00",
                "PostDate": "2013-11-04T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 260.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ACCOUNT TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-10-28T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-10-27T07:00:00+00:00",
                "PostDate": "2013-10-28T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Jennifer Lopez (5553339555)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Expired",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "21516",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 10.0000,
            "Time": "2013-10-28T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-10-27T07:00:00+00:00",
                "PostDate": "2013-10-28T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 10.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (5553339222)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Expired",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "21513",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0100,
            "Time": "2013-10-22T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-10-22T07:00:00+00:00",
                "PostDate": "2013-10-22T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0100,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (5553339555)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Expired",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "21163",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 2.5000,
            "Time": "2013-10-21T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": null,
                "TransactionDate": "2013-10-21T07:00:00+00:00",
                "PostDate": "2013-10-21T07:00:00+00:00",
                "IsCredit": false,
                "Description": "ATM Fee",
                "Amount": 2.5000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ATM CASH ADVANCE FEE",
                "MerchantCity": "-0886-",
                "MerchantState": null,
                "MerchantCategory": "ATM Cash Disbursement Fee",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 3.7500,
            "Time": "2013-10-21T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "303290808309727",
                "TransactionDate": "2013-10-17T07:00:00+00:00",
                "PostDate": "2013-10-21T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 3.7500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "SUBWAY        00229377",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Fast Food",
                "MerchantCategoryType": "5",
                "BillCycleID": null,
                "ZipCode": "97232",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 39.0000,
            "Time": "2013-10-21T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "463291090044009",
                "TransactionDate": "2013-10-18T07:00:00+00:00",
                "PostDate": "2013-10-21T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 39.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "76 10030484",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Gas/Fuel",
                "MerchantCategoryType": "6",
                "BillCycleID": null,
                "ZipCode": "97213",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 64.7900,
            "Time": "2013-10-21T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "463290830789937",
                "TransactionDate": "2013-10-18T07:00:00+00:00",
                "PostDate": "2013-10-21T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 64.7900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "SPARKFUN ELECTRONICS",
                "MerchantCity": "303-284-0979",
                "MerchantState": "CO ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "80301",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 83.0000,
            "Time": "2013-10-21T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "329102903002",
                "TransactionDate": "2013-10-17T07:00:00+00:00",
                "PostDate": "2013-10-21T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Debit-Cash (Metavante)",
                "Amount": 83.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "82020465000101",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Service Providers",
                "MerchantCategoryType": "14",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 4.0300,
            "Time": "2013-10-18T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "463290728098224",
                "TransactionDate": "2013-10-17T07:00:00+00:00",
                "PostDate": "2013-10-18T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 4.0300,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "SQ *ALIVIAR COFFEE",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "97212",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 5.4900,
            "Time": "2013-10-18T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "329018177034",
                "TransactionDate": "2013-10-17T07:00:00+00:00",
                "PostDate": "2013-10-18T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Debit-Purchase (Metavante)",
                "Amount": 5.4900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "RADIOSHACK COR",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-10-16T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-10-16T07:00:00+00:00",
                "PostDate": "2013-10-16T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Jennifer Lopez (5553339555)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "21516",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 10.0000,
            "Time": "2013-10-16T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "083287620312851",
                "TransactionDate": "2013-10-14T07:00:00+00:00",
                "PostDate": "2013-10-16T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 10.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "BAKERY BAR",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "97232",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 10.0000,
            "Time": "2013-10-16T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-10-16T07:00:00+00:00",
                "PostDate": "2013-10-16T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 10.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (5553339222)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "21513",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 5.6500,
            "Time": "2013-10-15T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "383287206370705",
                "TransactionDate": "2013-10-14T07:00:00+00:00",
                "PostDate": "2013-10-15T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 5.6500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "AMAZON MKTPLACE PMTS",
                "MerchantCity": "AMZN.COM/BILL",
                "MerchantState": "WA ",
                "MerchantCategory": "Purchase - Miscellaneous/Bill Pay (BP)",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "98108",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 21.2300,
            "Time": "2013-10-15T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "583287558231286",
                "TransactionDate": "2013-10-14T07:00:00+00:00",
                "PostDate": "2013-10-15T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 21.2300,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "AMAZON MKTPLACE PMTS",
                "MerchantCity": "AMZN.COM/BILL",
                "MerchantState": "WA ",
                "MerchantCategory": "Purchase - Miscellaneous/Bill Pay (BP)",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "98108",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 30.0000,
            "Time": "2013-10-15T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "283287581763345",
                "TransactionDate": "2013-10-14T07:00:00+00:00",
                "PostDate": "2013-10-15T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 30.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "KAISER MEDICAL 027",
                "MerchantCity": "CLACKAMAS",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Service Providers",
                "MerchantCategoryType": "14",
                "BillCycleID": null,
                "ZipCode": "97015",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 33.9500,
            "Time": "2013-10-15T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "303287573266169",
                "TransactionDate": "2013-10-15T07:00:00+00:00",
                "PostDate": "2013-10-15T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 33.9500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "AMAZON MKTPLACE PMTS",
                "MerchantCity": "AMZN.COM/BILL",
                "MerchantState": "WA ",
                "MerchantCategory": "Purchase - Miscellaneous/Bill Pay (BP)",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "98108",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 34.9500,
            "Time": "2013-10-15T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "583287019518867",
                "TransactionDate": "2013-10-14T07:00:00+00:00",
                "PostDate": "2013-10-15T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 34.9500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "AMAZON MKTPLACE PMTS",
                "MerchantCity": "AMZN.COM/BILL",
                "MerchantState": "WA ",
                "MerchantCategory": "Purchase - Miscellaneous/Bill Pay (BP)",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "98108",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 166.9600,
            "Time": "2013-10-15T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "383287699249538",
                "TransactionDate": "2013-10-15T07:00:00+00:00",
                "PostDate": "2013-10-15T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 166.9600,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "AMAZON MKTPLACE PMTS",
                "MerchantCity": "AMZN.COM/BILL",
                "MerchantState": "WA ",
                "MerchantCategory": "Purchase - Miscellaneous/Bill Pay (BP)",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "98108",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-10-14T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-10-11T07:00:00+00:00",
                "PostDate": "2013-10-14T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Received from Steven W. Streit",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Money Received",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "21159",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-10-14T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-10-11T07:00:00+00:00",
                "PostDate": "2013-10-14T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (5553339555)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "21164",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-10-14T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-10-11T07:00:00+00:00",
                "PostDate": "2013-10-14T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Ian Ian (5553339555)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "21162",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0100,
            "Time": "2013-10-14T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-10-11T07:00:00+00:00",
                "PostDate": "2013-10-14T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0100,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (5553339555)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "21163",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 22.0000,
            "Time": "2013-10-14T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "083284594304758",
                "TransactionDate": "2013-10-12T07:00:00+00:00",
                "PostDate": "2013-10-14T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 22.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "METRO CENTRAL SW DISPOSAL",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Miscellaneous/Bill Pay (BP)",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "97210",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 26.1900,
            "Time": "2013-10-14T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "083285640001955",
                "TransactionDate": "2013-10-12T07:00:00+00:00",
                "PostDate": "2013-10-14T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 26.1900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "PAYPAL *PWRSWTAIL",
                "MerchantCity": "402-935-7733",
                "MerchantState": "CA ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "95131",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 28.5000,
            "Time": "2013-10-14T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "003286054807391",
                "TransactionDate": "2013-10-12T07:00:00+00:00",
                "PostDate": "2013-10-14T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 28.5000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "LIFETOUCH NSS ONLINE PAY",
                "MerchantCity": "866-485-0306",
                "MerchantState": "MN ",
                "MerchantCategory": "Purchase - Service Providers",
                "MerchantCategoryType": "14",
                "BillCycleID": null,
                "ZipCode": "55344",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 47.2500,
            "Time": "2013-10-14T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "163285110727253",
                "TransactionDate": "2013-10-11T07:00:00+00:00",
                "PostDate": "2013-10-14T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 47.2500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "TABOR TAVERN",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "97215",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-10-11T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-10-11T07:00:00+00:00",
                "PostDate": "2013-10-11T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to April April (5553339555)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "21134",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 40.0000,
            "Time": "2013-10-11T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000006582",
                "TransactionDate": "2013-10-09T07:00:00+00:00",
                "PostDate": "2013-10-11T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Debit-Cash (Metavante)",
                "Amount": 40.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ONPOINT COMMUNITY CU",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Service Providers",
                "MerchantCategoryType": "14",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 61.5900,
            "Time": "2013-10-10T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "463282603060896",
                "TransactionDate": "2013-10-09T07:00:00+00:00",
                "PostDate": "2013-10-10T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 61.5900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "AMAZON MKTPLACE PMTS",
                "MerchantCity": "AMZN.COM/BILL",
                "MerchantState": "WA ",
                "MerchantCategory": "Purchase - Miscellaneous/Bill Pay (BP)",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "98108",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 5.9900,
            "Time": "2013-10-08T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "328000836628",
                "TransactionDate": "2013-10-07T07:00:00+00:00",
                "PostDate": "2013-10-08T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Debit-Purchase (Metavante)",
                "Amount": 5.9900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "WHOLE FOODS MARK",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Grocery Stores",
                "MerchantCategoryType": "7",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 48.9900,
            "Time": "2013-10-08T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "303279801922749",
                "TransactionDate": "2013-10-07T07:00:00+00:00",
                "PostDate": "2013-10-08T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 48.9900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "SPARKFUN ELECTRONICS",
                "MerchantCity": "303-284-0979",
                "MerchantState": "CO ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "80301",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 8.9500,
            "Time": "2013-10-07T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "083276822615099",
                "TransactionDate": "2013-10-03T07:00:00+00:00",
                "PostDate": "2013-10-07T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 8.9500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "FIRE ON THE MOUNTAIN B",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "97214",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 9.9900,
            "Time": "2013-10-07T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "327917594904",
                "TransactionDate": "2013-10-06T07:00:00+00:00",
                "PostDate": "2013-10-07T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Debit-Purchase (Metavante)",
                "Amount": 9.9900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "RADIOSHACK COR",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 15.7500,
            "Time": "2013-10-07T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "327921740341",
                "TransactionDate": "2013-10-06T07:00:00+00:00",
                "PostDate": "2013-10-07T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Debit-Purchase (Metavante)",
                "Amount": 15.7500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "FRED MEYER FRED MEYER",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Grocery Stores",
                "MerchantCategoryType": "7",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 700.0000,
            "Time": "2013-10-07T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-10-06T07:00:00+00:00",
                "PostDate": "2013-10-07T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 700.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Nicki Minaj(Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "20579",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 733.0000,
            "Time": "2013-10-07T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-10-06T07:00:00+00:00",
                "PostDate": "2013-10-07T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 733.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Received from Nicki Minaj",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Money Received",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "20636",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 12.0000,
            "Time": "2013-10-04T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "283276009717575",
                "TransactionDate": "2013-10-02T07:00:00+00:00",
                "PostDate": "2013-10-04T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 12.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "MORRISON HOTEL",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "97214",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 3.4500,
            "Time": "2013-10-03T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "383275663284310",
                "TransactionDate": "2013-10-02T07:00:00+00:00",
                "PostDate": "2013-10-03T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 3.4500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "STARBUCKS #00435 PORTLAND",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Fast Food",
                "MerchantCategoryType": "5",
                "BillCycleID": null,
                "ZipCode": "97213",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 220.0000,
            "Time": "2013-10-03T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-10-03T07:00:00+00:00",
                "PostDate": "2013-10-03T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Mobile Deposit",
                "Amount": 220.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Mobile Deposit",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Check Deposit",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "CheckDeposit",
                "TransactionReferenceID": "13199",
                "TransactionStage": "4"
            }
        }, {
            "Id": null,
            "Amount": 360.0000,
            "Time": "2013-10-03T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-10-03T07:00:00+00:00",
                "PostDate": "2013-10-03T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Mobile Deposit",
                "Amount": 360.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Mobile Deposit",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Check Deposit",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "CheckDeposit",
                "TransactionReferenceID": "13197",
                "TransactionStage": "4"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-10-02T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-10-02T07:00:00+00:00",
                "PostDate": "2013-10-02T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Daniel Streit (5553244444)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Returned",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "7539",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0200,
            "Time": "2013-10-02T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-10-02T07:00:00+00:00",
                "PostDate": "2013-10-02T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0200,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (5553244444)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Returned",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "11789",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 10.9500,
            "Time": "2013-10-02T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "303274224234986",
                "TransactionDate": "2013-10-01T07:00:00+00:00",
                "PostDate": "2013-10-02T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 10.9500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "EIG*EASYCGI",
                "MerchantCity": "866-5392854",
                "MerchantState": "MA ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "01803",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 200.0000,
            "Time": "2013-10-02T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-10-02T07:00:00+00:00",
                "PostDate": "2013-10-02T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Credit",
                "Amount": 200.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "DD:E*TRADE-ACH TRNSFR",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Direct Deposit",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 2.7900,
            "Time": "2013-10-01T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "583272552462539",
                "TransactionDate": "2013-09-29T07:00:00+00:00",
                "PostDate": "2013-10-01T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 2.7900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "MCDONALD'S F6774",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Fast Food",
                "MerchantCategoryType": "5",
                "BillCycleID": null,
                "ZipCode": "97232",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 8.0900,
            "Time": "2013-10-01T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "583273663568772",
                "TransactionDate": "2013-09-30T07:00:00+00:00",
                "PostDate": "2013-10-01T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 8.0900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "PANERA CARES #609002",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Fast Food",
                "MerchantCategoryType": "5",
                "BillCycleID": null,
                "ZipCode": "97213",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 21.4000,
            "Time": "2013-09-30T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "083270085774833",
                "TransactionDate": "2013-09-26T07:00:00+00:00",
                "PostDate": "2013-09-30T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 21.4000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "KILLER BURGER HOLLYWOOD",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Fast Food",
                "MerchantCategoryType": "5",
                "BillCycleID": null,
                "ZipCode": "97213",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 100.0000,
            "Time": "2013-09-30T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-09-30T07:00:00+00:00",
                "PostDate": "2013-09-30T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Credit",
                "Amount": 100.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "DD:E*TRADE-ACH TRNSFR",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Direct Deposit",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 100.0000,
            "Time": "2013-09-30T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-09-30T07:00:00+00:00",
                "PostDate": "2013-09-30T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 100.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Kim Kardashian (Kardashian+fjldksjflksdjflksdjfklsjdflsdjflksdjfklsjfkljsdklfjasdklfjlksdjfklsdjfklsdjfkjsdlkfjsdkfjlsdkjfkdsjflksdjflksdjfksdjflksdjflkasdjfklsjdflksdjfklsdjflksdjfksdjflksdjfksdjflskdjflkjsdlkfjsdklfjlksdjfklsdjfklsdjfk@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "19819",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 200.0000,
            "Time": "2013-09-27T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-09-26T07:00:00+00:00",
                "PostDate": "2013-09-27T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 200.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Kim Kardashian (Kardashian@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "19331",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 0.0,
            "Time": "2013-09-24T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-09-24T07:00:00+00:00",
                "PostDate": "2013-09-24T07:00:00+00:00",
                "IsCredit": false,
                "Description": "STATEMENT FREE TEXT",
                "Amount": 0.0,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Monthly Membership Fee",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Fee",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-09-24T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-09-24T07:00:00+00:00",
                "PostDate": "2013-09-24T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Jennifer Lopez (Carman@yahoo.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Expired",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "18450",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0100,
            "Time": "2013-09-24T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-09-24T07:00:00+00:00",
                "PostDate": "2013-09-24T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0100,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Frank Carman (Carman@yahoo.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Expired",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "18452",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0300,
            "Time": "2013-09-24T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-09-24T07:00:00+00:00",
                "PostDate": "2013-09-24T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0300,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Jennifer Lopez (5553339555)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Expired",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "18454",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 35.0000,
            "Time": "2013-09-20T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "163263088820898",
                "TransactionDate": "2013-09-19T07:00:00+00:00",
                "PostDate": "2013-09-20T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 35.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "KAISER MEDICAL 010",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Service Providers",
                "MerchantCategoryType": "14",
                "BillCycleID": null,
                "ZipCode": "97227",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 90.4400,
            "Time": "2013-09-17T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "463259649105444",
                "TransactionDate": "2013-09-16T07:00:00+00:00",
                "PostDate": "2013-09-17T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 90.4400,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "HOTWIRE-SALES FINAL",
                "MerchantCity": "866-468-9473",
                "MerchantState": "CA ",
                "MerchantCategory": "Purchase - Travel",
                "MerchantCategoryType": "15",
                "BillCycleID": null,
                "ZipCode": "94111",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-09-13T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-09-13T07:00:00+00:00",
                "PostDate": "2013-09-13T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Jennifer Lopez (Carman@yahoo.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "18450",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0100,
            "Time": "2013-09-13T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-09-13T07:00:00+00:00",
                "PostDate": "2013-09-13T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0100,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Frank Carman (Carman@yahoo.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "18452",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0200,
            "Time": "2013-09-13T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-09-13T07:00:00+00:00",
                "PostDate": "2013-09-13T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0200,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Jennifer Lopez (5553339555)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "18453",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0300,
            "Time": "2013-09-13T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-09-13T07:00:00+00:00",
                "PostDate": "2013-09-13T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0300,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Jennifer Lopez (5553339555)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "18454",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 8.5300,
            "Time": "2013-09-12T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "303254752947089",
                "TransactionDate": "2013-09-11T07:00:00+00:00",
                "PostDate": "2013-09-12T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 8.5300,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "SQ *TAILS & TROTTERS, LLC",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "97214",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 9.2000,
            "Time": "2013-09-09T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "003248749467584",
                "TransactionDate": "2013-09-05T07:00:00+00:00",
                "PostDate": "2013-09-09T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 9.2000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "24TH AND MEATBALLS LLC",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "97232",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 12.0800,
            "Time": "2013-09-09T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "583249708798083",
                "TransactionDate": "2013-09-06T07:00:00+00:00",
                "PostDate": "2013-09-09T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 12.0800,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "SQ *CREMA COFFEE + BAKERY",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "97214",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 53.9900,
            "Time": "2013-09-09T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "325023335733",
                "TransactionDate": "2013-09-07T07:00:00+00:00",
                "PostDate": "2013-09-09T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Debit-Purchase (Metavante)",
                "Amount": 53.9900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "QUALITY FOOD CEN 5544",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Grocery Stores",
                "MerchantCategoryType": "7",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 80.0000,
            "Time": "2013-09-09T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000003272",
                "TransactionDate": "2013-09-08T07:00:00+00:00",
                "PostDate": "2013-09-09T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Debit-Cash (Metavante)",
                "Amount": 80.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ONPOINT COMMUNITY CU",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Service Providers",
                "MerchantCategoryType": "14",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 400.0000,
            "Time": "2013-09-09T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-09-07T07:00:00+00:00",
                "PostDate": "2013-09-09T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 400.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Received from Nicki Minaj",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Received",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "18074",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 2.0000,
            "Time": "2013-09-02T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-31T07:00:00+00:00",
                "PostDate": "2013-09-02T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 2.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Received from Nicki Minaj",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Received",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "17401",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 10.9500,
            "Time": "2013-09-02T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "463244231921651",
                "TransactionDate": "2013-09-01T07:00:00+00:00",
                "PostDate": "2013-09-02T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 10.9500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "EIG*EASYCGI",
                "MerchantCity": "866-5392854",
                "MerchantState": "MA ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "01803",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 75.0000,
            "Time": "2013-09-02T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-31T07:00:00+00:00",
                "PostDate": "2013-09-02T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 75.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Nicki Minaj(Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "17400",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 200.0000,
            "Time": "2013-08-29T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-29T07:00:00+00:00",
                "PostDate": "2013-08-29T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Credit",
                "Amount": 200.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "DD:E*TRADE-ACH TRNSFR",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Direct Deposit",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 18.3800,
            "Time": "2013-08-28T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "083238660299390",
                "TransactionDate": "2013-08-26T07:00:00+00:00",
                "PostDate": "2013-08-28T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 18.3800,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "IHOP 3251",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "97220",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 200.0000,
            "Time": "2013-08-28T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-27T07:00:00+00:00",
                "PostDate": "2013-08-28T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 200.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Kim Kardashian (Kardashian@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "16964",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 0.2100,
            "Time": "2013-08-27T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-27T07:00:00+00:00",
                "PostDate": "2013-08-27T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Credit",
                "Amount": 0.2100,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "DD:E*TRADE BANK-TRANSFER",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Direct Deposit",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 0.3200,
            "Time": "2013-08-27T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-27T07:00:00+00:00",
                "PostDate": "2013-08-27T07:00:00+00:00",
                "IsCredit": true,
                "Description": "Credit",
                "Amount": 0.3200,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "DD:E*TRADE BANK-TRANSFER",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Direct Deposit",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 0.5300,
            "Time": "2013-08-27T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-27T07:00:00+00:00",
                "PostDate": "2013-08-27T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Debit",
                "Amount": 0.5300,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "DD:E*TRADE BANK-TRANSFER",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Funding Reversal",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-08-26T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-26T07:00:00+00:00",
                "PostDate": "2013-08-26T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Monthly Maintenance Fee",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Monthly Membership Fee",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Fee",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 18.9200,
            "Time": "2013-08-23T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "003234091236715",
                "TransactionDate": "2013-08-21T00:00:00-07:00",
                "PostDate": "2013-08-23T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 18.9200,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "BURGERVILLE USA #32",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "97214",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-08-19T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-19T00:00:00-07:00",
                "PostDate": "2013-08-19T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (5553244444)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Expired",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "13932",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 220.0000,
            "Time": "2013-08-15T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-15T00:00:00-07:00",
                "PostDate": "2013-08-15T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Mobile Deposit",
                "Amount": 220.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Mobile Deposit",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Check Deposit",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "CheckDeposit",
                "TransactionReferenceID": "5514",
                "TransactionStage": "4"
            }
        }, {
            "Id": null,
            "Amount": 7.9800,
            "Time": "2013-08-12T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "303223592053561",
                "TransactionDate": "2013-08-11T00:00:00-07:00",
                "PostDate": "2013-08-12T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 7.9800,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "FRY'S ELECTRONICS #16",
                "MerchantCity": "WILSONVILLE",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "97070",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 69.6400,
            "Time": "2013-08-12T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "463221813539176",
                "TransactionDate": "2013-08-10T00:00:00-07:00",
                "PostDate": "2013-08-12T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 69.6400,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "SPARKFUN ELECTRONICS",
                "MerchantCity": "303-284-0979",
                "MerchantState": "CO ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "80301",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 100.0000,
            "Time": "2013-08-12T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000002622",
                "TransactionDate": "2013-08-08T00:00:00-07:00",
                "PostDate": "2013-08-12T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Debit-Cash (Metavante)",
                "Amount": 100.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "U.S. BANK",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Service Providers",
                "MerchantCategoryType": "14",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 11.5900,
            "Time": "2013-08-09T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "583219562056054",
                "TransactionDate": "2013-08-08T00:00:00-07:00",
                "PostDate": "2013-08-09T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 11.5900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "SPARKFUN ELECTRONICS",
                "MerchantCity": "303-284-0979",
                "MerchantState": "CO ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "80301",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 51.0000,
            "Time": "2013-08-08T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-08T00:00:00-07:00",
                "PostDate": "2013-08-08T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 51.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Kim Kardashian (Kardashian@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "14038",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-08-07T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-07T00:00:00-07:00",
                "PostDate": "2013-08-07T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "13934",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-08-07T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-07T00:00:00-07:00",
                "PostDate": "2013-08-07T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Declined",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "13934",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-08-07T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-07T00:00:00-07:00",
                "PostDate": "2013-08-07T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (5553244444)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "13932",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 100.0000,
            "Time": "2013-08-05T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-02T00:00:00-07:00",
                "PostDate": "2013-08-05T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 100.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (5553339555)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "13518",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 100.0000,
            "Time": "2013-08-05T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000001575",
                "TransactionDate": "2013-08-02T00:00:00-07:00",
                "PostDate": "2013-08-05T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Debit-Cash (Metavante)",
                "Amount": 100.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "MBANK",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Cash Withdrawal",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 10.9500,
            "Time": "2013-08-02T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "383213271811455",
                "TransactionDate": "2013-08-01T00:00:00-07:00",
                "PostDate": "2013-08-02T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 10.9500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "EIG*EASYCGI",
                "MerchantCity": "866-5392854",
                "MerchantState": "MA ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "01803",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 360.0000,
            "Time": "2013-08-01T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-01T00:00:00-07:00",
                "PostDate": "2013-08-01T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Mobile Deposit",
                "Amount": 360.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Mobile Deposit",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Check Deposit",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "1",
                "TransactionReferenceID": "5566",
                "TransactionStage": "4"
            }
        }, {
            "Id": null,
            "Amount": 11.0000,
            "Time": "2013-07-31T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "163210781654553",
                "TransactionDate": "2013-07-29T00:00:00-07:00",
                "PostDate": "2013-07-31T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 11.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "LITTLE BIG BURGER - TH",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "97202",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 10.0000,
            "Time": "2013-07-29T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "320918743326",
                "TransactionDate": "2013-07-28T00:00:00-07:00",
                "PostDate": "2013-07-29T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Debit-Purchase (Metavante)",
                "Amount": 10.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "FRED MEYER FRED MEYER",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Grocery Stores",
                "MerchantCategoryType": "7",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 0.0,
            "Time": "2013-07-24T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-24T00:00:00-07:00",
                "PostDate": "2013-07-24T00:00:00-07:00",
                "IsCredit": false,
                "Description": "STATEMENT FREE TEXT",
                "Amount": 0.0,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Monthly Membership Fee",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Fee",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 18.0000,
            "Time": "2013-07-22T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "083201774745958",
                "TransactionDate": "2013-07-20T00:00:00-07:00",
                "PostDate": "2013-07-22T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 18.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "SWEET BASIL THAI CUISINE",
                "MerchantCity": "EUGENE",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "97401",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-07-15T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-13T00:00:00-07:00",
                "PostDate": "2013-07-15T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (5553244444)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Canceled",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "11995",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-07-15T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-13T00:00:00-07:00",
                "PostDate": "2013-07-15T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (5553244444)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "11995",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 3.0300,
            "Time": "2013-07-15T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-15T00:00:00-07:00",
                "PostDate": "2013-07-15T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Credit",
                "Amount": 3.0300,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "DD:PAYPAL-TRANSFER",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Direct Deposit",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-07-12T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-12T00:00:00-07:00",
                "PostDate": "2013-07-12T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "11927",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-07-12T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-12T00:00:00-07:00",
                "PostDate": "2013-07-12T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "11930",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-07-12T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-11T00:00:00-07:00",
                "PostDate": "2013-07-12T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (5553244444)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Declined",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "11896",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-07-12T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-12T00:00:00-07:00",
                "PostDate": "2013-07-12T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "11931",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-07-12T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-12T00:00:00-07:00",
                "PostDate": "2013-07-12T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "11932",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-07-12T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-12T00:00:00-07:00",
                "PostDate": "2013-07-12T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Declined",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "11930",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-07-12T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-12T00:00:00-07:00",
                "PostDate": "2013-07-12T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Canceled",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "11927",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-07-12T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-11T00:00:00-07:00",
                "PostDate": "2013-07-12T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (5553244444)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "11896",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0200,
            "Time": "2013-07-12T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-12T00:00:00-07:00",
                "PostDate": "2013-07-12T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0200,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Declined",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "11926",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0200,
            "Time": "2013-07-12T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-12T00:00:00-07:00",
                "PostDate": "2013-07-12T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0200,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "11926",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0300,
            "Time": "2013-07-12T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-12T00:00:00-07:00",
                "PostDate": "2013-07-12T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0300,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "11928",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 7.0000,
            "Time": "2013-07-11T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "163190732921845",
                "TransactionDate": "2013-07-09T00:00:00-07:00",
                "PostDate": "2013-07-11T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 7.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "UNITED      0162929600414",
                "MerchantCity": "800-932-2732",
                "MerchantState": "TX ",
                "MerchantCategory": "Purchase - Airlines",
                "MerchantCategoryType": "1",
                "BillCycleID": null,
                "ZipCode": "77002",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0100,
            "Time": "2013-07-10T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-10T00:00:00-07:00",
                "PostDate": "2013-07-10T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0100,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "11788",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0100,
            "Time": "2013-07-10T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-10T00:00:00-07:00",
                "PostDate": "2013-07-10T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0100,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Declined",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "11788",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0200,
            "Time": "2013-07-10T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-10T00:00:00-07:00",
                "PostDate": "2013-07-10T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0200,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (5553244444)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "11789",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 2.9900,
            "Time": "2013-07-10T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "283189564230090",
                "TransactionDate": "2013-07-08T00:00:00-07:00",
                "PostDate": "2013-07-10T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 2.9900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "UNITED      0162929481991",
                "MerchantCity": "800-932-2732",
                "MerchantState": "TX ",
                "MerchantCategory": "Purchase - Airlines",
                "MerchantCategoryType": "1",
                "BillCycleID": null,
                "ZipCode": "77002",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 5.2500,
            "Time": "2013-07-10T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "163188652006282",
                "TransactionDate": "2013-07-07T00:00:00-07:00",
                "PostDate": "2013-07-10T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 5.2500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "AUSTINCC CTRNG10221554",
                "MerchantCity": "AUSTIN",
                "MerchantState": "TX ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "78701",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 10.0000,
            "Time": "2013-07-10T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "283188746458297",
                "TransactionDate": "2013-07-07T00:00:00-07:00",
                "PostDate": "2013-07-10T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 10.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "AUSTINCC CTRNG10221554",
                "MerchantCity": "AUSTIN",
                "MerchantState": "TX ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "78701",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 100.0000,
            "Time": "2013-07-10T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "003189606466695",
                "TransactionDate": "2013-07-09T00:00:00-07:00",
                "PostDate": "2013-07-10T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 100.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "REVOLUTION PARKOUR LLC",
                "MerchantCity": "BEAVERTON",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Service Providers",
                "MerchantCategoryType": "14",
                "BillCycleID": null,
                "ZipCode": "97005",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 2.9400,
            "Time": "2013-07-09T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "583188554274471",
                "TransactionDate": "2013-07-07T00:00:00-07:00",
                "PostDate": "2013-07-09T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 2.9400,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "CY BY MARRIOTTSTRBCKS1103",
                "MerchantCity": "AUSTIN",
                "MerchantState": "TX ",
                "MerchantCategory": "Purchase - Hotels/Motels",
                "MerchantCategoryType": "8",
                "BillCycleID": null,
                "ZipCode": "78701",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 5.0000,
            "Time": "2013-07-09T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "163189551996122",
                "TransactionDate": "2013-07-08T00:00:00-07:00",
                "PostDate": "2013-07-09T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 5.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "MCDONALD'S F7789",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Fast Food",
                "MerchantCategoryType": "5",
                "BillCycleID": null,
                "ZipCode": "97212",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 3.2400,
            "Time": "2013-07-08T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "083186673129100",
                "TransactionDate": "2013-07-05T00:00:00-07:00",
                "PostDate": "2013-07-08T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 3.2400,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "TACO SHACK V",
                "MerchantCity": "AUSTIN",
                "MerchantState": "TX ",
                "MerchantCategory": "Purchase - Fast Food",
                "MerchantCategoryType": "5",
                "BillCycleID": null,
                "ZipCode": "78701",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 3.2400,
            "Time": "2013-07-08T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "163189015188541",
                "TransactionDate": "2013-07-07T00:00:00-07:00",
                "PostDate": "2013-07-08T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 3.2400,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "RUTA MAYA # 5224",
                "MerchantCity": "AUSTIN",
                "MerchantState": "TX ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "78719",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 6.4800,
            "Time": "2013-07-08T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "163186671989017",
                "TransactionDate": "2013-07-05T00:00:00-07:00",
                "PostDate": "2013-07-08T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 6.4800,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "TACO SHACK V",
                "MerchantCity": "AUSTIN",
                "MerchantState": "TX ",
                "MerchantCategory": "Purchase - Fast Food",
                "MerchantCategoryType": "5",
                "BillCycleID": null,
                "ZipCode": "78701",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 18.6900,
            "Time": "2013-07-08T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "163188836225288",
                "TransactionDate": "2013-07-07T00:00:00-07:00",
                "PostDate": "2013-07-08T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 18.6900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "DNC TRAVEL - AUSTI",
                "MerchantCity": "AUSTIN",
                "MerchantState": "TX ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "78719",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 10.5100,
            "Time": "2013-07-05T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "083186150688494",
                "TransactionDate": "2013-07-05T00:00:00-07:00",
                "PostDate": "2013-07-05T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 10.5100,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "SQ *THE ONION",
                "MerchantCity": "AUSTIN",
                "MerchantState": "TX ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "78701",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 5.0400,
            "Time": "2013-07-03T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-02T00:00:00-07:00",
                "PostDate": "2013-07-03T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Mobile Deposit",
                "Amount": 5.0400,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Mobile Deposit",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Check Deposit",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "1",
                "TransactionReferenceID": "2817",
                "TransactionStage": "4"
            }
        }, {
            "Id": null,
            "Amount": 360.0000,
            "Time": "2013-07-03T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-07-02T00:00:00-07:00",
                "PostDate": "2013-07-03T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Mobile Deposit",
                "Amount": 360.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Mobile Deposit",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Check Deposit",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "1",
                "TransactionReferenceID": "2815",
                "TransactionStage": "4"
            }
        }, {
            "Id": null,
            "Amount": 10.9500,
            "Time": "2013-07-02T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "303182251890788",
                "TransactionDate": "2013-07-01T00:00:00-07:00",
                "PostDate": "2013-07-02T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 10.9500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "EIG*EASYCGI",
                "MerchantCity": "866-5392854",
                "MerchantState": "MA ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "01803",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 5.0000,
            "Time": "2013-07-01T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "083181031721735",
                "TransactionDate": "2013-06-29T00:00:00-07:00",
                "PostDate": "2013-07-01T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 5.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "METRO REGIONAL PARK CHINO",
                "MerchantCity": "TROUTDALE",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Miscellaneous/Bill Pay (BP)",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "97060",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 100.0000,
            "Time": "2013-07-01T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "318006473905",
                "TransactionDate": "2013-06-28T00:00:00-07:00",
                "PostDate": "2013-07-01T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Debit-Cash (Metavante)",
                "Amount": 100.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "CT VCOM",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Cash Withdrawal",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-06-28T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-06-27T00:00:00-07:00",
                "PostDate": "2013-06-28T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Canceled",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "10594",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-06-28T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-06-27T00:00:00-07:00",
                "PostDate": "2013-06-28T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "10594",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.2000,
            "Time": "2013-06-27T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-06-27T00:00:00-07:00",
                "PostDate": "2013-06-27T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.2000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "10583",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.2000,
            "Time": "2013-06-27T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-06-27T00:00:00-07:00",
                "PostDate": "2013-06-27T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.2000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (Nicki.Minaj@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Declined",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "10583",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 0.0,
            "Time": "2013-06-24T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-06-24T00:00:00-07:00",
                "PostDate": "2013-06-24T00:00:00-07:00",
                "IsCredit": false,
                "Description": "STATEMENT FREE TEXT",
                "Amount": 0.0,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Monthly Membership Fee",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Fee",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 27.9800,
            "Time": "2013-06-19T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "163162087084257",
                "TransactionDate": "2013-06-18T00:00:00-07:00",
                "PostDate": "2013-06-19T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 27.9800,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "GOPRO *WWW.GOPRO.COM",
                "MerchantCity": "650-980-0252",
                "MerchantState": "CA ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "94019",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 6.7000,
            "Time": "2013-06-17T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "613166548978881",
                "TransactionDate": "2013-05-17T00:00:00-07:00",
                "PostDate": "2013-06-17T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 6.7000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ATOMIC PIZZA: HOLLYWOOD",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "97212",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.2300,
            "Time": "2013-06-14T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-06-13T00:00:00-07:00",
                "PostDate": "2013-06-14T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.2300,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (5553244444)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Canceled",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "9766",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.2300,
            "Time": "2013-06-14T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-06-13T00:00:00-07:00",
                "PostDate": "2013-06-14T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 1.2300,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to (5553244444)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "9766",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 41.3800,
            "Time": "2013-06-14T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "316416143732",
                "TransactionDate": "2013-06-13T00:00:00-07:00",
                "PostDate": "2013-06-14T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Debit-Purchase (Metavante)",
                "Amount": 41.3800,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "CVS 09915 09915--352 U",
                "MerchantCity": "PALO ALTO",
                "MerchantState": "CA ",
                "MerchantCategory": "Purchase - Pharmacies/Drug Stores",
                "MerchantCategoryType": "11",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 8.0000,
            "Time": "2013-06-13T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "283163861550480",
                "TransactionDate": "2013-06-12T00:00:00-07:00",
                "PostDate": "2013-06-13T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 8.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ROSE QUARTER PARKING",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Service Providers",
                "MerchantCategoryType": "14",
                "BillCycleID": null,
                "ZipCode": "97227",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 28.9500,
            "Time": "2013-06-13T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "003164092076894",
                "TransactionDate": "2013-06-12T00:00:00-07:00",
                "PostDate": "2013-06-13T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 28.9500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "CHA CHA CHA TAQUERIA",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "97232",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 29.0000,
            "Time": "2013-06-13T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "003164141607700",
                "TransactionDate": "2013-06-12T00:00:00-07:00",
                "PostDate": "2013-06-13T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 29.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "BISHOPS BARBERSHOP NO 3",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Service Providers",
                "MerchantCategoryType": "14",
                "BillCycleID": null,
                "ZipCode": "97232",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 5.3900,
            "Time": "2013-06-12T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "083161624387212",
                "TransactionDate": "2013-06-10T00:00:00-07:00",
                "PostDate": "2013-06-12T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 5.3900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "MCDONALD'S F6774",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Fast Food",
                "MerchantCategoryType": "5",
                "BillCycleID": null,
                "ZipCode": "97232",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.6900,
            "Time": "2013-06-11T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "316113407618",
                "TransactionDate": "2013-06-10T00:00:00-07:00",
                "PostDate": "2013-06-11T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Debit-Purchase (Metavante)",
                "Amount": 1.6900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "PLAID PANTRY #220",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Gas/Fuel",
                "MerchantCategoryType": "6",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 100.0000,
            "Time": "2013-06-11T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-06-11T00:00:00-07:00",
                "PostDate": "2013-06-11T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 100.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO CARD",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 2000.0000,
            "Time": "2013-06-11T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-06-11T00:00:00-07:00",
                "PostDate": "2013-06-11T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Bill Pay",
                "Amount": 2000.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ONLINE PMT-DAN M",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "BillPay",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.1000,
            "Time": "2013-06-10T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-06-08T00:00:00-07:00",
                "PostDate": "2013-06-10T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Mobile Deposit",
                "Amount": 1.1000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Mobile Deposit",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Check Deposit",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "1",
                "TransactionReferenceID": "1765",
                "TransactionStage": "4"
            }
        }, {
            "Id": null,
            "Amount": 4.2500,
            "Time": "2013-06-10T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "283160011603269",
                "TransactionDate": "2013-06-08T00:00:00-07:00",
                "PostDate": "2013-06-10T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 4.2500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "STARBUCKS #00435 PORTLAND",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Fast Food",
                "MerchantCategoryType": "5",
                "BillCycleID": null,
                "ZipCode": "97213",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 4.9900,
            "Time": "2013-06-10T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "163157667998078",
                "TransactionDate": "2013-06-06T00:00:00-07:00",
                "PostDate": "2013-06-10T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 4.9900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "BURGERVILLE USA #12",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "97233",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 12.9900,
            "Time": "2013-06-10T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "163159808753114",
                "TransactionDate": "2013-06-08T00:00:00-07:00",
                "PostDate": "2013-06-10T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 12.9900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "BARNES & NOBLE #2077",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Miscellaneous/Bill Pay (BP)",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "97232",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 19.0100,
            "Time": "2013-06-10T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-06-08T00:00:00-07:00",
                "PostDate": "2013-06-10T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Mobile Deposit",
                "Amount": 19.0100,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Mobile Deposit",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Check Deposit",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "1",
                "TransactionReferenceID": "1766",
                "TransactionStage": "4"
            }
        }, {
            "Id": null,
            "Amount": 2000.0000,
            "Time": "2013-06-10T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-06-10T00:00:00-07:00",
                "PostDate": "2013-06-10T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 2000.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO CARD",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 8.7500,
            "Time": "2013-06-07T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "583157122978357",
                "TransactionDate": "2013-06-06T00:00:00-07:00",
                "PostDate": "2013-06-07T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 8.7500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "SUBWAY        00455170",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Fast Food",
                "MerchantCategoryType": "5",
                "BillCycleID": null,
                "ZipCode": "97231",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 22.5000,
            "Time": "2013-06-06T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "163156845824395",
                "TransactionDate": "2013-06-05T00:00:00-07:00",
                "PostDate": "2013-06-06T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 22.5000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ISLAND COVE CAFE AND MAR",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "97231",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 3.7500,
            "Time": "2013-06-03T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "003153719835004",
                "TransactionDate": "2013-06-02T00:00:00-07:00",
                "PostDate": "2013-06-03T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 3.7500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "SQ *BLACK CAT CAFE ON ALB",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Restaurants",
                "MerchantCategoryType": "12",
                "BillCycleID": null,
                "ZipCode": "97211",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 5.0000,
            "Time": "2013-06-03T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "163152507402630",
                "TransactionDate": "2013-06-01T00:00:00-07:00",
                "PostDate": "2013-06-03T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 5.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "MCDONALD'S F7789",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Fast Food",
                "MerchantCategoryType": "5",
                "BillCycleID": null,
                "ZipCode": "97212",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 10.9500,
            "Time": "2013-06-03T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "303152237268083",
                "TransactionDate": "2013-06-01T00:00:00-07:00",
                "PostDate": "2013-06-03T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 10.9500,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "EIG*EASYCGI",
                "MerchantCity": "866-5392854",
                "MerchantState": "MA ",
                "MerchantCategory": "Purchase - Retail Stores",
                "MerchantCategoryType": "13",
                "BillCycleID": null,
                "ZipCode": "01803",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 10.9900,
            "Time": "2013-06-03T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "315321991142",
                "TransactionDate": "2013-06-02T00:00:00-07:00",
                "PostDate": "2013-06-03T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Debit-Purchase (Metavante)",
                "Amount": 10.9900,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "OREILLY AUTO PARTS 253",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Automobiles & Vehicles",
                "MerchantCategoryType": "4",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 25.4000,
            "Time": "2013-06-03T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "163151093583898",
                "TransactionDate": "2013-05-30T00:00:00-07:00",
                "PostDate": "2013-06-03T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Sales Draft (Visa)",
                "Amount": 25.4000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "KILLER BURGER HOLLYWOOD",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Purchase - Fast Food",
                "MerchantCategoryType": "5",
                "BillCycleID": null,
                "ZipCode": "97213",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 100.0000,
            "Time": "2013-06-03T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000003926",
                "TransactionDate": "2013-06-02T00:00:00-07:00",
                "PostDate": "2013-06-03T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Debit-Cash (Metavante)",
                "Amount": 100.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "ONPOINT COMMUNITY CU",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Cash Withdrawal",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 100.0000,
            "Time": "2013-06-03T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000004482",
                "TransactionDate": "2013-05-30T00:00:00-07:00",
                "PostDate": "2013-06-03T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Debit-Cash (Metavante)",
                "Amount": 100.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "U.S. BANK",
                "MerchantCity": "PORTLAND",
                "MerchantState": "OR ",
                "MerchantCategory": "Cash Withdrawal",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "00000",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 300.0000,
            "Time": "2013-06-03T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-06-01T00:00:00-07:00",
                "PostDate": "2013-06-03T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 300.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO CARD",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 100.0000,
            "Time": "2013-05-31T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-05-31T00:00:00-07:00",
                "PostDate": "2013-05-31T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Trnsfr frm DepositAcct",
                "Amount": 100.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "VAULT TO CARD",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer from Money Vault",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 2000.0000,
            "Time": "2013-05-31T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-05-31T00:00:00-07:00",
                "PostDate": "2013-05-31T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Mobile Deposit",
                "Amount": 2000.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Mobile Deposit",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Check Deposit",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "1",
                "TransactionReferenceID": "1364",
                "TransactionStage": "4"
            }
        }, {
            "Id": null,
            "Amount": 2000.0000,
            "Time": "2013-05-31T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-05-31T00:00:00-07:00",
                "PostDate": "2013-05-31T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Trnsfr to DepositAcct",
                "Amount": 2000.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "CARD TO VAULT",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Transfer to Money Vault",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 1.0000,
            "Time": "2013-05-27T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-05-26T00:00:00-07:00",
                "PostDate": "2013-05-27T00:00:00-07:00",
                "IsCredit": true,
                "Description": "Money Transfer Credit",
                "Amount": 1.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "MONEY TRANSFER C",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Received",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 0.0,
            "Time": "2013-05-24T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-05-24T00:00:00-07:00",
                "PostDate": "2013-05-24T00:00:00-07:00",
                "IsCredit": false,
                "Description": "STATEMENT FREE TEXT",
                "Amount": 0.0,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Monthly Membership Fee",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Fee",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "0",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 360.0000,
            "Time": "0001-01-01T00:00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Rejected",
                "TransactionID": null,
                "TransactionDate": "2013-06-10T00:00:00-07:00",
                "PostDate": null,
                "IsCredit": true,
                "Description": "Mobile Deposit",
                "Amount": 360.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Mobile Deposit",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Check Deposit",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "1",
                "TransactionReferenceID": "1764",
                "TransactionStage": "5"
            }
        }
    ];

    var _locations = [
        [{
            "Id": 261300979,
            "Raw": {
                "LocationID": 261300979,
                "LocationType": "0",
                "Longitude": -118.1415,
                "Latitude": 34.14777,
                "Name": "EAST WEST BANK",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "135 N LOS ROBLES",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.17
            }
        }, {
            "Id": 261315343,
            "Raw": {
                  "LocationType": "0",
              "LocationID": 261315343,
                "Longitude": -118.1354,
                "Latitude": 34.14587,
                "Name": "U.S. Bank Pasadena",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "720 East Colorado Boulevard",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "Pasadena",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.54
            }
        }, {
            "Id": 247808338,
            "Raw": {
                "LocationID": 247808338,
                "LocationType": "0",
                "Longitude": -118.1346,
                "Latitude": 34.14684,
                "Name": "TARGET #0883",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "777 E COLORADO BLVD",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.57
            }
        }, {
            "Id": 261313475,
            "Raw": {
                "LocationID": 261313475,
                "LocationType": "0",
                "Longitude": -118.1327,
                "Latitude": 34.14947,
                "Name": "ONEWEST BANK",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "888 E WALNUT",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.68
            }
        }, {
            "Id": 261316744,
            "Raw": {
                "LocationID": 261316744,
                "LocationType": "0",
                "Longitude": -118.1323,
                "Latitude": 34.14589,
                "Name": "OPUS BANK                             84",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "2 NORTH LAKE",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.71
            }
        }, {
            "Id": 247818512,
            "Raw": {
                "LocationID": 247818512,
                "LocationType": "0",
                "Longitude": -118.15,
                "Latitude": 34.15744,
                "Name": "CVS STORE #09848",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "20 E ORANGE GROVE BLVD",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.74
            }
        }, {
            "Id": 261314663,
            "Raw": {
                "LocationID": 261314663,
                "LocationType": "0",
                "Longitude": -118.1322,
                "Latitude": 34.14048,
                "Name": "Walgreens Store 11442",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "310 S Lake",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "Pasadena",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.87
            }
        }, {
            "Id": 247811129,
            "Raw": {
                "LocationID": 247811129,
                "LocationType": "0",
                "Longitude": -118.129,
                "Latitude": 34.14554,
                "Name": "RITE AID #06255",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "1038 E COLORADO BLVD",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.9
            }
        }, {
            "Id": 247821255,
            "Raw": {
                "LocationID": 247821255,
                "LocationType": "0",
                "Longitude": -118.1535,
                "Latitude": 34.13644,
                "Name": "VONS #02152",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "155 W CALIFORNIA BLVD",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.94
            }
        }, {
            "Id": 261316191,
            "Raw": {
                "LocationID": 261316191,
                "LocationType": "0",
                "Longitude": -118.1322,
                "Latitude": 34.15746,
                "Name": "Walgreens Store 9139",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "670 N. Lake Ave.",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.97
            }
        }, {
            "Id": 247816062,
            "Raw": {
                "LocationID": 247816062,
                "LocationType": "0",
                "Longitude": -118.132,
                "Latitude": 34.15801,
                "Name": "7-ELEVEN #25483",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "690 N LAKE AVE",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.01
            }
        }, {
            "Id": 247805706,
            "Raw": {
                "LocationID": 247805706,
                "LocationType": "0",
                "Longitude": -118.1478,
                "Latitude": 34.13338,
                "Name": "CVS STORE #09668",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "727 S ARROYO PKWY",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.01
            }
        }, {
            "Id": 247821256,
            "Raw": {
                "LocationID": 247821256,
                "LocationType": "0",
                "Longitude": -118.1331,
                "Latitude": 34.13634,
                "Name": "PAVILION #02224",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "845 E CALIFORNIA BLVD",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.03
            }
        }, {
            "Id": 261318674,
            "Raw": {
                "LocationID": 261318674,
                "LocationType": "0",
                "Longitude": -118.1478,
                "Latitude": 34.1327,
                "Name": "FROM THE HEART NIS",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "753 S ARROYO PKWY 2",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.06
            }
        }, {
            "Id": 247818475,
            "Raw": {
                "LocationID": 247818475,
                "LocationType": "0",
                "Longitude": -118.1317,
                "Latitude": 34.1607,
                "Name": "CVS STORE #09694",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "900 N LAKE AVE",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.15
            }
        }, {
            "Id": 261321862,
            "Raw": {
                "LocationID": 261321862,
                "LocationType": "0",
                "Longitude": -118.1204,
                "Latitude": 34.14984,
                "Name": "WALNUT HILL CAR WASH",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "1465 WALNUT STREET",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.39
            }
        }, {
            "Id": 139281031,
            "Raw": {
                "LocationID": 139281031,
                "LocationType": "0",
                "Longitude": -118.1327,
                "Latitude": 34.16868,
                "Name": "ONEUNITED BANK",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "1335 NORTH LAKE AVENUE",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.6
            }
        }, {
            "Id": 261321368,
            "Raw": {
                "LocationID": 261321368,
                "LocationType": "0",
                "Longitude": -118.1129,
                "Latitude": 34.15409,
                "Name": "VALERO",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "1816 E VILLA STREET",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.86
            }
        }, {
            "Id": 247821899,
            "Raw": {
                "LocationID": 247821899,
                "LocationType": "0",
                "Longitude": -118.1209,
                "Latitude": 34.1696,
                "Name": "RITE AID #06344",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "1421 E WASHINGTON BLVD",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 2.02
            }
        }, {
            "Id": 261302614,
            "Raw": {
                "LocationID": 261302614,
                "LocationType": "0",
                "Longitude": -118.1504,
                "Latitude": 34.11476,
                "Name": "EAST WEST BANK",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "1001 FAIR OAKS AVE",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "SO PASADENA",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 2.31
            }
        }],
        [{
            "Id": 261311531,
            "Raw": {
                "LocationID": 261311531,
                "LocationType": "0",
                "Longitude": -122.1301,
                "Latitude": 37.43451,
                "Name": "Walgreens Store 6869",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "2605 Middlefield Rd",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "Palo Alto",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.87
            }
        }, {
            "Id": 247802377,
            "Raw": {
                "LocationID": 247802377,
                "LocationType": "0",
                "Longitude": -122.1589,
                "Latitude": 37.43845,
                "Name": "CVS STORE #03935",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "855 EL CAMINO REAL",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PALO ALTO",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.9
            }
        }, {
            "Id": 247815361,
            "Raw": {
                "LocationID": 247815361,
                "LocationType": "0",
                "Longitude": -122.1291,
                "Latitude": 37.43366,
                "Name": "CVS STORE #09984",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "2701 MIDDLEFIELD RD",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PALO ALTO",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.95
            }
        }, {
            "Id": 247815357,
            "Raw": {
                "LocationID": 247815357,
                "LocationType": "0",
                "Longitude": -122.1606,
                "Latitude": 37.44645,
                "Name": "CVS STORE #09915",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "352 UNIVERSITY AVE",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PALO ALTO",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.01
            }
        }, {
            "Id": 247806394,
            "Raw": {
                "LocationID": 247806394,
                "LocationType": "0",
                "Longitude": -122.1278,
                "Latitude": 37.43317,
                "Name": "7-ELEVEN #14315",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "708 COLORADO AVE",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PALO ALTO",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.03
            }
        }, {
            "Id": 261322991,
            "Raw": {
                "LocationID": 261322991,
                "LocationType": "0",
                "Longitude": -122.1614,
                "Latitude": 37.44608,
                "Name": "WALGREENS # 13596",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "300 UNIVERSITY",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PALO",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.05
            }
        }, {
            "Id": 261308469,
            "Raw": {
                "LocationID": 261308469,
                "LocationType": "0",
                "Longitude": -122.1623,
                "Latitude": 37.43933,
                "Name": "ALLIANCE CREDIT UNION",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "795 EL CAMINO REAL",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PALO ALTO",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.07
            }
        }, {
            "Id": 247810260,
            "Raw": {
                "LocationID": 247810260,
                "LocationType": "0",
                "Longitude": -122.1613,
                "Latitude": 37.44796,
                "Name": "7-ELEVEN #18584",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "401 WAVERLEY ST",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PALO ALTO",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.09
            }
        }, {
            "Id": 247808478,
            "Raw": {
                "LocationID": 247808478,
                "LocationType": "0",
                "Longitude": -122.1369,
                "Latitude": 37.4573,
                "Name": "7-ELEVEN #14336",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "77 NEWELL RD",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "EAST PALO ALTO",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.12
            }
        }, {
            "Id": 247817581,
            "Raw": {
                "LocationID": 247817581,
                "LocationType": "0",
                "Longitude": -122.1633,
                "Latitude": 37.44371,
                "Name": "E*TRADE CENTER - PALO ALTO",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "124 UNIVERSITY AVE",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PALO ALTO",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.12
            }
        }, {
            "Id": 261311688,
            "Raw": {
                "LocationID": 261311688,
                "LocationType": "0",
                "Longitude": -122.1461,
                "Latitude": 37.42507,
                "Name": "PROVIDENT CU",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "2390 EL CAMINO REA",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PALO ALTO",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.18
            }
        }, {
            "Id": 261316991,
            "Raw": {
                "LocationID": 261316991,
                "LocationType": "0",
                "Longitude": -122.1625,
                "Latitude": 37.43339,
                "Name": "Stanford Stadium Concourse G",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "625 Nelson Road",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "Stanford",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.22
            }
        }, {
            "Id": 247816296,
            "Raw": {
                "LocationID": 247816296,
                "LocationType": "0",
                "Longitude": -122.1422,
                "Latitude": 37.46295,
                "Name": "CHEVRON #1706 - FACILITY #091081",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "2101 UNIVERSITY AVE",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "E PALO ALTO",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.46
            }
        }, {
            "Id": 261317608,
            "Raw": {
                "LocationID": 261317608,
                "LocationType": "0",
                "Longitude": -122.1753,
                "Latitude": 37.43477,
                "Name": "Walgreens Store 2147",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "875 Blake Wilbur Dr",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "Palo Alto",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 1.84
            }
        }, {
            "Id": 247802703,
            "Raw": {
                "LocationID": 247802703,
                "LocationType": "0",
                "Longitude": -122.1781,
                "Latitude": 37.45034,
                "Name": "SAFEWAY #02719",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "525 EL CAMINO REAL",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "MENLO PARK",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 2.01
            }
        }, {
            "Id": 247803865,
            "Raw": {
                "LocationID": 247803865,
                "LocationType": "0",
                "Longitude": -122.1788,
                "Latitude": 37.45208,
                "Name": "CVS STORE #10240",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "700 EL CAMINO REAL",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "MENLO PARK",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 2.09
            }
        }, {
            "Id": 261320862,
            "Raw": {
                "LocationID": 261320862,
                "LocationType": "0",
                "Longitude": -122.1768,
                "Latitude": 37.45697,
                "Name": "SRI Federal Credit Union",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "333 Ravenswood Ave.",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "Menlo Park",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 2.13
            }
        }, {
            "Id": 261308921,
            "Raw": {
                "LocationID": 261308921,
                "LocationType": "0",
                "Longitude": -122.1768,
                "Latitude": 37.45697,
                "Name": "SRI Federal Credit Union",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "333 Ravenswood Ave",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "Menlo Park",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 2.13
            }
        }, {
            "Id": 261311328,
            "Raw": {
                "LocationID": 261311328,
                "LocationType": "0",
                "Longitude": -122.1249,
                "Latitude": 37.41128,
                "Name": "Walgreens Store 3344",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "4170 El Camino Real",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "Palo Alto",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 2.34
            }
        }, {
            "Id": 261311419,
            "Raw": {
                "LocationID": 261311419,
                "LocationType": "0",
                "Longitude": -122.1838,
                "Latitude": 37.45239,
                "Name": "Walgreens Store 7087",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "643 Santa Cruz",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "Menlo Park",
                    "State": "CA",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 2.35
            }
        }],
        [{
            "Id": 261309982,
            "Raw": {
                "LocationID": 261309982,
                "LocationType": "0",
                "Longitude": -122.6767,
                "Latitude": 45.52166,
                "Name": "U.S. Bank Portland Tower",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "555 SOUTHWEST OAK STREET",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.13
            }
        }, {
            "Id": 261310372,
            "Raw": {
                "LocationID": 261310372,
                "LocationType": "0",
                "Longitude": -122.6767,
                "Latitude": 45.52166,
                "Name": "U.S. Bank Portland Tower",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "555 SOUTHWEST OAK STREET",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.13
            }
        }, {
            "Id": 261309981,
            "Raw": {
                "LocationID": 261309981,
                "LocationType": "0",
                "Longitude": -122.6776,
                "Latitude": 45.52125,
                "Name": "U.S. Bank Portland Main",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "321 SOUTHWEST 6TH AVENUE",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.17
            }
        }, {
            "Id": 261321001,
            "Raw": {
                "LocationID": 261321001,
                "LocationType": "0",
                "Longitude": -122.6776,
                "Latitude": 45.52125,
                "Name": "U.S. Bank Portland Main",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "321 SOUTHWEST 6TH AVENUE",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.17
            }
        }, {
            "Id": 261321316,
            "Raw": {
                "LocationID": 261321316,
                "LocationType": "0",
                "Longitude": -122.6729,
                "Latitude": 45.52505,
                "Name": "Trailhead Credit Union",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "221 NW 2ND AVE",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.19
            }
        }, {
            "Id": 261306861,
            "Raw": {
                "LocationID": 261306861,
                "LocationType": "0",
                "Longitude": -122.6811,
                "Latitude": 45.52648,
                "Name": "ALBINA COMMUNITY BANK",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "430 NW 10TH",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.32
            }
        }, {
            "Id": 261313470,
            "Raw": {
                "LocationID": 261313470,
                "LocationType": "0",
                "Longitude": -122.6825,
                "Latitude": 45.52182,
                "Name": "ONE CALIFORNIA BANK",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "1101 SW WASHINGTON STREET",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.32
            }
        }, {
            "Id": 247807049,
            "Raw": {
                "LocationID": 247807049,
                "LocationType": "0",
                "Longitude": -122.6815,
                "Latitude": 45.5199,
                "Name": "TARGET #2791",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "939 SW MORRISON",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.36
            }
        }, {
            "Id": 261320191,
            "Raw": {
                "LocationID": 261320191,
                "LocationType": "0",
                "Longitude": -122.6804,
                "Latitude": 45.52822,
                "Name": "ONE CALIFORNIA BANK",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "721 NW 9TH AVE",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.39
            }
        }, {
            "Id": 261322241,
            "Raw": {
                "LocationID": 261322241,
                "LocationType": "0",
                "Longitude": -122.6793,
                "Latitude": 45.51774,
                "Name": "U.S. Bank Metropolitan",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "900 SOUTHWEST 6TH AVENUE",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.42
            }
        }, {
            "Id": 261305552,
            "Raw": {
                "LocationID": 261305552,
                "LocationType": "0",
                "Longitude": -122.6793,
                "Latitude": 45.51774,
                "Name": "U.S. Bank Metropolitan",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "900 SOUTHWEST 6TH AVENUE",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.42
            }
        }, {
            "Id": 247817389,
            "Raw": {
                "LocationID": 247817389,
                "LocationType": "0",
                "Longitude": -122.677,
                "Latitude": 45.51697,
                "Name": "7-ELEVEN #34550",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "900 SW 4TH AVE",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.45
            }
        }, {
            "Id": 261313383,
            "Raw": {
                "LocationID": 261313383,
                "LocationType": "0",
                "Longitude": -122.6821,
                "Latitude": 45.53001,
                "Name": "U.S. Bank Pearl District",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "1040 NORTHWEST LOVEJOY STREET",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.54
            }
        }, {
            "Id": 247817812,
            "Raw": {
                "LocationID": 247817812,
                "LocationType": "0",
                "Longitude": -122.6846,
                "Latitude": 45.53009,
                "Name": "SAFEWAY #02790",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "1303 NW LOVEJOY",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.61
            }
        }, {
            "Id": 261320278,
            "Raw": {
                "LocationID": 261320278,
                "LocationType": "0",
                "Longitude": -122.6808,
                "Latitude": 45.51508,
                "Name": "ONPOINT COMMUNITY CU",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "1212 SW 6TH ONDINE HALL",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.62
            }
        }, {
            "Id": 247802556,
            "Raw": {
                "LocationID": 247802556,
                "LocationType": "0",
                "Longitude": -122.6847,
                "Latitude": 45.51608,
                "Name": "SAFEWAY #02448",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "1030 SW JEFFERSON ST",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.66
            }
        }, {
            "Id": 261309036,
            "Raw": {
                "LocationID": 261309036,
                "LocationType": "0",
                "Longitude": -122.6769,
                "Latitude": 45.51347,
                "Name": "U.S. Bank 2nd & Columbia",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "1340 SOUTHWEST 2ND AVENUE",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.69
            }
        }, {
            "Id": 261316428,
            "Raw": {
                "LocationID": 261316428,
                "LocationType": "0",
                "Longitude": -122.6812,
                "Latitude": 45.51333,
                "Name": "TwinStar Credit Union",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "1515 SW FIFTH AVE #1510",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "Portland",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.74
            }
        }, {
            "Id": 261320247,
            "Raw": {
                "LocationID": 261320247,
                "LocationType": "0",
                "Longitude": -122.6929,
                "Latitude": 45.52253,
                "Name": "U.S. Bank Stadium",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "2000 SOUTHWEST MORRISON STREET",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.81
            }
        }, {
            "Id": 261310361,
            "Raw": {
                "LocationID": 261310361,
                "LocationType": "0",
                "Longitude": -122.6929,
                "Latitude": 45.52253,
                "Name": "U.S. Bank Stadium",
                "Phone": "",
                "Address": {
                    "AddressID": null,
                    "AddressType": 0,
                    "UsageTypes": null,
                    "IsPrimary": false,
                    "LineOne": "2000 SOUTHWEST MORRISON STREET",
                    "LineTwo": null,
                    "LineThree": null,
                    "City": "PORTLAND",
                    "State": "OR",
                    "Zip": null,
                    "Country": null
                },
                "Distance": 0.81
            }
        }]
    ];

    var _sanjayTrx = [
        {
            "Id": null,
            "Amount": 209.50,
            "Time": "0001-01-01T00:00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Pending",
                "TransactionID": "",
                "TransactionDate": "2013-11-09T07:24:00+00:00",
                "PostDate": "2013-11-09T07:24:00+00:00",
                "IsCredit": false,
                "Description": "DEBIT (Pending)",
                "Amount": 209.50,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "SQ *SANJAY CHANDRASEKA",
                "MerchantCity": "Portland",
                "MerchantState": "OR",
                "MerchantCategory": null,
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "97214    ",
                "TransactionReferenceType": "Undefined",
                "TransactionReferenceID": null,
                "TransactionStage": "0"
            }
        }
    ];

    var _kardashianTrx = [
        {
            "Id": null,
            "Amount": 200.00,
            "Time": "2013-11-07T08:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "",
                "TransactionDate": "2013-11-06T08:00:00+00:00",
                "PostDate": "2013-11-07T08:00:00+00:00",
                "IsCredit": false,
                "Description": "Paid to Kim Kardashian (Kardashian@gmail.com)",
                "Amount": 200.00,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Kim Kardashian (Kardashian@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "Money Sent",
                "MerchantCategoryType": "0",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "23468",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 100.0000,
            "Time": "2013-09-30T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-09-30T07:00:00+00:00",
                "PostDate": "2013-09-30T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 100.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Kim Kardashian (Kardashian@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "19819",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 200.0000,
            "Time": "2013-09-27T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-09-26T07:00:00+00:00",
                "PostDate": "2013-09-27T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 200.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Kim Kardashian (Kardashian@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "19331",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 200.0000,
            "Time": "2013-08-28T07:00:00+00:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-27T07:00:00+00:00",
                "PostDate": "2013-08-28T07:00:00+00:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 200.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Kim Kardashian (Kardashian@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "PersonTransfer",
                "TransactionReferenceID": "16964",
                "TransactionStage": "0"
            }
        }, {
            "Id": null,
            "Amount": 51.0000,
            "Time": "2013-08-08T00:00:00-07:00",
            "Raw": {
                "AccountToken": null,
                "Type": "Posted",
                "TransactionID": "000000000000000",
                "TransactionDate": "2013-08-08T00:00:00-07:00",
                "PostDate": "2013-08-08T00:00:00-07:00",
                "IsCredit": false,
                "Description": "Money Transfer Debit",
                "Amount": 51.0000,
                "SourceAccountKey": "0",
                "DestinationAccountKey": "0",
                "TransferStatus": null,
                "DeclineReason": null,
                "TransferType": null,
                "CurrentBalance": 0.0,
                "Merchant": "Paid to Kim Kardashian (Kardashian@gmail.com)",
                "MerchantCity": "",
                "MerchantState": "",
                "MerchantCategory": "P2P Money Sent",
                "MerchantCategoryType": "17",
                "BillCycleID": null,
                "ZipCode": "",
                "TransactionReferenceType": "2",
                "TransactionReferenceID": "14038",
                "TransactionStage": "0"
            }
        }
    ];

    var _userNoMMFData = {
        "FirstName": "Tet",
        "LastName": "Retest",
        "Accounts": [{
            "Id": "mmf2",
            "IsPrimary": false,
            "AvailableBalance": 0,
            "CardAccountStatus": "Pending",
            "CardAccountStatusReason": "Undefined",
            "Raw": null
        }, {
            "Id": "mmf",
            "IsPrimary": true,
            "AvailableBalance": 0,
            "CardAccountStatus": "Active",
            "CardAccountStatusReason": "Activated",
            "Raw": null
        }],
        "SecurityQuestions": null,
        "IsPasswordReset": false,
        "MMFSelected": false,
        "CardImageType": "None",
        "IsFunded": false
    };

    var _eStatements = [
        {
            "StatementId": "183a6471-19eb-42e6-af1d-969fc5a02878",
            "AvailableDate": "0001-01-01T00:00:00-08:00",
            "EndDate": "2013-12-13T23:59:59-08:00",
            "Raw": null
        }, {
            "StatementId": "35d96f16-1dd3-4d07-87ed-62d2e641875f",
            "AvailableDate": "0001-01-01T00:00:00-08:00",
            "EndDate": "2013-11-13T23:59:59-08:00",
            "Raw": null
        }, {
            "StatementId": "6a6a5f1d-a35d-43ce-a30d-6bd37bcee096",
            "AvailableDate": "0001-01-01T00:00:00-08:00",
            "EndDate": "2013-10-13T23:59:59-07:00",
            "Raw": null
        }, {
            "StatementId": "c172b947-556d-4c10-8bde-fc690731c13d",
            "AvailableDate": "0001-01-01T00:00:00-08:00",
            "EndDate": "2013-09-13T23:59:59-07:00",
            "Raw": null
        }, {
            "StatementId": "1d0aa14f-e003-4ffb-9e35-2458da3d46dc",
            "AvailableDate": "0001-01-01T00:00:00-08:00",
            "EndDate": "2013-08-13T23:59:59-07:00",
            "Raw": null
        }, {
            "StatementId": "53847755-c000-4ec8-b094-ce569d42acc9",
            "AvailableDate": "0001-01-01T00:00:00-08:00",
            "EndDate": "2013-07-13T23:59:59-07:00",
            "Raw": null
        }, {
            "StatementId": "ea2c9787-0308-4dd6-9559-2a189364f2be",
            "AvailableDate": "0001-01-01T00:00:00-08:00",
            "EndDate": "2013-06-13T23:59:59-07:00",
            "Raw": null
        }, {
            "StatementId": "ab488982-372a-44b0-8da2-50104f5f6075",
            "AvailableDate": "0001-01-01T00:00:00-08:00",
            "EndDate": "2013-05-13T23:59:59-07:00",
            "Raw": null
        }, {
            "StatementId": "1c8d91b9-ffea-4381-a715-c5e05902e683",
            "AvailableDate": "0001-01-01T00:00:00-08:00",
            "EndDate": "2013-04-13T23:59:59-07:00",
            "Raw": null
        }, {
            "StatementId": "574567f9-a238-4963-8161-441a67a134f4",
            "AvailableDate": "0001-01-01T00:00:00-08:00",
            "EndDate": "2013-03-13T23:59:59-07:00",
            "Raw": null
        }, {
            "StatementId": "e301550d-087a-40c2-9484-b2c49b058944",
            "AvailableDate": "0001-01-01T00:00:00-08:00",
            "EndDate": "2013-02-13T23:59:59-08:00",
            "Raw": null
        }, {
            "StatementId": "e444444d-087a-40c2-9484-b2c49b058944",
            "AvailableDate": "0001-01-01T00:00:00-08:00",
            "EndDate": "2013-01-13T23:59:59-08:00",
            "Raw": null
        }
    ];

    var _payees = [
        { Id: '1', Name: 'Dan Sby',Account: '1234'},
        { Id: '2',Name: 'Alex',Account: '4567'},
        {
            Id: '3',Name: 'Duc',
            Address: { Street: '234 NE Twitter', City: 'Bozeman', State: 'MT', Zip: '12345' } ,
            Account: 'nda_2010',
            Phone: '5553834444',
            CutoffTime: '\/Date(' + getTimeByDiff(moment(), 5, 0, 0, 0) + ')\/',
            EarliestPaymentDate: '\/Date(' + getTimeByDiff(moment(), 5, 10, 0, 0) + ')\/',
            LeadDays: 5
        }
    ];

    var _businessPayees = [
        { Name: 'COMCAST', EnableZip: true, Merchant: 'www'},
        { Name: 'PGE'},
        { Name: 'VERIZON'},
        { Name: '1COMCAST'},
        { Name: '1PGE'},
        { Name: '1VERIZON'} ,
        { Name: '2COMCAST'},
        { Name: '2PGE'},
        { Name: '2VERIZON'} ,
        { Name: '3COMCAST'},
        { Name: '3PGE'},
        { name: '3VERIZON'}
    ];

    var _paperCheckData = {
        orderErrorMsg: null,
        hasOrder: null,
        hasPreAuthorize: true
    };

    // This is a direct mapping from
    // server/com_gobank_MobileWeb/PartnerAPI/Data/RestrictionPoint.cs.
    // We use this to check the mask of the RestrictionPoints field
    // returned with accounts to figure out various account states.
    var _restrictionPoint = {
        NotFunded: 1,
        PartiallyFunded: 2,
        FullyFunded: 4,
        NoCard: 8,
        CardOrderedWithinXDays: 16,
        CrvNeverRemoved: 32,
        CrvRemoved: 64,
        CrvNotRemoved: 128,
        AdrressUpdated: 256,
        CardLostStolen: 512,
        AccountSpendDown: 1024,
        AccountClosed: 2048,
        InitiallyFunded: 4096
    };

    // Registration stuff
    var _registrationStatus = {
        Status: 'Initial',
        LastName: 'Smith',
        FirstName: 'Bob',
        Birthdate: '05051955',
        Email: 'bob@bob.com',
        Phone: '5556667777',
        SessionEmailUrlVerified: false,
        SessionPhoneUrlVerified: false,
        RemainingEmailChanges: 1,
        RemainingPhoneChanges: 1,
        RemainingPhoneVerify: 1,
        RemainingVerifySeconds: 1200
    };

    function _setMockState (LocalStorage, key, value) {
        if ( key ) {
            if ( value ) {
                LocalStorage.set(key, value);
            }
            else {
                LocalStorage.get(key, value);
            }
        }
    }

    function _getMockState (LocalStorage, key) {
        if ( key ) {
            return LocalStorage.get(key);
        }
        return null;
    }

    var _notificationSettings = {
        "NotificationSettings": [
            {
                "NotificationSettingID": "95075",
                "NotificationTypeID": 4,
                "Notification": null,
                "NotificationRuleValue": null,
                "Channels": []
            }, {
                "NotificationSettingID": "95076",
                "NotificationTypeID": 1,
                "Notification": null,
                "NotificationRuleValue": "100",
                "Channels": []
            }, {
                "NotificationSettingID": "95071",
                "NotificationTypeID": 5,
                "Notification": null,
                "NotificationRuleValue": null,
                "Channels": []
            }, {
                "NotificationSettingID": "95074",
                "NotificationTypeID": 3,
                "Notification": null,
                "NotificationRuleValue": "25",
                "Channels": []
            }, {
                "NotificationSettingID": "95073",
                "NotificationTypeID": 2,
                "Notification": null,
                "NotificationRuleValue": "25",
                "Channels": []
            }, {
                "NotificationSettingID": "95072",
                "NotificationTypeID": 6,
                "Notification": null,
                "NotificationRuleValue": "25",
                "Channels": []
            }, {
                "NotificationSettingID": "95078",
                "NotificationTypeID": 8,
                "Notification": null,
                "NotificationRuleValue": "5",
                "Channels": []
            }, {
                "NotificationSettingID": "95077",
                "NotificationTypeID": 7,
                "Notification": null,
                "NotificationRuleValue": "5",
                "Channels": []
            }
        ],
        "Agreements": [
            {
                "AgreementState": "2",
                "AgreementType": "1",
                "AgreementURL": "https://m.gobank.com/app/help/legal/esign"
            }, {
                "AgreementState": "2",
                "AgreementType": "2",
                "AgreementURL": "https://m.gobank.com/app/help/legal/bankprivacy"
            }, {
                "AgreementState": "2",
                "AgreementType": "9",
                "AgreementURL": "https://m.gobank.com/app/help/legal/techprivacy"
            }, {
                "AgreementState": "2",
                "AgreementType": "6",
                "AgreementURL": "https://m.gobank.com/app/help/legal/deposit"
            }, {
                "AgreementState": "1",
                "AgreementType": "26",
                "AgreementURL": null
            }],
        "MobileChannelIsPush": true
    };

    var _securityQuestions = [
        {
            "Question": "What is your mothers middle name?",
            "QuestionID": "1"
        }, {
            "Question": "What model was your first car?",
            "QuestionID": "2"
        }, {
            "Question": "What city were you born in?",
            "QuestionID": "3"
        }, {
            "Question": "What is the name of the street that you grew up on?",
            "QuestionID": "4"
        }, {
            "Question": "What town/city was your mother born in?",
            "QuestionID": "5"
        }, {
            "Question": "What was the name of your first pet?",
            "QuestionID": "6"
        }, {
            "Question": "What was the name of your date to prom?",
            "QuestionID": "7"
        }, {
            "Question": "What town/city was your father born in?",
            "QuestionID": "8"
        }, {
            "Question": "In what city did you meet your spouse or significant other?",
            "QuestionID": "9"
        }, {
            "Question": "What was your nickname in high school?",
            "QuestionID": "10"
        }, {
            "Question": "What was your high school mascot?",
            "QuestionID": "11"
        }, {
            "Question": "What was the street number of the house you grew up in?",
            "QuestionID": "12"
        }, {
            "Question": "What school did you attend for sixth grade?",
            "QuestionID": "13"
        }, {
            "Question": "What is your fathers middle name?",
            "QuestionID": "14"
        }, {
            "Question": "In what city or town was your first job?",
            "QuestionID": "15"
        }, {
            "Question": "What was the name of the first company you worked for?",
            "QuestionID": "16"
        }, {
            "Question": "What was the zip code of the house you grew up in?",
            "QuestionID": "17"
        }, {
            "Question": "What was your first concert?",
            "QuestionID": "18"
        }, {
            "Question": "What does or what did your father do for a living?",
            "QuestionID": "19"
        }, {
            "Question": "What was the first foreign country you visited?",
            "QuestionID": "20"
        }, {
            "Question": "What is the middle name of your oldest child?",
            "QuestionID": "21"
        }
    ];

    var _faqTopics = [
        {
            "Id": "Account",
            "Title": "Account",
            "Questions": [
                {
                    "Id": "2",
                    "Title": "\n            How do I join?\n            ",
                    "Body": "\n            Want to join via your computer? Click <a gd-angularlink=\"/\" href=\"https://www.gobank.com\">here</a> to get started. We’ll ask for (and verify) some personal info, then walk you through the rest of the steps. Want to join using your mobile phone? Download our free app for your iPhone or iPod Touch at the Apple <a href=\"https://itunes.apple.com&#47;us&#47;app&#47;gobank&#47;id535272164\">App Store</a>. Visit <a href=\"https://play.google.com/store/apps/details?id=com.gobank&referrer=utm_source%3DGoBank%2520Web\">Google Play</a> to download the app to your Android device.\n            "
                }, {
                    "Id": "3",
                    "Title": "\n          What info is needed to open an account?\n        ",
                    "Body": "\n          Email address, mobile number, Social Security number, physical address and birthdate. Oh, and a name. <a gd-angularlink=\"/\" href=\"https://www.gobank.com/index\">We’d love to know your name</a>.  We’ll need to verify this info in order to complete your registration.\n        "
                }, {
                    "Id": "4",
                    "Title": "\n          How do I change my password? What if I forgot it?\n        ",
                    "Body": "\n          If you’ve forgotten your password (hey, it happens), visit the GoBank Log In screen <a gd-angularlink=\"/login\" href=\"https://m.gobank.com/login\">on the web</a> and select “Forgot Password.” If you’re on the app, simply tap on the “Forgot login or password?” option, then FORGOT PASSWORD. Next, enter your email address and mobile number OR email address and last four digits of your SSN.<br>\n          If you just want to change your password, log in online and hit the drop down menu on the top right of your screen. Choose settings to be routed to where you can change your password. Change your password on the iPhone app by tapping ACCOUNT, SECURITY SETTINGS, then CHANGE PASSWORD. If you’re an Android user, tap on the settings symbol located on the top right of the screen. Select Account, then SECURITY SETTINGS and PASSWORD.\n            "
                }, {
                    "Id": "5",
                    "Title": "\n          What if I forgot my login info?\n            ",
                    "Body": "\n          Your username and email address are the same thing. If you’ve forgotten the email you registered with, <a gd-angularlink=\"/login\" href=\"https://m.gobank.com/login\">visit the GoBank Log In screen</a> and select “Forgot Email/Username.”\n          If you’re using the app, tap on “Forgot login or password?”, then FORGOT EMAIL. Next, enter your SSN to verify you are who you say you are, and we’ll send a reminder to that email.\n        "
                }, {
                    "Id": "6",
                    "Title": "\n          What is the monthly fee?\n            ",
                    "Body": "\n            We work for tips, so pay what you want for your monthly membership. Anywhere from $0-9. You can change the amount anytime in your Account Settings. Remember that you can always find our full Simple Fees at <a gd-angularlink=\"/noworries\" href=\"https://www.gobank.com/index#simple-fees\" target=\"_blank\">GoBank.com/NoWorries</a>.\n            "
                }, {
                    "Id": "72",
                    "Title": "\n          I’M WONDERING… WHAT SHOULD I PAY FOR MY MONTHLY MEMBERSHIP?\n            ",
                    "Body": "\n            It’s up to you. We want everyone to be able to use GoBank – no matter what you can pay. So, pay us what you think is fair. Things to consider:<br /><br />\n            -The majority of American banks don't offer standalone free checking. (Source: “Bankrate’s 2012 Checking Survey” - Sept. 2012)<br /><br />\n            - In 2012, Americans paid $32 Billion in overdraft penalty fees... GoBank has no overdraft or penalty fees ever. (Source: Moebs Services, an economic research firm -- Mar. 2013)<br /><br />\n            -GoBank has 42,000 free ATMs -- more than twice as many free ATMs as Bank of America or Chase. (According to bankofamerica.com and chase.com -- Mar. 2013)<br /><br />\n            Hope that info helps. We’re always around to chat about this on <a href=\"http://facebook.com/gobankus\">Facebook</a> and <a href=\"http://www.twitter.com/gobank\">Twitter</a>.\n            "
                }, {
                    "Id": "7",
                    "Title": "\n          Do you charge overdraft or penalty fees?\n            ",
                    "Body": "\n          Nope. GoBank doesn’t want to profit from your slip-ups. You’ll never pay an overdraft or penalty fee.\n            "
                }, {
                    "Id": "8",
                    "Title": "\n            What browser should I use to access GoBank.com?\n            ",
                    "Body": "\n            Most desktop browsers work well with GoBank. Firefox works best. Specifically, GoBank is optimized for Firefox 14+, Internet Explorer 9+, Chrome 21+ and Safari 5.1+.\n            "
                }, {
                    "Id": "9",
                    "Title": "\n          How do I dispute a charge?\n            ",
                    "Body": "\n          To dispute a charge, log in and click on the “Dispute a Charge” link located at the top of your transaction list. If you’re on the app, just give us a call at (888) 288-1843.\n            "
                }, {
                    "Id": "10",
                    "Title": "\n          Where can I find my account number?\n            ",
                    "Body": "\n          Log into GoBank.com and look for the words “Account Number” on the top right of your screen. Click those two words and your account number will appear. Want to find it on your app? Log in, tap on DEPOSIT, then select DIRECT DEPOSIT to locate your account number.\n            "
                }, {
                    "Id": "11",
                    "Title": "\n            Is the money I deposit into GoBank FDIC insured? \n            ",
                    "Body": "\n            Yes – your money is FDIC insured. GoBank is a brand of Green Dot Bank, Member FDIC, which also operates under the brands Green Dot Bank and Bonneville Bank. Deposits under any of these trade names are deposits with a single FDIC-insured bank, Green Dot Bank, and are aggregated for deposit insurance coverage. \n            "
                }, {
                    "Id": "12",
                    "Title": "\n          How do I download the free GoBank app?\n            ",
                    "Body": "\n          Visit the <a href=\"https://itunes.apple.com&#47;us&#47;app&#47;gobank&#47;id535272164\">Apple App Store</a> to download the GoBank app to your iPhone. Visit <a href=\"https://play.google.com/store/apps/details?id=com.gobank&referrer=utm_source%3DGoBank%2520Web\">Google Play</a> to download to your Android. \n            "
                }, {
                    "Id": "13",
                    "Title": "\n          How do I contact GoBank Member Care?\n            ",
                    "Body": "\n          Visit <a gd-angularlink=\"/contact\" href=\"/email-support\">GoBank.com/Contact</a> for all of the ways you can reach out to us.\n            "
                }, {
                    "Id": "49",
                    "Title": "\n           How do I view/print my statements?\n            ",
                    "Body": "\n          While GoBank does not snail mail monthly statements, members can easily view or print their monthly statements when accessing the account from the web application or mobile app. Log into GoBank and click on the “View Statements” link located by your transaction list. Select the statement you’d like to view. To get a printable PDF, go to GoBank.com (note: you may need to <a href=\"http://get.adobe.com/reader/\" target=\"_blank\">download Adobe Reader</a> on your computer to do this).\n            "
                }, {
                    "Id": "50",
                    "Title": "\n          What if my email address is already registered?\n            ",
                    "Body": "\n          This can mean two things. Most likely, you’ve already started the sign up process by entering your email address (that’s your username) and creating a password. If you’ve forgotten your password, just choose the Forgot Password option. That’ll take you through the steps and hopefully solve the problem!</br></br>\n          If you’ve never entered your email address anywhere on the site, and are sure you’ve never signed up, contact our GoBank Guides for help at <a gd-angularlink=\"/contact\" href=\"/email-support\">GoBank.com/Contact</a>. If you’re on the app, just give us a call at (888) 288-1843.\n        "
                }, {
                    "Id": "51",
                    "Title": "\n          How do I change my username or email address? \n            ",
                    "Body": "\n          If you want to change your email, log in online and hit the drop down menu on the top right of your screen. Choose settings, and you’ll see a spot to change your email/username. If you’re on the iPhone app, just tap on ACCOUNT and select PERSONAL INFO, then EMAIL. If you’re an Android user, tap on the settings symbol located on the top right of the screen. Select Account, then PERSONAL INFO and EMAIL.\n        "
                }, {
                    "Id": "52",
                    "Title": "\n          What’s the deal with verification codes?\n        ",
                    "Body": "\n          We’ll ask you to enter codes we’ve sent to both your email address and mobile number to ensure you’ve entered this info correctly, and that the info belongs to you!\n        "
                }, {
                    "Id": "53",
                    "Title": "\n          Why do you need my Social Security number?\n        ",
                    "Body": "\n          Federal law requires us to obtain, verify and record info that identifies members before they open an account. This means that you'll need to provide your name, address, birthdate, Social Security number, phone number and other personal info. This also helps us prevent identity theft and fraud.\n        "
                }, {
                    "Id": "54",
                    "Title": "\n          Where do I edit my notifications?\n            ",
                    "Body": "\n          If you’re on the web, log in and click on your name on the top right corner of the screen. Select Settings and click on the Devices &amp; Notifications tab to take you from the Personal Info screen. On the iPhone app, just tap the ACCOUNT tab, then NOTIFICATIONS. If you’re an Android user, tap on the settings symbol located on the top right of the screen. Select Account, then NOTIFICATIONS.\n        "
                }, {
                    "Id": "55",
                    "Title": "\n          Does GoBank offer joint accounts?\n            ",
                    "Body": "\n          We don’t offer joint accounts right now.\n        "
                }, {
                    "Id": "56",
                    "Title": "\n          WHAT IS APPLE’S TOUCH ID?\n            ",
                    "Body": "\n          Some Apple iOS devices contain a fingerprint identity sensor built into the “Home” button. Apple’s Touch ID uses this sensor to allow you to unlock your phone using your fingerprint. We’ve enabled this feature so you have the option to log into your GoBank account using your fingerprint instead of entering your password.\n        "
                }, {
                    "Id": "57",
                    "Title": "\n          HOW DO I USE APPLE’S TOUCH ID WITH MY GOBANK ACCOUNT?\n            ",
                    "Body": "\n          If your device has the Touch ID sensor and you’d like to use this option to log into your GoBank account, you must first turn on Touch ID and Passcode in your device’s settings. The device will walk you through adding your fingerprint, and the next time you log into your GoBank account, you’ll be asked if you'd like to use Apple’s Touch ID. You can turn this option on or off anytime in your security settings in the GoBank app. \n        "
                }, {
                    "Id": "58",
                    "Title": "\n          WHAT DEVICES OFFER APPLE’S TOUCH ID?\n            ",
                    "Body": "\n          • iPhone 5S<br />• iPhone 6<br />• iPhone 6 Plus<br />• iPad Air 2<br />• iPad Mini 3<br />• (And most likely all future iOS devices).<br />\n        "
                }, {
                    "Id": "59",
                    "Title": "\n          WHAT HAPPENS IF I TURN OFF APPLE’S TOUCH ID AND WANT TO TURN IT BACK ON?\n            ",
                    "Body": "\n          Visit Account, then Security Settings in the app to turn Apple’s Touch ID on or off. If you're having problems turning it on, be sure you have Touch ID and Passcode turned on in your device's settings. \n        "
                }, {
                    "Id": "60",
                    "Title": "\n          How do I close my account?\n        ",
                    "Body": "\n          Log into your account and visit your Account Settings, then select Account and Close Account. Before closing your account, please read this important info:\n          <ul class=\"faq-list\">\n            <li>\n              Are you sure? Once you tell us to close your account, we can’t reverse the process.\n            </li>\n            <li>\n              After confirming you’d like to close your account, you should remove any remaining money in your account. There are multiple ways to do this:\n              <ul class=\"faq-list\">\n                <li>\n                  Make purchases with your debit card.\n                </li>\n                <li>\n                  Take cash out at an ATM.\n                </li>\n                <li>\n                  Send money to another person, make a payment or write a check to yourself or anyone else. (Note: You won’t be able to use the Pay and Send features if you haven’t received and activated your personalized GoBank debit card yet.)\n                </li>\n                <li>\n                  Log into your account and request a check. (You should do this if you have more than $5,000 in your account OR if you haven’t received and activated your personalized GoBank debit card yet.)\n                </li>\n              </ul>\n            </li>\n            <li>\n              If you have any funds in your Money Vault, they will be transferred into your available balance.\n            </li>\n            <li>\n              You'll no longer be able to deposit money into your account (including direct deposit, so remember to give new info to your payroll department).\n            </li>\n            <li>\n             You should cancel any scheduled bill payments or payments sent to other people.\n            </li>\n            <li>\n             If you have any automatic payments set up with external billers, make sure you change those.\n            </li>\n            <li>\n             You can still log in to view past transactions and statements.\n            </li>\n            <li>\n             Once you no longer have any money in this account, the account will be closed.\n            </li>\n            <li>\n             Your Monthly Membership Fee will still apply until your account is officially closed.\n            </li>\n            <li>\n             If you decide to open a new account, you’ll need to use a different email address from the one associated with your original GoBank account. Please note you won’t be able to merge your old GoBank account with your new one.\n            </li>\n          </ul>\n        "
                }, {
                    "Id": "62",
                    "Title": "\n          WHAT ARE SOME IMPORTANT REMINDERS AFTER I CLOSE MY ACCOUNT?\n        ",
                    "Body": "\n          Log into your account and visit your Account Settings, then select Account and Close Account. Before closing your account, please read this important info:\n          <ul class=\"faq-list\">\n            <li>\n              Are you sure? Once you tell us to close your account, we can’t reverse the process.\n            </li>\n            <li>\n              After confirming you’d like to close your account, you should remove any remaining money in your account. There are multiple ways to do this:\n              <ul class=\"faq-list\">\n                <li>\n                  Make purchases with your debit card.\n                </li>\n                <li>\n                  Take cash out at an ATM.\n                </li>\n                <li>\n                  Send money to another person, make a payment or write a check to yourself or anyone else. (Note: You won’t be able to use the Pay and Send features if you haven’t received and activated your personalized GoBank debit card yet.)\n                </li>\n                <li>\n                  Log into your account and request a check. (You should do this if you have more than $5,000 in your account OR if you haven’t received and activated your personalized GoBank debit card yet.)\n                </li>\n              </ul>\n            </li>\n            <li>\n              If you have any funds in your Money Vault, they will be transferred into your available balance.\n            </li>\n            <li>\n              You'll no longer be able to deposit money into your account (including direct deposit, so remember to give new info to your payroll department).\n            </li>\n            <li>\n             You should cancel any scheduled bill payments or payments sent to other people.\n            </li>\n            <li>\n             If you have any automatic payments set up with external billers, make sure you change those.\n            </li>\n            <li>\n             You can still log in to view past transactions and statements.\n            </li>\n            <li>\n             Once you no longer have any money in this account, the account will be closed.\n            </li>\n            <li>\n             Your Monthly Membership Fee will still apply until your account is officially closed.\n            </li>\n            <li>\n             If you decide to open a new account, you’ll need to use a different email address from the one associated with your original GoBank account. Please note you won’t be able to merge your old GoBank account with your new one.\n            </li>\n          </ul>\n        "
                }
            ]
        }, {
            "Id": "ATM",
            "Title": "ATM",
            "Questions": [
                {
                    "Id": "47",
                    "Title": "\n          How do I get cash out my account?\n        ",
                    "Body": "\n          Visit one of the more than 40,000 free ATMs in our network to withdraw cash from your account. Our fee for using an ATM outside the network is $2.50. That ATM may charge a fee too, so just be sure to stay inside the network.<br /><br />  \n          You can also get cash back from making a debit purchase and entering your PIN number at participating retailers.\n        "
                }, {
                    "Id": "61",
                    "Title": "\n          How do I set or change my ATM PIN on the app?\n        ",
                    "Body": "\n          If you’re using the iPhone app, tap ACCOUNT, then ACTIVATE CARD. You’ll then be guided to set an ATM PIN. If you’ve already activated your card, tap on ACCOUNT, then SECURITY SETTINGS and SET ATM PIN. Android savvy? Tap on the settings symbol located on the top right of the screen and choose Account. Select SECURITY SETTINGS to set or change your ATM PIN.\n        "
                }, {
                    "Id": "62",
                    "Title": "\n          How do I set or change my ATM PIN on the web?\n        ",
                    "Body": "\n          Activate your GoBank debit card first at <a gd-angularlink=\"/activate\" \"href=\"https://www.gobank.com/account/manage-card#crv-removal\">GoBank.com/Activate</a>.If you’ve already activated your card, log into GoBank.com and select your name at the top right of the screen. Select Settings in the drop down menu, then click on MANAGE CARD. Enter a 4-digit PIN, confirm the PIN, then enter your password.\n        "
                }, {
                    "Id": "48",
                    "Title": "\n          Where can I find a free ATM?\n        ",
                    "Body": "\n          Find a free ATM at <a gd-angularlink=\"/atm\" href=\"https://www.gobank.com/find-atmlocation\">GoBank.com/atm</a>. Or, <a gd-angularlink=\"/downloads\" href=\"https://www.gobank.com/downloads\">download the app</a> to view a map or list of ATMs near you.\n        "
                }, {
                    "Id": "74",
                    "Title": "\n          What's the most cash i can withdraw each day?\n        ",
                    "Body": "\n          You can withdraw up to $500 every 24 hours. \n        "
                }
            ]
        }, {
            "Id": "Budget_and_Fortune_Teller",
            "Title": "Budget & Fortune Teller",
            "Questions": [
                {
                    "Id": "43",
                    "Title": "\n          How do I set up a budget on GoBank?\n            ",
                    "Body": "\n          Create a budget to better understand your expenses and income each month. This interactive tool isn’t tied directly to your account, so it’s up to you to bring it to life. The more you put into it, the more you get out of it. At the end of each month, compare your budget estimates to your transaction history to see if you’ve accurately captured all of your expenses. \n        "
                }, {
                    "Id": "44",
                    "Title": "\n          What are expenses?\n        ",
                    "Body": "\n          When building a budget, enter what you spend money on each month in the Expenses spaces. Examples include rent, cable, utility or electric bill, car insurance, car payment, movie and concert tickets, drinks and dinner with friends, etc. \n        "
                }, {
                    "Id": "45",
                    "Title": "\n          What is income?\n        ",
                    "Body": "\n          When building your budget, enter what you earn each month into the Income spaces. Examples include paycheck, babysitting money, Saturday lawn mowing money, tips received on weekend jobs, etc. \n        "
                }, {
                    "Id": "46",
                    "Title": "\n          How do I set up Budget Reminders?\n        ",
                    "Body": "\n          Once you have your budget set, you can decide how you want to be alerted about upcoming expenses and income. If you're using the app, visit your Account Settings, and tap on Notifications. On GoBank.com, you can set up alerts in the Budget section, or in your Account Settings.\n        "
                }, {
                    "Id": "63",
                    "Title": "\n          How does the Fortune Teller work?\n        ",
                    "Body": "\n          The mystical powers will give you answers based on the budget you create. Help us help you by including all your expenses and income when building a budget. \n        "
                }, {
                    "Id": "64",
                    "Title": "\n          Why does my Fortune Teller prediction seem off?\n        ",
                    "Body": "\n          If your fortune doesn't seem right, you may need to build out your budget. We look at your account balance and your very own GoBank budget to come up with your fortune.  \n        "
                }, {
                    "Id": "65",
                    "Title": "\n          What can I do to improve my fortune teller prediction?\n        ",
                    "Body": "\n          1) Fill out your GoBank budget with all expenses or income you can think of. <br />2) Use GoBank as your primary checking account, so your GoBank account balance is a good representation of how much money you have available to spend.\n        "
                }
            ]
        }, {
            "Id": "Money_Vault",
            "Title": "Money Vault",
            "Questions": [
                {
                    "Id": "41",
                    "Title": "\n          What is the Money Vault?\n        ",
                    "Body": "\n          Save some money by stashing cash in your Money Vault. You can move the money back into your main GoBank account any time you like.\n        "
                }, {
                    "Id": "42",
                    "Title": "\n          How do I transfer money in and out of the Money Vault?\n        ",
                    "Body": "\n          It’s easy. Move money in and out whenever you need it at no charge. Select Money Vault from the Home screen, then enter the amount you’d like to move out or in. \n        "
                }
            ]
        }, {
            "Id": "Deposit",
            "Title": "Deposit",
            "Questions": [
                {
                    "Id": "20",
                    "Title": "\n          HOW DO I REGULARLY DEPOSIT MONEY INTO MY GOBANK ACCOUNT?\n            ",
                    "Body": "\n          There are multiple ways to deposit money into your account.\n          <br><br>\n          <ul class=\"faq-list\">\n            <li>\n              Direct Deposit – This is the best way to deposit money and to become a full-time GoBanker. You can deposit some or all of your paycheck each month, and you won't have to deal with a paper check. <a href=\"/app/help/directdeposit\" ng-click=\"redirect('/faq?Category=Direct_Deposit', $event)\">Click here</a> for more about Direct Deposit.\n            </li>\n            <li>\n              Deposit a Check - Using mobile deposit, you can deposit personal checks and checks from businesses or the government.  <a href=\"/app/help/mobiledeposit\" ng-click=\"redirect('/faq?Category=Mobile_Deposit#q91', $event)\">Click here</a> for more about depositing checks.\n            </li>\n            <li>\n              Deposit Cash at Retail Locations - You can deposit cash at any Walmart register for free (not available in VT), or visit a 7-11, Rite Aid, CVS, Walgreens or other participating store to deposit your cash for a fee up to $4.95. Just take your cash and your debit card to the store of your choice and swipe your card or hand it to the cashier at the register, and the cash will be deposited into your account automatically. See full list of deposit locations below.\n              <ul class=\"sub-list\">\n                <li> The maximum you can deposit in cash in one day is $2,500, and the max you can deposit per 30 days is $3,000.</li>\n                <li> See chart below for minimum and maximum deposit amounts per transaction at specific cash deposit locations.</li>\n              </ul>\n              <br>\n            <table id=\"cashDepositRetailList\">\n              <tr><th class=\"titleRow\">Location</th><th class=\"titleRow rightAligned\">Minimum</th><th class=\"titleRow rightAligned\">Maximum</th><th class=\"titleRow lastColumn\"></th></tr>\n              <tr><td>Walmart</td><td class=\"rightAligned\">$20</td><td class=\"rightAligned\">$1,100</td><td class=\"lastColumn\"></td></tr>\n              <tr><td>Walgreens</td><td class=\"rightAligned\">$20</td><td class=\"rightAligned\">$500</td><td class=\"lastColumn\"></td></tr>\n              <tr><td>Rite Aid</td><td class=\"rightAligned\">$20</td><td class=\"rightAligned\">$500</td><td class=\"lastColumn\"></td></tr>\n              <tr><td>Ralphs</td><td class=\"rightAligned\">$20</td><td class=\"rightAligned\">$500</td><td class=\"lastColumn\"></td></tr>\n              <tr><td>Pilot</td><td class=\"rightAligned\">$20</td><td class=\"rightAligned\">$500</td><td class=\"lastColumn\"></td></tr>\n              <tr><td>Love’s</td><td class=\"rightAligned\">$20</td><td class=\"rightAligned\">$500</td><td class=\"lastColumn\"></td></tr>\n              <tr><td>Kroger</td><td class=\"rightAligned\">$20</td><td class=\"rightAligned\">$500</td><td class=\"lastColumn\"></td></tr>\n              <tr><td>Kmart</td><td class=\"rightAligned\">$20</td><td class=\"rightAligned\">$500</td><td class=\"lastColumn\"></td></tr>\n              <tr><td>HEB</td><td class=\"rightAligned\">$20</td><td class=\"rightAligned\">$500</td><td class=\"lastColumn\"></td></tr>\n              <tr><td>Family Dollar</td><td class=\"rightAligned\">$20</td><td class=\"rightAligned\">$500</td><td class=\"lastColumn\"></td></tr>\n              <tr><td>Dollar General</td><td class=\"rightAligned\">$20</td><td class=\"rightAligned\">$500</td><td class=\"lastColumn\"></td></tr>\n              <tr><td>CVS</td><td class=\"rightAligned\">$20</td><td class=\"rightAligned\">$500</td><td class=\"lastColumn\"></td></tr>\n              <tr><td>Coinstar kiosks</td><td class=\"rightAligned\">$20</td><td class=\"rightAligned\">$500</td><td class=\"lastColumn\"></td></tr>\n              <tr><td>Circle K</td><td class=\"rightAligned\">$20</td><td class=\"rightAligned\">$500</td><td class=\"lastColumn\"></td></tr>\n              <tr><td>Ace Cash Express</td><td class=\"rightAligned\">$10</td><td class=\"rightAligned\">$2,500</td><td class=\"lastColumn\"></td></tr>\n              <tr><td>7-Eleven</td><td class=\"rightAligned\">$20</td><td class=\"rightAligned\">$500</td><td class=\"lastColumn\"></td></tr>\n            </table>\n            </li>\n            <br>\n          </ul>\n\n        "
                }, {
                    "Id": "59",
                    "Title": "\n          WHAT ARE MY OPTIONS FOR MAKING AN INITIAL DEPOSIT?\n        ",
                    "Body": "\n          There are a multiple ways to make your first deposit into GoBank.<br /><br />\n          <strong>Debit Deposit</strong> – For your initial deposit with GoBank, you can use a debit card (MasterCard or Visa) from another U.S. bank account. Note: This can only be done once. Enter your debit card number in the spaces, hit \"Submit\" and you’ll soon see the funds move from one account to the other. (On your other bank’s statement, it’ll look just like an online purchase.) If you’re using the app, tap the debit card option and it’ll walk you through the rest.<br /><br />\n          <strong>Deposit a Check</strong> – Using mobile deposit, you can deposit personal checks and checks from businesses or the government. <a  gd-angularlink=\"/faq?Category=Mobile_Deposit\" class=\"mobiledeposit\" questionid=\"22\" href=\"javascript:void(0)\">Click here for more about depositing checks</a>.<br /><br />\n          <strong>MoneyPak</strong> – Pick up a MoneyPak at a local retailer and add cash to it at the register. FYI, retailers charge up to $4.95 for this, but GoBank will automatically refund this to your account. Also, MoneyPak can only be used for your first deposit. Select the MoneyPak option online or on the app, and enter the number listed on the back of the card. Click <a href=\"https://www.moneypak.com/StoreLocator.aspx\" target=\"blank\">here</a> to find a MoneyPak location.<br /></br />\n          <strong>Transfer Money from Another Bank (ACH)</strong> – This process varies from bank to bank, but typically, here’s what the process looks like:<br /><br />\n          <ol class=\"deposit-list\">\n            <li>Go to your bank's website</li>\n            <li>Find the \"transfer money to another bank\" option</li>\n            <li>Enter your GoBank account info (you can find this in your GoBank Account Settings)</li>\n          </ol>\n          Each bank will have different requirements for verification and timing for making the transfer. Your bank may also charge a fee. SPECIAL NOTE: If your other bank doesn’t accept your GoBank routing number, please send us an email at <a href=\"mailto:help@gobank.com\">help@gobank.com</a>, and we’ll get in touch with that bank.<br /><br />\n          <strong>Direct Deposit</strong> – This is the best way to deposit money and to become a full-time GoBanker. You can deposit some or all of your paycheck each month, and you won’t have to deal with a paper check. <a  gd-angularlink=\"/faq?Category=Direct_Deposit\"  class=\"qid\" questionid=\"28\" href=\"http://www.gobank.com/mobile-faq?qid=28\">Click here for more about Direct Deposit</a>.\n        "
                }
            ]
        }, {
            "Id": "Direct_Deposit",
            "Title": "Direct Deposit",
            "Questions": [
                {
                    "Id": "28",
                    "Title": "\n          How do I sign up for Direct Deposit?\n        ",
                    "Body": "\n          Visit <a gd-angularlink=\"/DirectDeposit\" href=\"https://www.gobank.com/directdeposit\">GoBank.com/DirectDeposit</a> to sign up to get your pay faster than a paper check. If you’re on the app, just tap on DEPOSIT, then SEE DETAILS under SET UP DIRECT DEPOSIT. Need some help with this? Visit <a gd-angularliunk-\"/contact\" href=\"/email-support\">GoBank.com/Contact</a> on how to reach out, or just give us a call at (888) 288-1843.\n        "
                }, {
                    "Id": "88",
                    "Title": "\n          WHAT IS EARLY PAYROLL DIRECT DEPOSIT?\n        ",
                    "Body": "\n          Sign up for Direct Deposit, and you could get your pay up to 2 days earlier if your employer notifies us of a deposit.<br /> <br/> \n          <b>HOW IT WORKS:</b><br />\n          <b>YOUR EMPLOYER GIVES ADVANCE-NOTICE OF YOUR PAYCHECK AMOUNT</b><br />\n          Many employers notify the bank of PAYROLL direct deposits 1 to 2 days before the “official” payday.<br /> <br/>\n\n          <b>WE DEPOSIT YOUR PAY:</b><br />\n          If we receive early notice, we’ll deposit your pay into your account early.<br /><br/>\n          \n          <b>SO YOU GET PAID EARLY:</b><br />\n          Compared with traditional banking policies, this gives you faster access to your funds.<br /><br/>\n          \n\t        <b>CHECK WITH YOUR EMPLOYER:</b><br />\n          Ask “Do you notify the bank prior to depositing my pay?” Note: they may not be consistent in the timing of their notices, so if you get it once, it’s not a guarantee you’ll always get it early.\n        "
                }
            ]
        }, {
            "Id": "GoBank_Debit_Card",
            "Title": "GoBank Debit Card",
            "Questions": [
                {
                    "Id": "14",
                    "Title": "\n          How much does a GoBank debit card cost?\n        ",
                    "Body": "\n          Our standard card is free (and pretty slick, if ya ask us). Want to design your own card? For $9, you can create a custom card by uploading a photo from your computer, mobile or Facebook. \n        "
                }, {
                    "Id": "15",
                    "Title": "\n           What are restrictions on custom cards? Any rules?\n        ",
                    "Body": "\n           Here’s the quick scoop: There are rules we have to follow when we print any image on any debit card. PLEASE READ the full terms and conditions below to help you choose the best picture for your card.<br/><br/>\n           TERMS AND CONDITIONS<br/><br/>\n           1. It’s Important to Follow Our Guidelines:<br/>\n           GoBank has the sole discretion to accept or reject any image. Examples of unacceptable and/or prohibited images are listed below in our Photo No-Nos.<br/><br/>\n           2. Get Your Card ASAP:<br/>\n           If your image isn’t approved, we’ll refund the custom card fee and send you our free standard card so you can get a debit card as quickly as possible. You’ll be able to try again once you activate the standard card. If you used a promo code for a free custom card, you’ll still be able to use that code within a certain timeframe. You’ll receive an email with more details if this happens.<br/><br/>\n           3. Your Image Needs to be YOURS:<br/>\n           When you submit your image, you’re certifying that (1) you are either the owner of the image (i.e. the photo was taken by you) or you’ve obtained consent from the owner to use it; and (2) you have consent from any person that appears in the image.<br/><br/>\n           4. Your Image is Your Responsibility:<br/>\n           You release GoBank completely, from any risk of loss, damages, liability or costs should any be incurred directly or indirectly by the use of the image. You accept all liability for the use of the image you submit. The image will be printed on your customized card as it is provided to us by you. We’re not liable for poor quality images if it reflects the quality of your uploaded original image.<br/><br/>\n           5. Custom Cards Cost $9:<br/>\n           You acknowledge that you know there is a $9.00 fee for any customized card (including replacements), which will be charged to your account at the time of order.<br/><br/>\n           PHOTO NO-NOs (Our Image Guidelines)<br/><br/>\n           Please keep in mind that images containing any of the following will be rejected<br/><br/>\n           Trademark Law, Intellectual Property Law & Privacy Restrictions<br/>\n              •\tTrademarks, copyrighted materials, advertising or branding (Okay: A pic you took of your car. N’okay: Image you have taken from the car maker’s website)<br/>\n              •\tMasterCard" + String.fromCharCode(174) + ", Visa" + String.fromCharCode(174) + ", or any other payment brand references<br/>\n              •\tAny reference to the Olympic Games<br/>\n              •\tImages of celebrities, athletes, musicians or public figures (we can’t assume you have permission to use it, BUT pics of you WITH your favorite celebs are A-okay)<br/>\n              •\tTelephone numbers and email addresses<br/><br/>\n           Offensive & Illegal material<br/>\n              •\tProvocative or sexual content—including nude or semi-nude photos of people of any age<br/>\n              •\tClearly illegal activity (e.g., underage drinking, drug use or paraphernalia)<br/>\n              •\tViolent (including any bloody images) or racist (including symbols, text or activities), or religiously/politically offensive imagery<br/>\n              •\tFirearms, excluding featured uniformed military or police officials<br/>\n              •\tObscene behavior or gestures/hand signals considered offensive<br/><br/>\n        "
                }, {
                    "Id": "16",
                    "Title": "\n          How much does it cost to replace a custom card?\n        ",
                    "Body": "\n          It costs $9 to replace your custom card. You have the option to choose the free standard design instead.\n        "
                }, {
                    "Id": "17",
                    "Title": "\n          How long will it take to receive my GoBank debit card?\n        ",
                    "Body": "\n            You’ll receive your GoBank debit card within 2 weeks after you make your initial $50 deposit. \n            "
                }, {
                    "Id": "86",
                    "Title": "\n          I ORDERED A CUSTOM CARD. WHY DID I RECEIVE A STANDARD CARD?\n        ",
                    "Body": "\n          If any of the following situations happen, you’ll receive an email with more details. If you don’t see anything, please be sure to check your spam.\n              <br />\n                    <div><span style=\"font-size:18px;padding-right:10px;\">•</span>\tYou don’t have enough money to qualify for the custom card.</div>\n                        <div style=\"padding-left:20px\"><span style=\"font-size:10px;padding-right:10px;\">o</span>\tIf you don’t have enough money to cover the custom card fee, we’ll automatically send you a standard card. You can upgrade to a custom card later after you receive and activate the standard card. <br/></div>\n                    <div><span style=\"font-size:18px;padding-right:10px;\">•</span>\tYou used the mobile deposit feature to make your initial deposit, but the check has been placed on hold.<br/></div>\n                       <div style=\"padding-left:20px\"><span style=\"font-size:10px;padding-right:10px;\">o</span>\t    In order to get you a debit card more quickly, we’ll send you our free standard card. You can upgrade to a custom card later after you receive and activate the standard card. Just be sure your account has enough money to cover the custom card fee. <br/></div>\n                    <div><span style=\"font-size:18px;padding-right:10px;\">•</span>\tThe image you submitted for your custom card was not approved.<br/></div>\n                        <div style=\"padding-left:20px\"><span style=\"font-size:10px;padding-right:10px;\">o</span>\tIf your image isn’t approved, we’ll refund the custom card fee and send you our free standard card. You’ll be able to try again once you receive and activate the standard card. Just be sure you review our <a gd-angularlink=\"/image-restrictions\" href=\"https://www.gobank.com/image-restrictions\">Image Restrictions</a> before uploading another picture. If you used a promo code for a free custom card, you’ll still be able to get a free custom card within a certain timeframe.<br/></div>\n              "
                }, {
                    "Id": "18",
                    "Title": "\n          How do I activate my debit card?\n        ",
                    "Body": "\n          Activate your card at <a gd-angularlink=\"/activate\" href=\"https://www.gobank.com/account/manage-card#crv-removal\">GoBank.com/Activate</a>. or on the mobile app by tapping ACCOUNT. We’ll walk you through the steps. If you’re using the iPhone app, just tap ACCOUNT and we’ll walk you through the steps. On an Android? Tap on the settings symbol located on the top right of the screen, then select Account.\n        "
                }, {
                    "Id": "19",
                    "Title": "\n           How do I report my debit card lost, stolen, damaged or not received?\n            ",
                    "Body": "\n          The fastest way to report your card lost, stolen or damaged is to visit <a gd-angularlink=\"/reportcard\" href=\"https://www.gobank.com/account/manage-card#report-card-lost-stolen\">GoBank.com/reportcard</a>. We’ll walk you through the quick steps. If you haven’t received your card and it’s been much longer than 2 weeks, you can take care of that at <a gd-angularlink=\"/cardnotreceived\" href=\"https://www.gobank.com/account/manage-card#report-card-not-received\">GoBank.com/cardnotreceived</a>.<br/><br/>\n          Want to do these things on the iPhone app? Just tap on ACCOUNT, then REPORT CARD LOST/STOLEN. If you haven’t received your card, tap on ACCOUNT, then DUDE, WHERE’S MY CARD? If you’re an Android user, tap on the settings symbol located on the top right of the screen. Select Account, then REPORT CARD LOST/STOLEN. If you haven’t received your card, tap on DUDE, WHERE’S MY CARD?<br /><br />\n          If you’re not near a computer or your mobile phone, you can give us a call at (888) 288-1843.\n        "
                }
            ]
        }, {
            "Id": "Mobile_Deposit",
            "Title": "Mobile Deposit",
            "Questions": [
                {
                    "Id": "22",
                    "Title": "\n           WHAT IS MOBILE DEPOSIT AND HOW DOES IT WORK?\n            ",
                    "Body": "\n           Mobile Deposit allows you to deposit checks using your iPhone or Android smartphone. If you haven’t already, download the free app first. Tap on DEPOSIT, then select DEPOSIT A CHECK. Enter the amount, verify the details and endorse the back by signing your full name clearly in black or blue ink. Then snap photos of the front and back and hit the Deposit button. \n            "
                }, {
                    "Id": "24",
                    "Title": "\n           WHAT ARE THE TYPES OF CHECKS THAT CAN BE DEPOSITED USING MOBILE DEPOSIT? \n            ",
                    "Body": "          \n          • personal checks<br/>\n          • checks issued by a business to you<br/> \n          • federal, state and municipal government checks<br/>\n          • tax refund checks<br/> \n          • payroll checks<br/>\n          • insurance agency checks<br/>\n          • cashier’s checks<br/>\n          • money orders<br/>\n          • rebate checks<br/>\n          • stock dividend checks<br/>\n          • American Express Travelers Cheques in U.S. dollars<br/>\n            "
                }, {
                    "Id": "57",
                    "Title": "\n           WHAT ARE THE TYPES OF CHECKS THAT CANNOT BE DEPOSITED USING MOBILE DEPOSIT?\n            ",
                    "Body": "\n          • Checks not payable to you (even if endorsed over to you)<br/>\n          • Checks payable to “Cash” or “Self”<br/> \n          • Checks payable in a foreign currency<br/>\n          • Checks drawn on a bank outside U.S. or Canada<br/>\n          • Checks that are not dated, are postdated, or are more than 90 days old<br/>\n          • Demand drafts or remotely created checks (i.e., checks lacking the original signature of the person authorizing the check)<br/>\n          • Substitute checks (i.e., paper checks created from an electronic image)<br/>\n          • Checks that are irregular in any way (for example, where the numerical and written amounts are different)<br/>\n          • Checks that have previously been cashed or deposited (either in paper form or electronically) or submitted for collection and returned unpaid for any reason<br/>\n          • Checks drawn by an OFAC-restricted person, country or entity<br/>\n          • Registered government warrants<br/>\n          • Checks you know, suspect or should suspect may be fraudulent, forged, altered or not properly authorized<br/>\n          • Checks that do not bear the original signature of the person on whose account the check is drawn<br/>\n          • Checks that exceed the deposit limits that we establish for the service<br/>\n            "
                }, {
                    "Id": "26",
                    "Title": "\n           AFTER I DEPOSIT A CHECK, HOW SOON WILL MY MONEY BE AVAILABLE?\n            ",
                    "Body": "\n           Most government and business checks under $5,000 will be available next business day, but it could take 10 business days. All business checks over $5,000 and all personal checks will take 10 business days.<br/><br/>\n           We’ll send you an email if a check you’ve deposited requires a hold. This email will include instructions on how to cancel the transaction if you’d rather deposit the check elsewhere. You’ll have 24 hours after receiving the email to hit cancel, or we’ll keep processing your check and the hold will stay in effect. (To cancel the transaction, you would just need to log in and select the transaction in your transaction history, then hit “cancel”.)<br/><br/>\n           Note: If we confirm receipt of your deposit information on a business day before 4:00 p.m. PST, we will consider that day to be the day of your deposit; otherwise, your check will be considered deposited as of the next business day. \n        "
                }, {
                    "Id": "58",
                    "Title": "\n           WHAT CHECK AMOUNTS CAN I DEPOSIT THROUGH MOBILE DEPOSIT? \n        ",
                    "Body": "\n          There is no minimum, but there is a maximum. Checks will not be accepted if the amount will send you over the max account limit of $50,000. Other limits include:<br/>\n          • Personal checks up to $2000. All personal checks will take 10 business days to post.<br/>\n          • Government checks up to $5,000.<br />\n          • Commercial checks (including Payroll, Business, Cashier, Travelers, Money Orders Certified and Insurance) in the amount of $5,000 or less should post the next business day (sometimes sooner.)<br />\n          • Commercial checks (including Payroll, Business, Cashier, Travelers, Money Orders Certified and Insurance) over $5,000 will take 10 business days to post.\n        "
                }, {
                    "Id": "25",
                    "Title": "\n           HOW SHOULD I ENDORSE MY CHECK BEFORE USING MOBILE DEPOSIT? \n        ",
                    "Body": "\n           It’s important that you sign your full name on the back of the check clearly and in blue or black ink. If you don’t, your check could be rejected. \n        "
                }, {
                    "Id": "23",
                    "Title": "\n          WHAT ARE SOME TIPS FOR SNAPPING A GOOD MOBILE DEPOSIT PIC?\n        ",
                    "Body": "\n          Here are some tips to make sure your check is camera-ready:<br/>\n          1. Take the photo with good lighting and place the check on a dark-colored surface.<br/>\n          2. Focus the image and hold your phone steady.<br/>\n          3. Make sure all 4 corners of the check are in the camera view, and be sure the check is straight.<br/>\n          4. Endorse the back of the check with your full name clearly in black or blue ink.<br/>\n        "
                }, {
                    "Id": "60",
                    "Title": "\n          HOW LONG SHOULD I HANG ONTO MY CHECK BEFORE SHREDDING IT?\n        ",
                    "Body": "\n          After depositing, keep your check somewhere safe for 20 days before destroying it.\n        "
                }, {
                    "Id": "27",
                    "Title": "\n           HOW DO I CHECK THE STATUS OF MY MOBILE DEPOSIT?\n        ",
                    "Body": "\n          Log into GoBank.com to view your transactions. If you’re on the app, log in and tap VIEW ALL TRANSACTIONS to view any pending or cleared transactions. We’ll also notify you when the money from your check is available in your account. \n        "
                }, {
                    "Id": "73",
                    "Title": "\n          CAN I CANCEL A PENDING MOBILE DEPOSIT?\n        ",
                    "Body": "\n          The only way you can cancel a pending mobile deposit is if you’ve received an email alerting you that the check requires a hold. This email will include instructions on how to cancel the transaction if you’d rather deposit the check elsewhere. You’ll have 24 hours after receiving the email to hit cancel, or we’ll keep processing your check and the hold will stay in effect. (To cancel the transaction, you would just need to log in and select the transaction in your transaction history, then hit “cancel”.)\n        "
                }
            ]
        }, {
            "Id": "Pay_a_Bill",
            "Title": "Pay a Bill",
            "Questions": [
                {
                    "Id": "35",
                    "Title": "\n           How do I pay a bill online?\n        ",
                    "Body": "\n          Log into GoBank.com and hit the Pay tab at the top of the screen to send a check or electronic funds to a business or person (the payee). Enter the payee’s name, address and phone number, along with the amount you’d like to send and date you’d like the payment to be received by. Make sure you have enough money in your account to cover the amount, verify the details and hit Confirm.  \n        "
                }, {
                    "Id": "36",
                    "Title": "\n          How do I pay a bill using the app?\n        ",
                    "Body": "\n          Log into GoBank and select PAY. Tap on PAY BILLS, then select a payee or add a new one. Enter the business or person’s name, along with the payee’s address and phone number and amount you’d like to pay. Choose a delivery date, add a memo if you wish, then verify the details and hit MAKE PAYMENT.  \n        "
                }, {
                    "Id": "37",
                    "Title": "\n          How do I edit or cancel a bill payment?\n        ",
                    "Body": "\n          As long as the transaction is still pending, you can cancel the payment. Log into GoBank, and select Pay. Select the transaction you’d like to change in the list of scheduled payments, then hit edit or cancel. \n          If you’re using the app, select PAY, then RECENT HISTORY. Select from that list which one you’d like to edit or cancel.\n        "
                }, {
                    "Id": "38",
                    "Title": "\n           How long will it take for a payment to be delivered?\n        ",
                    "Body": "\n          You can send a check to a person or a business if you add them manually. If you choose to send a check, the payment will be delivered in approximately 5 business days. If you choose to send the money electronically, it will take approximately 2-3 business days. The cut off time is 1pm ET.\n        "
                }, {
                    "Id": "39",
                    "Title": "\n          How do I know my bill was paid?\n        ",
                    "Body": "\n          You will receive a success message when your payment has been successfully sent. Make sure there’s enough money in your account to cover the amount. If you don’t have enough money in your account, we’ll let you know. You can track your pending and posted transactions via the app or GoBank.com.    \n        "
                }, {
                    "Id": "40",
                    "Title": "\n          Can I set up recurring payments?\n        ",
                    "Body": "\n          Of course! When you’re submitting a payment at GoBank.com, just click the “Make this a recurring payment” box and indicate how often the payment should repeat. If you’re using the app, select how often you would like the payment to be repeated—never, every week, bi-weekly or every month. Make sure there’s enough money in your account to cover the amount. We’ll send you a message to let you know when the payment is successfully made or if there wasn’t enough money in your account to cover it.  \n        "
                }, {
                    "Id": "85",
                    "Title": "\n          How do I send a check to someone?\n        ",
                    "Body": "\n          You can send a paper check to a person or a business if you add them manually. Log in, and select PAY. Then add the payee manually. Be sure to enter their address correctly, and we'll mail the check out for you for free. If you'd like to hand over the check to the person or company yourself, add the payee's name, but enter your mailing address.\n        "
                }
            ]
        }, {
            "Id": "Send_Money",
            "Title": "Send Money",
            "Questions": [
                {
                    "Id": "29",
                    "Title": "\n          How do I send money to a person? \n            ",
                    "Body": "\n          You can send money to a person via email or mobile number. Log in to GoBank.com, then click on the SEND tab. If you’re using the app, simply tap PAY, then SEND MONEY. \n            "
                }, {
                    "Id": "30",
                    "Title": "\n           How does that person pick up the money?\n            ",
                    "Body": "\n          The recipient will get an email or text message with instructions for claiming their money. If the recipient is a GoBanker, they’ll receive the funds automatically. If the recipient isn’t a GoBanker, they have the option to either open a GoBank account to retrieve the money or transfer the money to their PayPal account.\n\n        "
                }, {
                    "Id": "31",
                    "Title": "\n          When I send money to a person through GoBank, how long do they have to pick up the money? \n        ",
                    "Body": "\n          They’ll have 10 days to pick up the money. If they decide to pick up the money with PayPal, they’ll have 30 days to complete the transfer with PayPal. If they don’t pick up the money in time, we’ll give you a heads up and put the money back into your account.\n        "
                }, {
                    "Id": "34",
                    "Title": "\n          How do I edit or cancel money I’ve sent someone? \n            ",
                    "Body": "\n          If you’re sending money to another GoBanker, the money will be transferred instantly and can't be canceled. If the person you sent money to is not a GoBanker, you can edit or cancel as long as they haven’t picked up the money yet. Log into GoBank.com and select Send. Select from the list of recent transactions, then hit edit or cancel. If you’re using the app, select PAY, then RECENT HISTORY. Select from that list which one you’d like to edit or cancel.\n        "
                }, {
                    "Id": "84",
                    "Title": "\n          WHY CAN’T I ACCESS THE SEND FEATURE? \n        ",
                    "Body": "\n          For security reasons, you can’t use the Send feature until receiving and activating your GoBank debit card. Also, if you’ve reported your card lost/stolen, you’ll need to wait up to 3 days before using the Send feature.\n        "
                }, {
                    "Id": "87",
                    "Title": "\n          How do I send a check to someone?\n        ",
                    "Body": "\n          You can send a paper check to a person or a business if you add them manually. Log in, and select PAY. Then add the payee manually. Be sure to enter their address correctly, and we'll mail the check out for you for free. If you'd like to hand over the check to the person or company yourself, add the payee's name, but enter your mailing address.\n        "
                }
            ]
        }, {
            "Id": "Paper_Checks",
            "Title": "Paper Checks",
            "Questions": [
                {
                    "Id": "100",
                    "Title": "\n          Need a pack of paper checks? \n        ",
                    "Body": " \n                   Need to write paper checks once in a while? No problem! You can get your own pack of paper checks in addition to our free digital checkbook.<br />Here’s how it works, after you order a pack of checks from GoBank:<br /><br />• Pre-authorize the check on the app or GoBank.com before filling it out.<br />• GoBank will deduct the amount from your checking account when you pre-authorize the check.<br />           • Sign the check & give it to the recipient. They’ll cash or deposit it just like any other check."
                }, {
                    "Id": "101",
                    "Title": "\n          How do I order or re-order checks? \n        ",
                    "Body": " \n         Visit the Pay section of the app or GoBank.com. Select Paper Checks, make sure your address is correct (you can update it in account settings), then submit your order! A pack costs $5.95 (12 checks included)."
                }, {
                    "Id": "102",
                    "Title": "\n          How much does it cost to order or re-order checks? \n        ",
                    "Body": " \n         A pack of 12 checks costs $5.95. (Free shipping!) Psst… You can always use GoBank’s digital checkbook on the app or online for free. It’s similar to writing a paper check, except we send it for you in approximately 5 business days."
                }, {
                    "Id": "103",
                    "Title": "\n          How long does it take to receive checks after I order them?\n        ",
                    "Body": " \n         Please allow 2 weeks to receive your checks."
                }, {
                    "Id": "104",
                    "Title": "\n          What should I do before filling out a check?\n        ",
                    "Body": " \n         You must pre-authorize your check before filling it out. If you don’t, it won’t go through. When you pre-authorize a check, the money is deducted from your account right away. No need to worry about bounced checks or overdraft fees!"
                }, {
                    "Id": "105",
                    "Title": "\n          What happens if I don't pre-authorize a check?\n        ",
                    "Body": " \n         You must pre-authorize your check before filling it out. If you don’t, it won’t go through."
                }, {
                    "Id": "106",
                    "Title": "\n          How do I pre-authorize a check?\n        ",
                    "Body": " \n         Visit the Pay section of the app or GoBank.com. Select Pre-Authorize a Check, then enter the check number and amount. You can include a memo if you like! A couple important notes:<br /><br />• Make sure the amount you pre-authorize the check for matches what you actually write on the check.<br />• Once you pre-authorize a check, even if you stop the payment or it expires, you won't be able to use that check again."
                }, {
                    "Id": "107",
                    "Title": "\n          How do I stop payment for a check I've already pre-authorized?\n        ",
                    "Body": " \n         To stop payment on a check you’ve pre-authorized, visit the Pay section of the app or GoBank.com. Select Stop Payment, then enter the info of the check you’d like to cancel. Hit Confirm to cancel the check. The money that was deducted from your account for pre-authorization will be credited back to your account <strong>by the next business day.</strong>"
                }, {
                    "Id": "108",
                    "Title": "\n          What should I think about before stopping payment on a check?\n        ",
                    "Body": " \n         Be sure to let the recipient know that you’ve stopped payment on the check. Heads up: Some companies may charge you a fee for this."
                }, {
                    "Id": "109",
                    "Title": "\n          Any other important info I should know about GoBank paper checks?\n        ",
                    "Body": " \n         Some important reminders:<br /><br />• Make sure your address is correct before ordering checks. You can update it in your account settings. If you recently opened your account within the past 30 days, please wait before updating your address.<br />• You must pre-authorize a check on the app or online before filling it out. If you don’t, it won’t go through!<br />• Be sure the amount you pre-authorize the check for matches what you write on the check.<br />• The total amount of checks you can pre-authorize in 24 hours is $5,000.<br />• If you pre-authorize a check, and it doesn’t get cashed within 90 days, the check will expire and the pre-authorized amount will be credited back to your account.<br />• Visit GoBank.com/Checks to order more!"
                }, {
                    "Id": "110",
                    "Title": "\n          I ordered checks, but haven't received them yet. What should I do?\n        ",
                    "Body": " \n          Please allow 2 weeks to receive your checks. If it’s been longer than that, log in and locate the check order number in your transaction history. Then visit the Pay section and select “Didn’t receive the checks you ordered?” Enter the check order ID number. When you hit submit, we’ll cancel those checks so they’re no longer valid. We’ll also send you another pack, free of charge."
                }
            ]
        }, {
            "Id": "Social_Media",
            "Title": "Social Media",
            "Questions": [
                {
                    "Id": "200",
                    "Title": "\n          What are your social media ground rules? \n        ",
                    "Body": " \n                   So glad you asked! We’d love for you to like and follow us us on <a href=\"http://facebook.com/GoBank\" target=\"_blank\">Facebook</a>, <a href=\"http://twitter.com/GoBank\" target=\"_blank\">Twitter</a>, <a href=\"http://instagram.com/GoBankOfficial\" target=\"_blank\">Instagram</a>, and <a href=\"http://youtube.com/GoBankOfficial\" target=\"_blank\">YouTube</a>.<br /> <br />Here are our social media ground rules: <br /><br />Facebook, Twitter, Instagram and YouTube are places for GoBank fans and members to engage with us and one another. GoBank welcomes differing opinions—but not to the detriment or disturbance of the community and its individual members. We hope and expect fans will not post content that falls into the following categories and reserve the right to remove postings that are:<br /><br />• abusive, defamatory, or obscene<br />• fraudulent, deceptive or misleading<br />• in violation of any intellectual property right of another<br />• otherwise inappropriate<br />• contain any personal info like Social Security number, birthdate or card or account number<br /><br />We can choose to not allow (or remove) any posts at any time, and we ask that all comments and uploaded images remain both relevant and respectful to our community as a whole. Please note: The opinions of those commenting on our social channels do not necessarily reflect the opinions of GoBank.<br /><br />More important legal stuff:<br /><br />• Facebook is a public page and anyone can participate, but we can’t be responsible for views expressed other than our own.<br />• Please don’t post someone else’s copyrighted work unless you have permission.<br />• Our social channels may not be used for the submission of any claim, demand, complaint or any other form of legal process.<br />• We may post links to third party websites and services over which GoBank has no control. GoBank doesn’t endorse, verify, or make any representations regarding these third party websites and services and is not responsible for the availability of, and any liability arising from, any info, content, advertising, products, services or other materials on or available through such third party websites and services.<br />• When you visit GoBank’s Facebook, Twitter, YouTube or Instagram, your activity is subject to that site's terms and conditions, along with their privacy and data security practices and policies. These platforms are not affiliated with GoBank and may have practices and policies that are different from our own. GoBank is not responsible for the privacy and data security practices and policies or the content of these third party sites.<br /><br />Thanks for reading, friends!"
                }
            ]
        }, {
            "Id": "Withdraw",
            "Title": "Withdraw",
            "Questions": [
                {
                    "Id": "201",
                    "Title": "\n          What is GoBank?\n        ",
                    "Body": "\n          GoBank is a checking account with no overdraft fees and no ongoing minimum balance requirements. Opening an account is fast and easy, plus GoBank welcomes those who have been turned down by other banks. Once you’re a member, you’ll have full access and control of your money on the GoBank website and in the award-winning GoBank app. Pay bills, send money, set up direct deposit and more! You can also withdraw cash from more than 42,000 free ATMs in the U.S. (For ATM withdrawals made outside of the GoBank ATM network, a $2.50 fee will apply, plus any fee the ATM owner may assess.)\n        "
                }, {
                    "Id": "202",
                    "Title": "\n          How do I get a portion of my tax refund in advance?\n        ",
                    "Body": "\n          When you’re in the process of filing your taxes through projectEye, you’ll have options on how you’d like to receive your refund. If you choose to open a GoBank account, you’ll get your tax refund directly deposited into your new account, and you’ll get a portion of it in advance!\n        "
                }, {
                    "Id": "203",
                    "Title": "\n          When will my advance be deposited into my GoBank account?\n        ",
                    "Body": "\n          Once the IRS notifies us that they’ve accepted your return, the advance will be deposited into your GoBank account. You’ll need to finish opening your account to get the advance. GoBank will send you an email with a link to finish opening your account. After you finish opening your account, you can get your advance in 2 ways:\n STILL NEED TO ADD BULLET POINTS HERE\n        "
                }, {
                    "Id": "204",
                    "Title": "\n          When will my tax refund be deposited into my GoBank account?\n        ",
                    "Body": "\n          Your tax refund will be deposited into your account when the IRS issues your tax refund payment. You can check the status of your refund by visiting IRS.gov/Refunds<link “IRS.gov/Refunds” to http://www.irs.gov/Refunds>\n NEED TO MAKE THIS A LINK\n        "
                }, {
                    "Id": "205",
                    "Title": "\n          What if I already have a GoBank account?\n        ",
                    "Body": "\n          Getting an advance is only an option for new accounts. You may still qualify if you open a new GoBank account using a different email address from the one associated with your original GoBank account, but please note you won’t be able to merge your old GoBank account with your new one.\n        "
                }, {
                    "Id": "206",
                    "Title": "\n          Are there fees associated with having a GoBank account?\n        ",
                    "Body": "\n          Yes. The $4.95 GoBank Monthly Membership Fee will be waived for 90 days after the first deposit. Other fees apply. View GoBank’s simple fees at GoBank.com/projectEye/NoWorries\n NEED TO PUT IN LINK HERE\n        "
                }, {
                    "Id": "207",
                    "Title": "\n          What happens if I don’t finish opening my account within 30 days?\n        ",
                    "Body": "\n          Keep an eye on your inbox. We’ll send you an email to finish opening your account. You must finish opening your account within 30 days of receiving the email or your account will be closed and you won’t be able to pick up your advance in cash. If there is any money in the account, a check will be mailed to the address we have on file for you within 10 business days.\n        "
                }, {
                    "Id": "208",
                    "Title": "\n          What are some reasons I wouldn’t be able to get an advance?\n        ",
                    "Body": "\n          If your federal tax refund is less than $1,000. \n    If you are not a current resident of GA, AZ, OK or NE.    \nIf you are under 18 years old.\n MAKE THESE BULLETS\n        "
                }, {
                    "Id": "209",
                    "Title": "\n          Who should I contact if I have questions about my refund?\n        ",
                    "Body": "\n          If you have any questions about your tax refund, please visit https://www.irs.gov/Refunds for more info.\n NEED TO MAKE LINK\n        "
                }
            ]
    }];

    var _paymentHistory = [
        {
            "Id": "12654",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "alskdjflasfjalkfjalskfjslasldkfjaskldfjdalsfjlasjf",
                "Name": "Ron Burgundy (dan.s.sell+204958432905@gmail.com)",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "Alskdjflasfjalkfjalskfjsl Asldkfjaskldfjdalsfjlasjf (dan.s.sell+204958432905@gmail.com)",
            "PayeeReferenceId": "dan.s.sell+204958432905@gmail.com",
            "PayeeReferenceIdType": 2,
            "Amount": 1,
            "Date": "2014-04-02T14:38:05.28-07:00",
            "Memo": null,
            "ConfirmationNumber": "37tJ4YDQ",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 5,
            "Direction": "To"
        }, {
            "Id": "12653",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "aslfdkjsalfkjd",
                "Name": "Aslfdkj Salfkjd (dan.s.sell+03450938480349850345@gmail.com)",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "Aslfdkj Salfkjd (dan.s.sell+03450938480349850345@gmail.com)",
            "PayeeReferenceId": "dan.s.sell+03450938480349850345@gmail.com",
            "PayeeReferenceIdType": 2,
            "Amount": 1,
            "Date": "2014-04-02T14:37:22.443-07:00",
            "Memo": null,
            "ConfirmationNumber": "YvB5Fuvm",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 2,
            "Direction": "To"
        }, {
            "Id": "12646",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "asldkfjasldfkj",
                "Name": "Asldkfj Asldfkj (dan.s.sell+09909@gmail.com)",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "Asldkfj Asldfkj (dan.s.sell+09909@gmail.com)",
            "PayeeReferenceId": "dan.s.sell+09909@gmail.com",
            "PayeeReferenceIdType": 2,
            "Amount": 1,
            "Date": "2014-04-02T10:32:28.613-07:00",
            "Memo": null,
            "ConfirmationNumber": "xjAjlhHP",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 5,
            "Direction": "To"
        }, {
            "Id": "12498",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "( 6509193689 )",
                "Name": null,
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": null,
            "PayeeReferenceId": "6509193689",
            "PayeeReferenceIdType": 3,
            "Amount": 500,
            "Date": "2014-03-31T17:13:56.953-07:00",
            "Memo": null,
            "ConfirmationNumber": "hLvhG4lV",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 4,
            "Direction": "To"
        }, {
            "Id": "12258",
            "PayeeID": "3216749",
            "Payee": {
                "PayeeID": null,
                "NickName": null,
                "Name": "James Gordon",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "James Gordon",
            "PayeeReferenceId": "rama+175res@gdqa.us",
            "PayeeReferenceIdType": 2,
            "Amount": 1,
            "Date": "2014-03-28T11:02:15.693-07:00",
            "Memo": null,
            "ConfirmationNumber": "n3SsCfX0",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 4,
            "Direction": "From"
        }, {
            "Id": "12124",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "( 6509193689 )",
                "Name": null,
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": null,
            "PayeeReferenceId": "6509193689",
            "PayeeReferenceIdType": 3,
            "Amount": 100,
            "Date": "2014-03-27T17:28:28.373-07:00",
            "Memo": null,
            "ConfirmationNumber": "DL8FpyLn",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 4,
            "Direction": "To"
        }, {
            "Id": "12123",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "TEST1 (6509193689)",
                "Name": "(6509193689)",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "(6509193689)",
            "PayeeReferenceId": "6509193689",
            "PayeeReferenceIdType": 3,
            "Amount": 10,
            "Date": "2014-03-27T17:28:15.067-07:00",
            "Memo": null,
            "ConfirmationNumber": "effbgSLa",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 4,
            "Direction": "To"
        }, {
            "Id": "12087",
            "PayeeID": "3150599",
            "Payee": {
                "PayeeID": null,
                "NickName": null,
                "Name": "D D",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "D D",
            "PayeeReferenceId": "rama+175res@gdqa.us",
            "PayeeReferenceIdType": 2,
            "Amount": 1,
            "Date": "2014-03-27T12:11:05.963-07:00",
            "Memo": null,
            "ConfirmationNumber": "02cHfaMZ",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 4,
            "Direction": "From"
        }, {
            "Id": "12080",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "Test1",
                "Name": "Test 1 (6509193689)",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "Test 1 (6509193689)",
            "PayeeReferenceId": "6509193689",
            "PayeeReferenceIdType": 3,
            "Amount": 100,
            "Date": "2014-03-27T11:52:08.233-07:00",
            "Memo": null,
            "ConfirmationNumber": "pNSXbgpV",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 4,
            "Direction": "To"
        }, {
            "Id": "12064",
            "PayeeID": "3150599",
            "Payee": {
                "PayeeID": null,
                "NickName": null,
                "Name": "D D",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "D D",
            "PayeeReferenceId": "rama+175res@gdqa.us",
            "PayeeReferenceIdType": 2,
            "Amount": 50,
            "Date": "2014-03-27T09:58:51.013-07:00",
            "Memo": null,
            "ConfirmationNumber": "q5efDaW6",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 4,
            "Direction": "From"
        }, {
            "Id": "12000",
            "PayeeID": "3150599",
            "Payee": {
                "PayeeID": null,
                "NickName": null,
                "Name": "D D",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "D D",
            "PayeeReferenceId": "rama+175res@gdqa.us",
            "PayeeReferenceIdType": 2,
            "Amount": 1,
            "Date": "2014-03-26T16:43:10.52-07:00",
            "Memo": null,
            "ConfirmationNumber": "JqQXcbGn",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 4,
            "Direction": "From"
        }, {
            "Id": "11963",
            "PayeeID": "3150599",
            "Payee": {
                "PayeeID": null,
                "NickName": null,
                "Name": "D D",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "D D",
            "PayeeReferenceId": "rama+175res@gdqa.us",
            "PayeeReferenceIdType": 2,
            "Amount": 1,
            "Date": "2014-03-26T14:25:46.31-07:00",
            "Memo": null,
            "ConfirmationNumber": "AF4QRBbX",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 4,
            "Direction": "From"
        }, {
            "Id": "11961",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "DanSell",
                "Name": "D D (sellds4@hotmail.com)",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "D D (sellds4@hotmail.com)",
            "PayeeReferenceId": "sellds4@hotmail.com",
            "PayeeReferenceIdType": 2,
            "Amount": 1000,
            "Date": "2014-03-26T13:36:35.62-07:00",
            "Memo": null,
            "ConfirmationNumber": "iDfOQkXy",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 4,
            "Direction": "To"
        }, {
            "Id": "11955",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "( gdsh@dhjd.djdj )",
                "Name": null,
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": null,
            "PayeeReferenceId": "gdsh@dhjd.djdj",
            "PayeeReferenceIdType": 2,
            "Amount": 100,
            "Date": "2014-03-26T11:24:25.523-07:00",
            "Memo": null,
            "ConfirmationNumber": "50j7Pnno",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 5,
            "Direction": "To"
        }, {
            "Id": "11951",
            "PayeeID": "3150599",
            "Payee": {
                "PayeeID": null,
                "NickName": null,
                "Name": "D D",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "D D",
            "PayeeReferenceId": "rama+175res@gdqa.us",
            "PayeeReferenceIdType": 2,
            "Amount": 1000,
            "Date": "2014-03-26T11:22:33.063-07:00",
            "Memo": null,
            "ConfirmationNumber": "GDGalwVE",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 4,
            "Direction": "From"
        }, {
            "Id": "11948",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "DanSell",
                "Name": "D D (sellds4@hotmail.com)",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "D D (sellds4@hotmail.com)",
            "PayeeReferenceId": "sellds4@hotmail.com",
            "PayeeReferenceIdType": 2,
            "Amount": 1000,
            "Date": "2014-03-26T11:14:23.727-07:00",
            "Memo": null,
            "ConfirmationNumber": "afNm1YAt",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 4,
            "Direction": "To"
        }, {
            "Id": "11947",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "asdlkjfasdlfj",
                "Name": "Asdlkjf Asdlfj (sellds@lkasfd.com)",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "Asdlkjf Asdlfj (sellds@lkasfd.com)",
            "PayeeReferenceId": "sellds@lkasfd.com",
            "PayeeReferenceIdType": 2,
            "Amount": 1000,
            "Date": "2014-03-26T11:12:46.333-07:00",
            "Memo": null,
            "ConfirmationNumber": "iBuD1bNY",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 5,
            "Direction": "To"
        }, {
            "Id": "11945",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "alsfdkjadlfjk",
                "Name": "Alsfdkj Adlfjk (d@k.com)",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "Alsfdkj Adlfjk (d@k.com)",
            "PayeeReferenceId": "d@k.com",
            "PayeeReferenceIdType": 2,
            "Amount": 1000,
            "Date": "2014-03-26T11:07:56.217-07:00",
            "Memo": null,
            "ConfirmationNumber": "8uLVuE3z",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 5,
            "Direction": "To"
        }, {
            "Id": "11941",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "asldfjasldfj",
                "Name": "Asldfj Asldfj (d@k.com)",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "Asldfj Asldfj (d@k.com)",
            "PayeeReferenceId": "d@k.com",
            "PayeeReferenceIdType": 2,
            "Amount": 1000,
            "Date": "2014-03-26T09:47:35.787-07:00",
            "Memo": null,
            "ConfirmationNumber": "VpceBQpL",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 5,
            "Direction": "To"
        }, {
            "Id": "11809",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "( 6509193689 )",
                "Name": null,
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": null,
            "PayeeReferenceId": "6509193689",
            "PayeeReferenceIdType": 3,
            "Amount": 100,
            "Date": "2014-03-24T20:08:51.643-07:00",
            "Memo": null,
            "ConfirmationNumber": "48Hmmru3",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 4,
            "Direction": "To"
        }, {
            "Id": "11790",
            "PayeeID": "3150599",
            "Payee": {
                "PayeeID": null,
                "NickName": null,
                "Name": "D D",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "D D",
            "PayeeReferenceId": "rama+175res@gdqa.us",
            "PayeeReferenceIdType": 2,
            "Amount": 1000,
            "Date": "2014-03-24T11:44:34.247-07:00",
            "Memo": null,
            "ConfirmationNumber": "VYNYnjt2",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 4,
            "Direction": "From"
        }, {
            "Id": "11789",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "DanSell",
                "Name": "D D (sellds4@hotmail.com)",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "D D (sellds4@hotmail.com)",
            "PayeeReferenceId": "sellds4@hotmail.com",
            "PayeeReferenceIdType": 2,
            "Amount": 1000,
            "Date": "2014-03-24T11:41:01.727-07:00",
            "Memo": null,
            "ConfirmationNumber": "ZbscaFd7",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 4,
            "Direction": "To"
        }, {
            "Id": "11764",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "alsfjkdasdlfkj",
                "Name": "Alsfjkd Asdlfkj (dan.s.selll+017@gmail.com)",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "Alsfjkd Asdlfkj (dan.s.selll+017@gmail.com)",
            "PayeeReferenceId": "dan.s.selll+017@gmail.com",
            "PayeeReferenceIdType": 2,
            "Amount": 1,
            "Date": "2014-03-21T16:21:26.963-07:00",
            "Memo": null,
            "ConfirmationNumber": "E4JUpQ2o",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 5,
            "Direction": "To"
        }, {
            "Id": "11688",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "Dan35Sell",
                "Name": "Dan35 Sell (danssell+035@gmail.com)",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "Dan35 Sell (danssell+035@gmail.com)",
            "PayeeReferenceId": "danssell+035@gmail.com",
            "PayeeReferenceIdType": 2,
            "Amount": 1,
            "Date": "2014-03-20T19:46:40.81-07:00",
            "Memo": "Double?",
            "ConfirmationNumber": "cqsgbnt0",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 5,
            "Direction": "To"
        }, {
            "Id": "11687",
            "PayeeID": "3256251",
            "Payee": {
                "PayeeID": null,
                "NickName": "Dan34Sell",
                "Name": "Dan34 Sell (dan.s.sell+034@gmail.com)",
                "CustomerAccountNumber": null,
                "ProfilePicUrl": null
            },
            "PayeeName": "Dan34 Sell (dan.s.sell+034@gmail.com)",
            "PayeeReferenceId": "dan.s.sell+034@gmail.com",
            "PayeeReferenceIdType": 2,
            "Amount": 1,
            "Date": "2014-03-20T19:44:10.143-07:00",
            "Memo": null,
            "ConfirmationNumber": "8KISsK2k",
            "IsRecurring": false,
            "RecurringPaymentModelID": null,
            "Status": 5,
            "Direction": "To"
        }
    ];

    var _authorizedDevices = [
        {
            "ConsumerNotificationContactToken": "14800",
            "DeviceName": "10023213",
            "DeviceToken": "Store_Dev_Ig+TfQwFMBf1D8SmNgsNIY3GUURbOvBdcT5z0U1Fmv0=",
            "DeviceID": "5C73BC32-5E98-4169-A90D-FAF34D04CED5",
            "DeviceType": 1,
            "IsAuthorized": true
        }
    ];

    return {
        resetUser: function() {
            _userInfo = angular.copy(originalUserInfo);
        },

        userInfo: _userInfo,

        userNoMMFData: _userNoMMFData,

        notifications: _notifications,

        pendingTrx: _pendingTrx,

        historicalTrx: _historicalTrx,

        sanjayTrx: _sanjayTrx,

        kardashianTrx: _kardashianTrx,

        locations: _locations,

        eStatements: _eStatements,

        faqTopics: _faqTopics,

        payees: _payees,

        businessPayees: _businessPayees,

        paymentHistory: _paymentHistory,

        paperCheckData: _paperCheckData,

        restrictionPoint: _restrictionPoint,

        // help method for change feature
        changeFeature: function (features, obj) {
            for (var i = 0; i < features.length; ++i) {
                var f = features[i];
                if (obj.hasOwnProperty(f.Identifier)) {
                    f.IsAllowed = obj[f.Identifier];
                    delete obj[f.Identifier];
                }
            }
            for (var key in obj) {
                features.push({
                    "Fees": [],
                    "Identifier": key,
                    "IsAllowed": obj[key],
                    "Limits": []
                });
            }
        },

        registrationStatus: _registrationStatus,

        setRegistrationType: function (LocalStorage, t) {
            var state = _getMockState(LocalStorage, "Registration");
            if ( ! state ) state = _registrationStatus;
            state.Type = t;
            _setMockState(LocalStorage, "Registration", state );
        },

        setRegistrationState: function (LocalStorage, value) {
            var state = _getMockState(LocalStorage, "Registration");
            if ( ! state ) state = _registrationStatus;
            state.Status = value;
            _setMockState(LocalStorage, "Registration", state );
        },

        setMockState: _setMockState,

        getMockState: _getMockState,

        flexRegistrationStatus: 'initial',

        notificationSettings: _notificationSettings,

        securityQuestionsList: _securityQuestions,

        transfers: [],

        externalAccounts: [],

        authorizedDevices: _authorizedDevices,

        newGuid: newGuid,

        customCardImageData: null

    }

})();
