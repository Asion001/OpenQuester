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


# **v1AuthLoginPost**
> AuthData v1AuthLoginPost(v1AuthLoginPostRequest)

User Login

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final V1AuthLoginPostRequest v1AuthLoginPostRequest = ; // V1AuthLoginPostRequest | 

try {
    final response = api.v1AuthLoginPost(v1AuthLoginPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1AuthLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1AuthLoginPostRequest** | [**V1AuthLoginPostRequest**](V1AuthLoginPostRequest.md)|  | 

### Return type

[**AuthData**](AuthData.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthRefreshPost**
> V1AuthRefreshPost200Response v1AuthRefreshPost(v1AuthRefreshPostRequest)

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

[**V1AuthRefreshPost200Response**](V1AuthRefreshPost200Response.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthRegisterPost**
> AuthData v1AuthRegisterPost(v1AuthRegisterPostRequest)

User Registration

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final V1AuthRegisterPostRequest v1AuthRegisterPostRequest = ; // V1AuthRegisterPostRequest | 

try {
    final response = api.v1AuthRegisterPost(v1AuthRegisterPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1AuthRegisterPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1AuthRegisterPostRequest** | [**V1AuthRegisterPostRequest**](V1AuthRegisterPostRequest.md)|  | 

### Return type

[**AuthData**](AuthData.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

