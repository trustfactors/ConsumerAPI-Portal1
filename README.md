# Getting started

## How to Build


The generated code has dependencies over external libraries like UniRest. These dependencies are defined in the ```PodFile``` file that comes with the SDK. 
To resolve these dependencies, we use the Cocoapods package manager.
Visit https://guides.cocoapods.org/using/getting-started.html to setup Cocoapods on your system.
Open command prompt and type ```pod --version```. This should display the current version of Cocoapods installed if the installation was successful.

Using command line, navigate to the directory containing the generated files (including ```PodFile```) for the SDK. 
Run the command ```pod install```. This should install all the required dependencies and create the ```pods``` directory in your project directory.

![Installing dependencies using Cocoapods](https://apidocs.io/illustration/objc?step=AddDependencies&workspaceFolder=ConsumerMobile-ObjC&workspaceName=ConsumerMobile&projectName=ConsumerMobile&rootNamespace=ConsumerMobile)

Open the project workspace using the (ConsumerMobile.xcworkspace) file. Invoke the build process using `Command(⌘)+B` shortcut key or using the `Build` menu as shown below.

![Building SDK using Xcode](https://apidocs.io/illustration/objc?step=BuildSDK&workspaceFolder=ConsumerMobile-ObjC&workspaceName=ConsumerMobile&projectName=ConsumerMobile&rootNamespace=ConsumerMobile)


## How to Use

The generated code is a Cocoa Touch Static Library which can be used in any iOS project. The support for these generated libraries go all the way back to iOS 6.

The following section explains how to use the ConsumerMobile library in a new iOS project.     
### 1. Starting a new project
To start a new project, left-click on the ```Create a new Xcode project```.
![Create Test Project - Step 1](https://apidocs.io/illustration/objc?step=Test1&workspaceFolder=ConsumerMobile-ObjC&workspaceName=ConsumerMobile&projectName=ConsumerMobile&rootNamespace=ConsumerMobile)

Next, choose **Single View Application** and click ```Next```.
![Create Test Project - Step 2](https://apidocs.io/illustration/objc?step=Test2&workspaceFolder=ConsumerMobile-ObjC&workspaceName=ConsumerMobile&projectName=ConsumerMobile&rootNamespace=ConsumerMobile)

Provide **Test-Project** as the product name click ```Next```.
![Create Test Project - Step 3](https://apidocs.io/illustration/objc?step=Test3&workspaceFolder=ConsumerMobile-ObjC&workspaceName=ConsumerMobile&projectName=ConsumerMobile&rootNamespace=ConsumerMobile)

Choose the desired location of your project folder and click ```Create```.
![Create Test Project - Step 4](https://apidocs.io/illustration/objc?step=Test4&workspaceFolder=ConsumerMobile-ObjC&workspaceName=ConsumerMobile&projectName=ConsumerMobile&rootNamespace=ConsumerMobile)

### 2. Adding the static library dependency
To add this dependency open a terminal and navigate to your project folder. Next, input ```pod init``` and press enter.
![Add dependency - Step 1](https://apidocs.io/illustration/objc?step=Add0&workspaceFolder=ConsumerMobile-ObjC&workspaceName=ConsumerMobile&projectName=ConsumerMobile&rootNamespace=ConsumerMobile)

Next, open the newly created ```PodFile``` in your favourite text editor. Add the following line : pod 'ConsumerMobile', :path => 'Vendor/ConsumerMobile'
![Add dependency - Step 2](https://apidocs.io/illustration/objc?step=Add1&workspaceFolder=ConsumerMobile-ObjC&workspaceName=ConsumerMobile&projectName=ConsumerMobile&rootNamespace=ConsumerMobile)

Execute `pod install` from terminal to install the dependecy in your project. This would add the dependency to the newly created test project.
![Add dependency - Step 3](https://apidocs.io/illustration/objc?step=Add2&workspaceFolder=ConsumerMobile-ObjC&workspaceName=ConsumerMobile&projectName=ConsumerMobile&rootNamespace=ConsumerMobile)


## How to Test

Unit tests in this SDK can be run using Xcode. 

First build the SDK as shown in the steps above and naivgate to the project directory and open the ConsumerMobile.xcworkspace file.

Go to the test explorer in Xcode as shown in the picture below and click on `run tests` from the menu. 
![Run tests](https://apidocs.io/illustration/objc?step=RunTests&workspaceFolder=ConsumerMobile-ObjC&workspaceName=ConsumerMobile&projectName=ConsumerMobile&rootNamespace=ConsumerMobile)


## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| xAPIKey | TODO: add a description |



Configuration variables can be set as following.
```Objc
// Configuration parameters and credentials
Configuration_XAPIKey = "Configuration_XAPIKey";

```

# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [UserController](#user_controller)
* [TransactionController](#transaction_controller)
* [CreditCardController](#credit_card_controller)
* [DebitCardController](#debit_card_controller)
* [AchController](#ach_controller)
* [PaymentMethodController](#payment_method_controller)
* [ScheduledPaymentController](#scheduled_payment_controller)
* [ReferralController](#referral_controller)
* [RewardController](#reward_controller)
* [DisputeController](#dispute_controller)
* [FraudController](#fraud_controller)
* [StatementController](#statement_controller)
* [ChallengeController](#challenge_controller)
* [CashbackController](#cashback_controller)
* [ErrorController](#error_controller)
* [MerchantController](#merchant_controller)

## <a name="user_controller"></a>![Class: ](https://apidocs.io/img/class.png ".UserController") UserController

### Get singleton instance
```objc
User* user = [[User alloc]init] ;
```

### <a name="getusers_async_with_limit"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.getusersAsyncWithLimit") getusersAsyncWithLimit

> List of users.


```objc
function getusersAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetusers) onCompleted(limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* limit = [NSNumber numberWithInteger:[@"20" integerValue]];
    NSNumber* startingAfter = 182;
    NSNumber* endingBefore = 182;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.user getusersAsyncWithLimit: limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<User> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 0 | TODO: Add an error description |



### <a name="adduser_async_with_body"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.adduserAsyncWithBody") adduserAsyncWithBody

> Create a new user


```objc
function adduserAsyncWithBody:(User*) body
                completionBlock:(CompletedPostAdduser) onCompleted(body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    User* body = [[User alloc]init];

    [self.user adduserAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, NSArray<User> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="getuser_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.getuserAsyncWithId") getuserAsyncWithId

> Obtain a single user by id


```objc
function getuserAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetuser) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the user to get |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;

    [self.user getuserAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<User> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="deleteuser_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.deleteuserAsyncWithId") deleteuserAsyncWithId

> Deletes a user


```objc
function deleteuserAsyncWithId:(int) mid
                completionBlock:(CompletedDeleteuser) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the user to delete |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 182;

    [self.user deleteuserAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<User> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="updateuser_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.updateuserAsyncWithId") updateuserAsyncWithId

> Update an existing user


```objc
function updateuserAsyncWithId:(NSUUID*) mid
                body:(User*) body
                completionBlock:(CompletedPatchUpdateuser) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the user to update |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    User* body = [[User alloc]init];

    [self.user updateuserAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<User> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

## <a name="transaction_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TransactionController") TransactionController

### Get singleton instance
```objc
Transaction* transaction = [[Transaction alloc]init] ;
```

### <a name="gettransactions_async_with_limit"></a>![Method: ](https://apidocs.io/img/method.png ".TransactionController.gettransactionsAsyncWithLimit") gettransactionsAsyncWithLimit

> List of transactions.


```objc
function gettransactionsAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGettransactions) onCompleted(limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* limit = [NSNumber numberWithInteger:[@"20" integerValue]];
    NSNumber* startingAfter = 182;
    NSNumber* endingBefore = 182;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.transaction gettransactionsAsyncWithLimit: limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<Transaction> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 0 | TODO: Add an error description |



### <a name="addtransaction_async_with_body"></a>![Method: ](https://apidocs.io/img/method.png ".TransactionController.addtransactionAsyncWithBody") addtransactionAsyncWithBody

> Create a new transaction


```objc
function addtransactionAsyncWithBody:(Transaction*) body
                completionBlock:(CompletedPostAddtransaction) onCompleted(body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    Transaction* body = [[Transaction alloc]init];

    [self.transaction addtransactionAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Transaction> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="gettransaction_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".TransactionController.gettransactionAsyncWithId") gettransactionAsyncWithId

> Obtain a single transaction by id


```objc
function gettransactionAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGettransaction) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the transaction to get |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;

    [self.transaction gettransactionAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Transaction> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="deletetransaction_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".TransactionController.deletetransactionAsyncWithId") deletetransactionAsyncWithId

> Deletes a transaction


```objc
function deletetransactionAsyncWithId:(int) mid
                completionBlock:(CompletedDeletetransaction) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the transaction to delete |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 182;

    [self.transaction deletetransactionAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Transaction> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="updatetransaction_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".TransactionController.updatetransactionAsyncWithId") updatetransactionAsyncWithId

> Update an existing transaction


```objc
function updatetransactionAsyncWithId:(NSUUID*) mid
                body:(Transaction*) body
                completionBlock:(CompletedPatchUpdatetransaction) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the transaction to update |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    Transaction* body = [[Transaction alloc]init];

    [self.transaction updatetransactionAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Transaction> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="getdisputes_s_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".TransactionController.getdisputesSAsyncWithId") getdisputesSAsyncWithId

> List of disputes within a given transaction.


```objc
function getdisputesSAsyncWithId:(int) mid
                limit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetdisputesS) onCompleted(mid limit : limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the transaction to get |
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 182;
    NSNumber* limit = 182;
    NSNumber* startingAfter = 182;
    NSNumber* endingBefore = 182;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.transaction getdisputesSAsyncWithId: mid limit : limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<Challenge> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="adddispute_s_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".TransactionController.adddisputeSAsyncWithId") adddisputeSAsyncWithId

> Create a new dispute within a transaction


```objc
function adddisputeSAsyncWithId:(NSUUID*) mid
                body:(Challenge*) body
                completionBlock:(CompletedPostAdddisputeS) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the transaction to get |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    Challenge* body = [[Challenge alloc]init];

    [self.transaction adddisputeSAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Challenge> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

## <a name="credit_card_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CreditCardController") CreditCardController

### Get singleton instance
```objc
CreditCard* creditCard = [[CreditCard alloc]init] ;
```

### <a name="getcredit_cards_async_with_limit"></a>![Method: ](https://apidocs.io/img/method.png ".CreditCardController.getcreditCardsAsyncWithLimit") getcreditCardsAsyncWithLimit

> List of credit_cards.


```objc
function getcreditCardsAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetcreditCards) onCompleted(limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* limit = [NSNumber numberWithInteger:[@"20" integerValue]];
    NSNumber* startingAfter = 182;
    NSNumber* endingBefore = 182;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.creditCard getcreditCardsAsyncWithLimit: limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<CreditCard> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 0 | TODO: Add an error description |



### <a name="addcredit_card_async_with_body"></a>![Method: ](https://apidocs.io/img/method.png ".CreditCardController.addcreditCardAsyncWithBody") addcreditCardAsyncWithBody

> Create a new credit_card


```objc
function addcreditCardAsyncWithBody:(CreditCard*) body
                completionBlock:(CompletedPostAddcreditCard) onCompleted(body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    CreditCard* body = [[CreditCard alloc]init];

    [self.creditCard addcreditCardAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, NSArray<CreditCard> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="getcredit_card_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".CreditCardController.getcreditCardAsyncWithId") getcreditCardAsyncWithId

> Obtain a single credit_card by id


```objc
function getcreditCardAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetcreditCard) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the credit_card to get |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;

    [self.creditCard getcreditCardAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<CreditCard> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="deletecredit_card_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".CreditCardController.deletecreditCardAsyncWithId") deletecreditCardAsyncWithId

> Deletes a credit_card


```objc
function deletecreditCardAsyncWithId:(int) mid
                completionBlock:(CompletedDeletecreditCard) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the credit_card to delete |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 182;

    [self.creditCard deletecreditCardAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<CreditCard> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="updatecredit_card_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".CreditCardController.updatecreditCardAsyncWithId") updatecreditCardAsyncWithId

> Update an existing credit_card


```objc
function updatecreditCardAsyncWithId:(NSUUID*) mid
                body:(CreditCard*) body
                completionBlock:(CompletedPatchUpdatecreditCard) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the credit_card to update |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    CreditCard* body = [[CreditCard alloc]init];

    [self.creditCard updatecreditCardAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<CreditCard> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="gettransactions_s_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".CreditCardController.gettransactionsSAsyncWithId") gettransactionsSAsyncWithId

> List of transactions within a given credit_card.


```objc
function gettransactionsSAsyncWithId:(int) mid
                limit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGettransactionsS) onCompleted(mid limit : limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the credit_card to get |
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 182;
    NSNumber* limit = 182;
    NSNumber* startingAfter = 182;
    NSNumber* endingBefore = 182;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.creditCard gettransactionsSAsyncWithId: mid limit : limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<Transaction> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="addtransaction_s_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".CreditCardController.addtransactionSAsyncWithId") addtransactionSAsyncWithId

> Create a new transaction within a credit_card


```objc
function addtransactionSAsyncWithId:(NSUUID*) mid
                body:(Transaction*) body
                completionBlock:(CompletedPostAddtransactionS) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the credit_card to get |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    Transaction* body = [[Transaction alloc]init];

    [self.creditCard addtransactionSAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Transaction> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

## <a name="debit_card_controller"></a>![Class: ](https://apidocs.io/img/class.png ".DebitCardController") DebitCardController

### Get singleton instance
```objc
DebitCard* debitCard = [[DebitCard alloc]init] ;
```

### <a name="getdebit_cards_async_with_limit"></a>![Method: ](https://apidocs.io/img/method.png ".DebitCardController.getdebitCardsAsyncWithLimit") getdebitCardsAsyncWithLimit

> List of debit_cards.


```objc
function getdebitCardsAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetdebitCards) onCompleted(limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* limit = [NSNumber numberWithInteger:[@"20" integerValue]];
    NSNumber* startingAfter = 182;
    NSNumber* endingBefore = 182;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.debitCard getdebitCardsAsyncWithLimit: limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<DebitCard> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 0 | TODO: Add an error description |



### <a name="adddebit_card_async_with_body"></a>![Method: ](https://apidocs.io/img/method.png ".DebitCardController.adddebitCardAsyncWithBody") adddebitCardAsyncWithBody

> Create a new debit_card


```objc
function adddebitCardAsyncWithBody:(DebitCard*) body
                completionBlock:(CompletedPostAdddebitCard) onCompleted(body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    DebitCard* body = [[DebitCard alloc]init];

    [self.debitCard adddebitCardAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, NSArray<DebitCard> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="getdebit_card_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".DebitCardController.getdebitCardAsyncWithId") getdebitCardAsyncWithId

> Obtain a single debit_card by id


```objc
function getdebitCardAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetdebitCard) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the debit_card to get |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;

    [self.debitCard getdebitCardAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<DebitCard> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="deletedebit_card_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".DebitCardController.deletedebitCardAsyncWithId") deletedebitCardAsyncWithId

> Deletes a debit_card


```objc
function deletedebitCardAsyncWithId:(int) mid
                completionBlock:(CompletedDeletedebitCard) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the debit_card to delete |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 182;

    [self.debitCard deletedebitCardAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<DebitCard> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="updatedebit_card_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".DebitCardController.updatedebitCardAsyncWithId") updatedebitCardAsyncWithId

> Update an existing debit_card


```objc
function updatedebitCardAsyncWithId:(NSUUID*) mid
                body:(DebitCard*) body
                completionBlock:(CompletedPatchUpdatedebitCard) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the debit_card to update |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    DebitCard* body = [[DebitCard alloc]init];

    [self.debitCard updatedebitCardAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<DebitCard> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

## <a name="ach_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AchController") AchController

### Get singleton instance
```objc
Ach* ach = [[Ach alloc]init] ;
```

### <a name="getaches_async_with_limit"></a>![Method: ](https://apidocs.io/img/method.png ".AchController.getachesAsyncWithLimit") getachesAsyncWithLimit

> List of aches.


```objc
function getachesAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetaches) onCompleted(limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* limit = [NSNumber numberWithInteger:[@"20" integerValue]];
    NSNumber* startingAfter = 182;
    NSNumber* endingBefore = 182;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.ach getachesAsyncWithLimit: limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<Ach> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 0 | TODO: Add an error description |



### <a name="addach_async_with_body"></a>![Method: ](https://apidocs.io/img/method.png ".AchController.addachAsyncWithBody") addachAsyncWithBody

> Create a new ach


```objc
function addachAsyncWithBody:(Ach*) body
                completionBlock:(CompletedPostAddach) onCompleted(body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    Ach* body = [[Ach alloc]init];

    [self.ach addachAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Ach> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="getach_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".AchController.getachAsyncWithId") getachAsyncWithId

> Obtain a single ach by id


```objc
function getachAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetach) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the ach to get |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;

    [self.ach getachAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Ach> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="deleteach_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".AchController.deleteachAsyncWithId") deleteachAsyncWithId

> Deletes a ach


```objc
function deleteachAsyncWithId:(int) mid
                completionBlock:(CompletedDeleteach) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the ach to delete |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 182;

    [self.ach deleteachAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Ach> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="updateach_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".AchController.updateachAsyncWithId") updateachAsyncWithId

> Update an existing ach


```objc
function updateachAsyncWithId:(NSUUID*) mid
                body:(Ach*) body
                completionBlock:(CompletedPatchUpdateach) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the ach to update |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    Ach* body = [[Ach alloc]init];

    [self.ach updateachAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Ach> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

## <a name="payment_method_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PaymentMethodController") PaymentMethodController

### Get singleton instance
```objc
PaymentMethod* paymentMethod = [[PaymentMethod alloc]init] ;
```

### <a name="getpayment_methods_async_with_limit"></a>![Method: ](https://apidocs.io/img/method.png ".PaymentMethodController.getpaymentMethodsAsyncWithLimit") getpaymentMethodsAsyncWithLimit

> List of payment_methods.


```objc
function getpaymentMethodsAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetpaymentMethods) onCompleted(limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* limit = [NSNumber numberWithInteger:[@"20" integerValue]];
    NSNumber* startingAfter = 182;
    NSNumber* endingBefore = 182;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.paymentMethod getpaymentMethodsAsyncWithLimit: limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<PaymentMethod> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 0 | TODO: Add an error description |



### <a name="addpayment_method_async_with_body"></a>![Method: ](https://apidocs.io/img/method.png ".PaymentMethodController.addpaymentMethodAsyncWithBody") addpaymentMethodAsyncWithBody

> Create a new payment_method


```objc
function addpaymentMethodAsyncWithBody:(PaymentMethod*) body
                completionBlock:(CompletedPostAddpaymentMethod) onCompleted(body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    PaymentMethod* body = [[PaymentMethod alloc]init];

    [self.paymentMethod addpaymentMethodAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, NSArray<PaymentMethod> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="getpayment_method_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".PaymentMethodController.getpaymentMethodAsyncWithId") getpaymentMethodAsyncWithId

> Obtain a single payment_method by id


```objc
function getpaymentMethodAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetpaymentMethod) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the payment_method to get |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;

    [self.paymentMethod getpaymentMethodAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<PaymentMethod> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="deletepayment_method_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".PaymentMethodController.deletepaymentMethodAsyncWithId") deletepaymentMethodAsyncWithId

> Deletes a payment_method


```objc
function deletepaymentMethodAsyncWithId:(int) mid
                completionBlock:(CompletedDeletepaymentMethod) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the payment_method to delete |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 182;

    [self.paymentMethod deletepaymentMethodAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<PaymentMethod> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="updatepayment_method_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".PaymentMethodController.updatepaymentMethodAsyncWithId") updatepaymentMethodAsyncWithId

> Update an existing payment_method


```objc
function updatepaymentMethodAsyncWithId:(NSUUID*) mid
                body:(PaymentMethod*) body
                completionBlock:(CompletedPatchUpdatepaymentMethod) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the payment_method to update |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    PaymentMethod* body = [[PaymentMethod alloc]init];

    [self.paymentMethod updatepaymentMethodAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<PaymentMethod> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

## <a name="scheduled_payment_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ScheduledPaymentController") ScheduledPaymentController

### Get singleton instance
```objc
ScheduledPayment* scheduledPayment = [[ScheduledPayment alloc]init] ;
```

### <a name="getscheduled_payments_async_with_limit"></a>![Method: ](https://apidocs.io/img/method.png ".ScheduledPaymentController.getscheduledPaymentsAsyncWithLimit") getscheduledPaymentsAsyncWithLimit

> List of scheduled_payments.


```objc
function getscheduledPaymentsAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetscheduledPayments) onCompleted(limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* limit = [NSNumber numberWithInteger:[@"20" integerValue]];
    NSNumber* startingAfter = 182;
    NSNumber* endingBefore = 182;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.scheduledPayment getscheduledPaymentsAsyncWithLimit: limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<ScheduledPayment> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 0 | TODO: Add an error description |



### <a name="addscheduled_payment_async_with_body"></a>![Method: ](https://apidocs.io/img/method.png ".ScheduledPaymentController.addscheduledPaymentAsyncWithBody") addscheduledPaymentAsyncWithBody

> Create a new scheduled_payment


```objc
function addscheduledPaymentAsyncWithBody:(ScheduledPayment*) body
                completionBlock:(CompletedPostAddscheduledPayment) onCompleted(body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    ScheduledPayment* body = [[ScheduledPayment alloc]init];

    [self.scheduledPayment addscheduledPaymentAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, NSArray<ScheduledPayment> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="getscheduled_payment_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".ScheduledPaymentController.getscheduledPaymentAsyncWithId") getscheduledPaymentAsyncWithId

> Obtain a single scheduled_payment by id


```objc
function getscheduledPaymentAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetscheduledPayment) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the scheduled_payment to get |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;

    [self.scheduledPayment getscheduledPaymentAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<ScheduledPayment> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="deletescheduled_payment_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".ScheduledPaymentController.deletescheduledPaymentAsyncWithId") deletescheduledPaymentAsyncWithId

> Deletes a scheduled_payment


```objc
function deletescheduledPaymentAsyncWithId:(int) mid
                completionBlock:(CompletedDeletescheduledPayment) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the scheduled_payment to delete |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 182;

    [self.scheduledPayment deletescheduledPaymentAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<ScheduledPayment> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="updatescheduled_payment_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".ScheduledPaymentController.updatescheduledPaymentAsyncWithId") updatescheduledPaymentAsyncWithId

> Update an existing scheduled_payment


```objc
function updatescheduledPaymentAsyncWithId:(NSUUID*) mid
                body:(ScheduledPayment*) body
                completionBlock:(CompletedPatchUpdatescheduledPayment) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the scheduled_payment to update |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    ScheduledPayment* body = [[ScheduledPayment alloc]init];

    [self.scheduledPayment updatescheduledPaymentAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<ScheduledPayment> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

## <a name="referral_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ReferralController") ReferralController

### Get singleton instance
```objc
Referral* referral = [[Referral alloc]init] ;
```

### <a name="getreferrals_async_with_limit"></a>![Method: ](https://apidocs.io/img/method.png ".ReferralController.getreferralsAsyncWithLimit") getreferralsAsyncWithLimit

> List of referrals.


```objc
function getreferralsAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetreferrals) onCompleted(limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* limit = [NSNumber numberWithInteger:[@"20" integerValue]];
    NSNumber* startingAfter = 182;
    NSNumber* endingBefore = 182;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.referral getreferralsAsyncWithLimit: limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<Referral> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 0 | TODO: Add an error description |



### <a name="addreferral_async_with_body"></a>![Method: ](https://apidocs.io/img/method.png ".ReferralController.addreferralAsyncWithBody") addreferralAsyncWithBody

> Create a new referral


```objc
function addreferralAsyncWithBody:(Referral*) body
                completionBlock:(CompletedPostAddreferral) onCompleted(body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    Referral* body = [[Referral alloc]init];

    [self.referral addreferralAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Referral> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="getreferral_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".ReferralController.getreferralAsyncWithId") getreferralAsyncWithId

> Obtain a single referral by id


```objc
function getreferralAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetreferral) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the referral to get |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;

    [self.referral getreferralAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Referral> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="deletereferral_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".ReferralController.deletereferralAsyncWithId") deletereferralAsyncWithId

> Deletes a referral


```objc
function deletereferralAsyncWithId:(int) mid
                completionBlock:(CompletedDeletereferral) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the referral to delete |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 182;

    [self.referral deletereferralAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Referral> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="updatereferral_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".ReferralController.updatereferralAsyncWithId") updatereferralAsyncWithId

> Update an existing referral


```objc
function updatereferralAsyncWithId:(NSUUID*) mid
                body:(Referral*) body
                completionBlock:(CompletedPatchUpdatereferral) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the referral to update |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    Referral* body = [[Referral alloc]init];

    [self.referral updatereferralAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Referral> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

## <a name="reward_controller"></a>![Class: ](https://apidocs.io/img/class.png ".RewardController") RewardController

### Get singleton instance
```objc
Reward* reward = [[Reward alloc]init] ;
```

### <a name="getrewards_async_with_limit"></a>![Method: ](https://apidocs.io/img/method.png ".RewardController.getrewardsAsyncWithLimit") getrewardsAsyncWithLimit

> List of rewards.


```objc
function getrewardsAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetrewards) onCompleted(limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* limit = [NSNumber numberWithInteger:[@"20" integerValue]];
    NSNumber* startingAfter = 182;
    NSNumber* endingBefore = 182;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.reward getrewardsAsyncWithLimit: limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<Reward> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 0 | TODO: Add an error description |



### <a name="addreward_async_with_body"></a>![Method: ](https://apidocs.io/img/method.png ".RewardController.addrewardAsyncWithBody") addrewardAsyncWithBody

> Create a new reward


```objc
function addrewardAsyncWithBody:(Reward*) body
                completionBlock:(CompletedPostAddreward) onCompleted(body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    Reward* body = [[Reward alloc]init];

    [self.reward addrewardAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Reward> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="getreward_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".RewardController.getrewardAsyncWithId") getrewardAsyncWithId

> Obtain a single reward by id


```objc
function getrewardAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetreward) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the reward to get |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;

    [self.reward getrewardAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Reward> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="deletereward_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".RewardController.deleterewardAsyncWithId") deleterewardAsyncWithId

> Deletes a reward


```objc
function deleterewardAsyncWithId:(int) mid
                completionBlock:(CompletedDeletereward) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the reward to delete |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 182;

    [self.reward deleterewardAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Reward> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="updatereward_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".RewardController.updaterewardAsyncWithId") updaterewardAsyncWithId

> Update an existing reward


```objc
function updaterewardAsyncWithId:(NSUUID*) mid
                body:(Reward*) body
                completionBlock:(CompletedPatchUpdatereward) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the reward to update |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    Reward* body = [[Reward alloc]init];

    [self.reward updaterewardAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Reward> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

## <a name="dispute_controller"></a>![Class: ](https://apidocs.io/img/class.png ".DisputeController") DisputeController

### Get singleton instance
```objc
Dispute* dispute = [[Dispute alloc]init] ;
```

### <a name="getdisputes_async_with_limit"></a>![Method: ](https://apidocs.io/img/method.png ".DisputeController.getdisputesAsyncWithLimit") getdisputesAsyncWithLimit

> List of disputes.


```objc
function getdisputesAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetdisputes) onCompleted(limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* limit = [NSNumber numberWithInteger:[@"20" integerValue]];
    NSNumber* startingAfter = 182;
    NSNumber* endingBefore = 182;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.dispute getdisputesAsyncWithLimit: limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<Dispute> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 0 | TODO: Add an error description |



### <a name="adddispute_async_with_body"></a>![Method: ](https://apidocs.io/img/method.png ".DisputeController.adddisputeAsyncWithBody") adddisputeAsyncWithBody

> Create a new dispute


```objc
function adddisputeAsyncWithBody:(Dispute*) body
                completionBlock:(CompletedPostAdddispute) onCompleted(body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    Dispute* body = [[Dispute alloc]init];

    [self.dispute adddisputeAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Dispute> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="getdispute_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".DisputeController.getdisputeAsyncWithId") getdisputeAsyncWithId

> Obtain a single dispute by id


```objc
function getdisputeAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetdispute) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the dispute to get |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;

    [self.dispute getdisputeAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Dispute> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="deletedispute_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".DisputeController.deletedisputeAsyncWithId") deletedisputeAsyncWithId

> Deletes a dispute


```objc
function deletedisputeAsyncWithId:(int) mid
                completionBlock:(CompletedDeletedispute) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the dispute to delete |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 182;

    [self.dispute deletedisputeAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Dispute> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="updatedispute_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".DisputeController.updatedisputeAsyncWithId") updatedisputeAsyncWithId

> Update an existing dispute


```objc
function updatedisputeAsyncWithId:(NSUUID*) mid
                body:(Dispute*) body
                completionBlock:(CompletedPatchUpdatedispute) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the dispute to update |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    Dispute* body = [[Dispute alloc]init];

    [self.dispute updatedisputeAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Dispute> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

## <a name="fraud_controller"></a>![Class: ](https://apidocs.io/img/class.png ".FraudController") FraudController

### Get singleton instance
```objc
Fraud* fraud = [[Fraud alloc]init] ;
```

### <a name="getfrauds_async_with_limit"></a>![Method: ](https://apidocs.io/img/method.png ".FraudController.getfraudsAsyncWithLimit") getfraudsAsyncWithLimit

> List of frauds.


```objc
function getfraudsAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetfrauds) onCompleted(limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* limit = [NSNumber numberWithInteger:[@"20" integerValue]];
    NSNumber* startingAfter = 182;
    NSNumber* endingBefore = 182;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.fraud getfraudsAsyncWithLimit: limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<Fraud> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 0 | TODO: Add an error description |



### <a name="addfraud_async_with_body"></a>![Method: ](https://apidocs.io/img/method.png ".FraudController.addfraudAsyncWithBody") addfraudAsyncWithBody

> Create a new fraud


```objc
function addfraudAsyncWithBody:(Fraud*) body
                completionBlock:(CompletedPostAddfraud) onCompleted(body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    Fraud* body = [[Fraud alloc]init];

    [self.fraud addfraudAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Fraud> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="getfraud_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".FraudController.getfraudAsyncWithId") getfraudAsyncWithId

> Obtain a single fraud by id


```objc
function getfraudAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetfraud) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the fraud to get |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;

    [self.fraud getfraudAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Fraud> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="deletefraud_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".FraudController.deletefraudAsyncWithId") deletefraudAsyncWithId

> Deletes a fraud


```objc
function deletefraudAsyncWithId:(int) mid
                completionBlock:(CompletedDeletefraud) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the fraud to delete |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 182;

    [self.fraud deletefraudAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Fraud> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="updatefraud_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".FraudController.updatefraudAsyncWithId") updatefraudAsyncWithId

> Update an existing fraud


```objc
function updatefraudAsyncWithId:(NSUUID*) mid
                body:(Fraud*) body
                completionBlock:(CompletedPatchUpdatefraud) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the fraud to update |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    Fraud* body = [[Fraud alloc]init];

    [self.fraud updatefraudAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Fraud> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

## <a name="statement_controller"></a>![Class: ](https://apidocs.io/img/class.png ".StatementController") StatementController

### Get singleton instance
```objc
Statement* statement = [[Statement alloc]init] ;
```

### <a name="getstatements_async_with_limit"></a>![Method: ](https://apidocs.io/img/method.png ".StatementController.getstatementsAsyncWithLimit") getstatementsAsyncWithLimit

> List of statements.


```objc
function getstatementsAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetstatements) onCompleted(limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* limit = [NSNumber numberWithInteger:[@"20" integerValue]];
    NSNumber* startingAfter = 182;
    NSNumber* endingBefore = 182;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.statement getstatementsAsyncWithLimit: limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<Statement> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 0 | TODO: Add an error description |



### <a name="addstatement_async_with_body"></a>![Method: ](https://apidocs.io/img/method.png ".StatementController.addstatementAsyncWithBody") addstatementAsyncWithBody

> Create a new statement


```objc
function addstatementAsyncWithBody:(Statement*) body
                completionBlock:(CompletedPostAddstatement) onCompleted(body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    Statement* body = [[Statement alloc]init];

    [self.statement addstatementAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Statement> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="getstatement_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".StatementController.getstatementAsyncWithId") getstatementAsyncWithId

> Obtain a single statement by id


```objc
function getstatementAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetstatement) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the statement to get |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;

    [self.statement getstatementAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Statement> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="deletestatement_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".StatementController.deletestatementAsyncWithId") deletestatementAsyncWithId

> Deletes a statement


```objc
function deletestatementAsyncWithId:(int) mid
                completionBlock:(CompletedDeletestatement) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the statement to delete |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 182;

    [self.statement deletestatementAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Statement> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="updatestatement_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".StatementController.updatestatementAsyncWithId") updatestatementAsyncWithId

> Update an existing statement


```objc
function updatestatementAsyncWithId:(NSUUID*) mid
                body:(Statement*) body
                completionBlock:(CompletedPatchUpdatestatement) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the statement to update |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    Statement* body = [[Statement alloc]init];

    [self.statement updatestatementAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Statement> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="gettransactions_s1_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".StatementController.gettransactionsS1AsyncWithId") gettransactionsS1AsyncWithId

> List of transactions within a given statement.


```objc
function gettransactionsS1AsyncWithId:(int) mid
                limit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGettransactionsS1) onCompleted(mid limit : limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the statement to get |
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 182;
    NSNumber* limit = 182;
    NSNumber* startingAfter = 182;
    NSNumber* endingBefore = 182;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.statement gettransactionsS1AsyncWithId: mid limit : limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<Transaction> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="addtransaction_s1_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".StatementController.addtransactionS1AsyncWithId") addtransactionS1AsyncWithId

> Create a new transaction within a statement


```objc
function addtransactionS1AsyncWithId:(NSUUID*) mid
                body:(Transaction*) body
                completionBlock:(CompletedPostAddtransactionS1) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the statement to get |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    Transaction* body = [[Transaction alloc]init];

    [self.statement addtransactionS1AsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Transaction> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

## <a name="challenge_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ChallengeController") ChallengeController

### Get singleton instance
```objc
Challenge* challenge = [[Challenge alloc]init] ;
```

### <a name="getchallenges_async_with_limit"></a>![Method: ](https://apidocs.io/img/method.png ".ChallengeController.getchallengesAsyncWithLimit") getchallengesAsyncWithLimit

> List of challenges.


```objc
function getchallengesAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetchallenges) onCompleted(limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* limit = [NSNumber numberWithInteger:[@"20" integerValue]];
    NSNumber* startingAfter = 141;
    NSNumber* endingBefore = 141;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.challenge getchallengesAsyncWithLimit: limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<Challenge> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 0 | TODO: Add an error description |



### <a name="addchallenge_async_with_body"></a>![Method: ](https://apidocs.io/img/method.png ".ChallengeController.addchallengeAsyncWithBody") addchallengeAsyncWithBody

> Create a new challenge


```objc
function addchallengeAsyncWithBody:(Challenge*) body
                completionBlock:(CompletedPostAddchallenge) onCompleted(body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    Challenge* body = [[Challenge alloc]init];

    [self.challenge addchallengeAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Challenge> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="getchallenge_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".ChallengeController.getchallengeAsyncWithId") getchallengeAsyncWithId

> Obtain a single challenge by id


```objc
function getchallengeAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetchallenge) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the challenge to get |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;

    [self.challenge getchallengeAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Challenge> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="deletechallenge_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".ChallengeController.deletechallengeAsyncWithId") deletechallengeAsyncWithId

> Deletes a challenge


```objc
function deletechallengeAsyncWithId:(int) mid
                completionBlock:(CompletedDeletechallenge) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the challenge to delete |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 141;

    [self.challenge deletechallengeAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Challenge> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="updatechallenge_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".ChallengeController.updatechallengeAsyncWithId") updatechallengeAsyncWithId

> Update an existing challenge


```objc
function updatechallengeAsyncWithId:(NSUUID*) mid
                body:(Challenge*) body
                completionBlock:(CompletedPatchUpdatechallenge) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the challenge to update |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    Challenge* body = [[Challenge alloc]init];

    [self.challenge updatechallengeAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Challenge> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

## <a name="cashback_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CashbackController") CashbackController

### Get singleton instance
```objc
Cashback* cashback = [[Cashback alloc]init] ;
```

### <a name="getcashbacks_async_with_limit"></a>![Method: ](https://apidocs.io/img/method.png ".CashbackController.getcashbacksAsyncWithLimit") getcashbacksAsyncWithLimit

> List of cashbacks.


```objc
function getcashbacksAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetcashbacks) onCompleted(limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* limit = [NSNumber numberWithInteger:[@"20" integerValue]];
    NSNumber* startingAfter = 141;
    NSNumber* endingBefore = 141;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.cashback getcashbacksAsyncWithLimit: limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<Cashback> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 0 | TODO: Add an error description |



### <a name="addcashback_async_with_body"></a>![Method: ](https://apidocs.io/img/method.png ".CashbackController.addcashbackAsyncWithBody") addcashbackAsyncWithBody

> Create a new cashback


```objc
function addcashbackAsyncWithBody:(Cashback*) body
                completionBlock:(CompletedPostAddcashback) onCompleted(body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    Cashback* body = [[Cashback alloc]init];

    [self.cashback addcashbackAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Cashback> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="getcashback_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".CashbackController.getcashbackAsyncWithId") getcashbackAsyncWithId

> Obtain a single cashback by id


```objc
function getcashbackAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetcashback) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the cashback to get |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;

    [self.cashback getcashbackAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Cashback> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="deletecashback_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".CashbackController.deletecashbackAsyncWithId") deletecashbackAsyncWithId

> Deletes a cashback


```objc
function deletecashbackAsyncWithId:(int) mid
                completionBlock:(CompletedDeletecashback) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the cashback to delete |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 141;

    [self.cashback deletecashbackAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Cashback> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="updatecashback_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".CashbackController.updatecashbackAsyncWithId") updatecashbackAsyncWithId

> Update an existing cashback


```objc
function updatecashbackAsyncWithId:(NSUUID*) mid
                body:(Cashback*) body
                completionBlock:(CompletedPatchUpdatecashback) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the cashback to update |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    Cashback* body = [[Cashback alloc]init];

    [self.cashback updatecashbackAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Cashback> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

## <a name="error_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ErrorController") ErrorController

### Get singleton instance
```objc
Error* error = [[Error alloc]init] ;
```

### <a name="get_errors_async_with_limit"></a>![Method: ](https://apidocs.io/img/method.png ".ErrorController.getErrorsAsyncWithLimit") getErrorsAsyncWithLimit

> List of Errors.


```objc
function getErrorsAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetErrors) onCompleted(limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* limit = [NSNumber numberWithInteger:[@"20" integerValue]];
    NSNumber* startingAfter = 141;
    NSNumber* endingBefore = 141;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.error getErrorsAsyncWithLimit: limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<Error> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 0 | TODO: Add an error description |



### <a name="add_error_async_with_body"></a>![Method: ](https://apidocs.io/img/method.png ".ErrorController.addErrorAsyncWithBody") addErrorAsyncWithBody

> Create a new Error


```objc
function addErrorAsyncWithBody:(Error*) body
                completionBlock:(CompletedPostAddError) onCompleted(body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    Error* body = [[Error alloc]init];

    [self.error addErrorAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Error> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="get_error_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".ErrorController.getErrorAsyncWithId") getErrorAsyncWithId

> Obtain a single Error by id


```objc
function getErrorAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetError) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the Error to get |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;

    [self.error getErrorAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Error> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="delete_error_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".ErrorController.deleteErrorAsyncWithId") deleteErrorAsyncWithId

> Deletes a Error


```objc
function deleteErrorAsyncWithId:(int) mid
                completionBlock:(CompletedDeleteError) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the Error to delete |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 141;

    [self.error deleteErrorAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Error> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="update_error_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".ErrorController.updateErrorAsyncWithId") updateErrorAsyncWithId

> Update an existing Error


```objc
function updateErrorAsyncWithId:(NSUUID*) mid
                body:(Error*) body
                completionBlock:(CompletedPatchUpdateError) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the Error to update |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    Error* body = [[Error alloc]init];

    [self.error updateErrorAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Error> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

## <a name="merchant_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MerchantController") MerchantController

### Get singleton instance
```objc
Merchant* merchant = [[Merchant alloc]init] ;
```

### <a name="getmerchants_async_with_limit"></a>![Method: ](https://apidocs.io/img/method.png ".MerchantController.getmerchantsAsyncWithLimit") getmerchantsAsyncWithLimit

> List of merchants.


```objc
function getmerchantsAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetmerchants) onCompleted(limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return |
| startingAfter |  ``` Optional ```  | The Object ID from which to continue obtaining items from the list |
| endingBefore |  ``` Optional ```  | The Object ID from which to definitely end the list segment |
| q |  ``` Optional ```  | main query parameter |
| sortBy |  ``` Optional ```  | main sort parameter |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* limit = [NSNumber numberWithInteger:[@"20" integerValue]];
    NSNumber* startingAfter = 141;
    NSNumber* endingBefore = 141;
    NSString* q = @"q";
    SortByEnum sortBy = ENUM_TITLEASC;

    [self.merchant getmerchantsAsyncWithLimit: limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<Merchant> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 0 | TODO: Add an error description |



### <a name="addmerchant_async_with_body"></a>![Method: ](https://apidocs.io/img/method.png ".MerchantController.addmerchantAsyncWithBody") addmerchantAsyncWithBody

> Create a new merchant


```objc
function addmerchantAsyncWithBody:(Merchant*) body
                completionBlock:(CompletedPostAddmerchant) onCompleted(body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    Merchant* body = [[Merchant alloc]init];

    [self.merchant addmerchantAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Merchant> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="getmerchant_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".MerchantController.getmerchantAsyncWithId") getmerchantAsyncWithId

> Obtain a single merchant by id


```objc
function getmerchantAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetmerchant) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the merchant to get |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;

    [self.merchant getmerchantAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Merchant> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="deletemerchant_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".MerchantController.deletemerchantAsyncWithId") deletemerchantAsyncWithId

> Deletes a merchant


```objc
function deletemerchantAsyncWithId:(int) mid
                completionBlock:(CompletedDeletemerchant) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | ID of the merchant to delete |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 141;

    [self.merchant deletemerchantAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, NSArray<Merchant> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



### <a name="updatemerchant_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".MerchantController.updatemerchantAsyncWithId") updatemerchantAsyncWithId

> Update an existing merchant


```objc
function updatemerchantAsyncWithId:(NSUUID*) mid
                body:(Merchant*) body
                completionBlock:(CompletedPatchUpdatemerchant) onCompleted(mid body : body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | Numeric ID of the merchant to update |
| body |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* mid = 123456789;
    Merchant* body = [[Merchant alloc]init];

    [self.merchant updatemerchantAsyncWithId: mid body : body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Merchant> * response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 404 | The specified resource was not found |
| 0 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)



