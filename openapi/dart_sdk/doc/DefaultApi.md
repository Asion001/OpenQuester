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
[**v1FileDelete**](DefaultApi.md#v1filedelete) | **DELETE** /v1/file | 
[**v1FileGet**](DefaultApi.md#v1fileget) | **GET** /v1/file | 
[**v1FilePost**](DefaultApi.md#v1filepost) | **POST** /v1/file | 
[**v1PackageUploadPost**](DefaultApi.md#v1packageuploadpost) | **POST** /v1/package/upload | 
[**v1UserDelete**](DefaultApi.md#v1userdelete) | **DELETE** /v1/user/ | Delete user.
[**v1UserGet**](DefaultApi.md#v1userget) | **GET** /v1/user/ | 
[**v1UserIdDelete**](DefaultApi.md#v1useriddelete) | **DELETE** /v1/user/{id} | 
[**v1UserIdGet**](DefaultApi.md#v1useridget) | **GET** /v1/user/{id} | 
[**v1UserIdPatch**](DefaultApi.md#v1useridpatch) | **PATCH** /v1/user/{id} | 
[**v1UserPatch**](DefaultApi.md#v1userpatch) | **PATCH** /v1/user/ | Update user info.
[**v1UsersGet**](DefaultApi.md#v1usersget) | **GET** /v1/users/ | Get all users info


# **v1AuthLoginPost**
> ResponseAuthData v1AuthLoginPost(inputLoginUser)

User Login

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final InputLoginUser inputLoginUser = ; // InputLoginUser | 

try {
    final response = api.v1AuthLoginPost(inputLoginUser);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1AuthLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputLoginUser** | [**InputLoginUser**](InputLoginUser.md)|  | 

### Return type

[**ResponseAuthData**](ResponseAuthData.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthRefreshPost**
> ResponseAuthData v1AuthRefreshPost(v1AuthRefreshPostRequest)

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

[**ResponseAuthData**](ResponseAuthData.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthRegisterPost**
> ResponseAuthData v1AuthRegisterPost(inputRegisterUser)

User Registration

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final InputRegisterUser inputRegisterUser = ; // InputRegisterUser | 

try {
    final response = api.v1AuthRegisterPost(inputRegisterUser);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1AuthRegisterPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputRegisterUser** | [**InputRegisterUser**](InputRegisterUser.md)|  | 

### Return type

[**ResponseAuthData**](ResponseAuthData.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1FileDelete**
> V1FileDelete204Response v1FileDelete(body)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String body = body_example; // String | filename which you want to delete

try {
    final response = api.v1FileDelete(body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1FileDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**| filename which you want to delete | 

### Return type

[**V1FileDelete204Response**](V1FileDelete204Response.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1FileGet**
> V1FileGet200Response v1FileGet(body)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String body = body_example; // String | filename which you want to get

try {
    final response = api.v1FileGet(body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1FileGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**| filename which you want to get | 

### Return type

[**V1FileGet200Response**](V1FileGet200Response.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1FilePost**
> V1FilePost200Response v1FilePost(body)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String body = body_example; // String | filename which you want to put in bucket

try {
    final response = api.v1FilePost(body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1FilePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**| filename which you want to put in bucket | 

### Return type

[**V1FilePost200Response**](V1FilePost200Response.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1PackageUploadPost**
> V1PackageUploadPost200Response v1PackageUploadPost(v1PackageUploadPostRequest)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final V1PackageUploadPostRequest v1PackageUploadPostRequest = ; // V1PackageUploadPostRequest | content.json file data

try {
    final response = api.v1PackageUploadPost(v1PackageUploadPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1PackageUploadPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1PackageUploadPostRequest** | [**V1PackageUploadPostRequest**](V1PackageUploadPostRequest.md)| content.json file data | [optional] 

### Return type

[**V1PackageUploadPost200Response**](V1PackageUploadPost200Response.md)

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
> ResponsePrivateUser v1UserGet()



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

[**ResponsePrivateUser**](ResponsePrivateUser.md)

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
> ResponsePrivateUser v1UserIdGet(id)



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

[**ResponsePrivateUser**](ResponsePrivateUser.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UserIdPatch**
> ResponsePrivateUser v1UserIdPatch(id, inputUpdateUser)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String id = id_example; // String | 
final InputUpdateUser inputUpdateUser = ; // InputUpdateUser | 

try {
    final response = api.v1UserIdPatch(id, inputUpdateUser);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1UserIdPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **inputUpdateUser** | [**InputUpdateUser**](InputUpdateUser.md)|  | 

### Return type

[**ResponsePrivateUser**](ResponsePrivateUser.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UserPatch**
> ResponsePrivateUser v1UserPatch(inputUpdateUser)

Update user info.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final InputUpdateUser inputUpdateUser = ; // InputUpdateUser | 

try {
    final response = api.v1UserPatch(inputUpdateUser);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1UserPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputUpdateUser** | [**InputUpdateUser**](InputUpdateUser.md)|  | 

### Return type

[**ResponsePrivateUser**](ResponsePrivateUser.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UsersGet**
> BuiltList<ResponsePrivateUser> v1UsersGet()

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

[**BuiltList&lt;ResponsePrivateUser&gt;**](ResponsePrivateUser.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

