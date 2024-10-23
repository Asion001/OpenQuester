# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1UserDelete**](UserApi.md#v1userdelete) | **DELETE** /v1/user/ | Delete user by his token
[**v1UserGet**](UserApi.md#v1userget) | **GET** /v1/user/ | Get user by his token
[**v1UserIdDelete**](UserApi.md#v1useriddelete) | **DELETE** /v1/user/{id} | Delete user by id
[**v1UserIdGet**](UserApi.md#v1useridget) | **GET** /v1/user/{id} | Get user info by id
[**v1UserIdPatch**](UserApi.md#v1useridpatch) | **PATCH** /v1/user/{id} | Update user by id
[**v1UserPatch**](UserApi.md#v1userpatch) | **PATCH** /v1/user/ | Update user by his token


# **v1UserDelete**
> v1UserDelete()

Delete user by his token

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();

try {
    api.v1UserDelete();
} catch on DioException (e) {
    print('Exception when calling UserApi->v1UserDelete: $e\n');
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

Get user by his token

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();

try {
    final response = api.v1UserGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->v1UserGet: $e\n');
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

Delete user by id

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final String id = id_example; // String | 

try {
    api.v1UserIdDelete(id);
} catch on DioException (e) {
    print('Exception when calling UserApi->v1UserIdDelete: $e\n');
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

Get user info by id

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final String id = id_example; // String | 

try {
    final response = api.v1UserIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->v1UserIdGet: $e\n');
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

Update user by id

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final String id = id_example; // String | 
final InputUpdateUser inputUpdateUser = ; // InputUpdateUser | 

try {
    final response = api.v1UserIdPatch(id, inputUpdateUser);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->v1UserIdPatch: $e\n');
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

Update user by his token

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final InputUpdateUser inputUpdateUser = ; // InputUpdateUser | 

try {
    final response = api.v1UserPatch(inputUpdateUser);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->v1UserPatch: $e\n');
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

