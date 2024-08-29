# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AuthLoginPost**](DefaultApi.md#v1authloginpost) | **POST** /v1/auth/login | User Login
[**v1AuthRefreshPost**](DefaultApi.md#v1authrefreshpost) | **POST** /v1/auth/refresh | Refresh tokens
[**v1AuthRegisterPost**](DefaultApi.md#v1authregisterpost) | **POST** /v1/auth/register | User Registration
[**v1UserDelete**](DefaultApi.md#v1userdelete) | **DELETE** /v1/user/ | Delete user.
[**v1UserGet**](DefaultApi.md#v1userget) | **GET** /v1/user/ | 
[**v1UserIdDelete**](DefaultApi.md#v1useriddelete) | **DELETE** /v1/user/{id} | 
[**v1UserIdGet**](DefaultApi.md#v1useridget) | **GET** /v1/user/{id} | 
[**v1UserIdPatch**](DefaultApi.md#v1useridpatch) | **PATCH** /v1/user/{id} | 
[**v1UserPatch**](DefaultApi.md#v1userpatch) | **PATCH** /v1/user/ | Update user info.
[**v1UsersGet**](DefaultApi.md#v1usersget) | **GET** /v1/users/ | Get all users info


# **v1AuthLoginPost**
> AuthData v1AuthLoginPost(loginUser)

User Login

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final LoginUser loginUser = ; // LoginUser | 

try {
    final response = api.v1AuthLoginPost(loginUser);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1AuthLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginUser** | [**LoginUser**](LoginUser.md)|  | 

### Return type

[**AuthData**](AuthData.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthRefreshPost**
> AuthData v1AuthRefreshPost(v1AuthRefreshPostRequest)

Refresh tokens

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final V1AuthRefreshPostRequest v1AuthRefreshPostRequest = ; // V1AuthRefreshPostRequest | 

try {
    final response = api.v1AuthRefreshPost(v1AuthRefreshPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1AuthRefreshPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1AuthRefreshPostRequest** | [**V1AuthRefreshPostRequest**](V1AuthRefreshPostRequest.md)|  | 

### Return type

[**AuthData**](AuthData.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthRegisterPost**
> AuthData v1AuthRegisterPost(registerUser)

User Registration

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final RegisterUser registerUser = ; // RegisterUser | 

try {
    final response = api.v1AuthRegisterPost(registerUser);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1AuthRegisterPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerUser** | [**RegisterUser**](RegisterUser.md)|  | 

### Return type

[**AuthData**](AuthData.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UserDelete**
> v1UserDelete()

Delete user.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    api.v1UserDelete();
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1UserDelete: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UserGet**
> PrivateUser v1UserGet()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.v1UserGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1UserGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PrivateUser**](PrivateUser.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UserIdDelete**
> v1UserIdDelete(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String id = id_example; // String | 

try {
    api.v1UserIdDelete(id);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1UserIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UserIdGet**
> PrivateUser v1UserIdGet(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String id = id_example; // String | 

try {
    final response = api.v1UserIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1UserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**PrivateUser**](PrivateUser.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UserIdPatch**
> PrivateUser v1UserIdPatch(id, updateUser)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String id = id_example; // String | 
final UpdateUser updateUser = ; // UpdateUser | 

try {
    final response = api.v1UserIdPatch(id, updateUser);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1UserIdPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateUser** | [**UpdateUser**](UpdateUser.md)|  | 

### Return type

[**PrivateUser**](PrivateUser.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UserPatch**
> PrivateUser v1UserPatch(updateUser)

Update user info.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final UpdateUser updateUser = ; // UpdateUser | 

try {
    final response = api.v1UserPatch(updateUser);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1UserPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateUser** | [**UpdateUser**](UpdateUser.md)|  | 

### Return type

[**PrivateUser**](PrivateUser.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UsersGet**
> BuiltList<PrivateUser> v1UsersGet()

Get all users info

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.v1UsersGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1UsersGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;PrivateUser&gt;**](PrivateUser.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

