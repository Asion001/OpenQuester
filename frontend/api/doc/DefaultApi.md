# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AuthGet**](DefaultApi.md#v1authget) | **GET** /v1/auth | Authorization Endpoint
[**v1AuthLoginPost**](DefaultApi.md#v1authloginpost) | **POST** /v1/auth/login | User Login
[**v1AuthRegisterPost**](DefaultApi.md#v1authregisterpost) | **POST** /v1/auth/register | User Registration


# **v1AuthGet**
> String v1AuthGet()

Authorization Endpoint

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.v1AuthGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1AuthGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthLoginPost**
> IUser v1AuthLoginPost()

User Login

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.v1AuthLoginPost();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1AuthLoginPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**IUser**](IUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthRegisterPost**
> IUser v1AuthRegisterPost()

User Registration

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.v1AuthRegisterPost();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->v1AuthRegisterPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**IUser**](IUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

