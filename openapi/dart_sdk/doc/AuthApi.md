# openapi.api.AuthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AuthLoginPost**](AuthApi.md#v1authloginpost) | **POST** /v1/auth/login | User Login
[**v1AuthRefreshPost**](AuthApi.md#v1authrefreshpost) | **POST** /v1/auth/refresh | Refresh tokens
[**v1AuthRegisterPost**](AuthApi.md#v1authregisterpost) | **POST** /v1/auth/register | User Registration


# **v1AuthLoginPost**
> ResponseAuthData v1AuthLoginPost(inputLoginUser)

User Login

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final InputLoginUser inputLoginUser = ; // InputLoginUser | 

try {
    final response = api.v1AuthLoginPost(inputLoginUser);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->v1AuthLoginPost: $e\n');
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

final api = Openapi().getAuthApi();
final V1AuthRefreshPostRequest v1AuthRefreshPostRequest = ; // V1AuthRefreshPostRequest | 

try {
    final response = api.v1AuthRefreshPost(v1AuthRefreshPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->v1AuthRefreshPost: $e\n');
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

final api = Openapi().getAuthApi();
final InputRegisterUser inputRegisterUser = ; // InputRegisterUser | 

try {
    final response = api.v1AuthRegisterPost(inputRegisterUser);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->v1AuthRegisterPost: $e\n');
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

