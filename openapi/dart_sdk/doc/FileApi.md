# openapi.api.FileApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1FileDelete**](FileApi.md#v1filedelete) | **DELETE** /v1/file | Delete file from bucket
[**v1FileGet**](FileApi.md#v1fileget) | **GET** /v1/file | Get link to file from server
[**v1FilePost**](FileApi.md#v1filepost) | **POST** /v1/file | Get link to upload file on server


# **v1FileDelete**
> V1FileDelete204Response v1FileDelete(v1FileGetRequest)

Delete file from bucket

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getFileApi();
final V1FileGetRequest v1FileGetRequest = ; // V1FileGetRequest | Filename which you want to delete

try {
    final response = api.v1FileDelete(v1FileGetRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->v1FileDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1FileGetRequest** | [**V1FileGetRequest**](V1FileGetRequest.md)| Filename which you want to delete | 

### Return type

[**V1FileDelete204Response**](V1FileDelete204Response.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1FileGet**
> V1FileGet200Response v1FileGet(v1FileGetRequest)

Get link to file from server

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getFileApi();
final V1FileGetRequest v1FileGetRequest = ; // V1FileGetRequest | Filename which you want to get

try {
    final response = api.v1FileGet(v1FileGetRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->v1FileGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1FileGetRequest** | [**V1FileGetRequest**](V1FileGetRequest.md)| Filename which you want to get | 

### Return type

[**V1FileGet200Response**](V1FileGet200Response.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1FilePost**
> V1FilePost200Response v1FilePost(v1FileGetRequest)

Get link to upload file on server

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getFileApi();
final V1FileGetRequest v1FileGetRequest = ; // V1FileGetRequest | Filename which you want to put in bucket

try {
    final response = api.v1FilePost(v1FileGetRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->v1FilePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1FileGetRequest** | [**V1FileGetRequest**](V1FileGetRequest.md)| Filename which you want to put in bucket | 

### Return type

[**V1FilePost200Response**](V1FilePost200Response.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

