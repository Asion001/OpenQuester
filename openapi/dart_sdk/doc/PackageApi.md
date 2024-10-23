# openapi.api.PackageApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1PackageUploadPost**](PackageApi.md#v1packageuploadpost) | **POST** /v1/package/upload | Get upload links for every file in &#x60;content.json&#x60;


# **v1PackageUploadPost**
> V1PackageUploadPost200Response v1PackageUploadPost(v1PackageUploadPostRequest)

Get upload links for every file in `content.json`

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPackageApi();
final V1PackageUploadPostRequest v1PackageUploadPostRequest = ; // V1PackageUploadPostRequest | Data from `content.json` file

try {
    final response = api.v1PackageUploadPost(v1PackageUploadPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PackageApi->v1PackageUploadPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1PackageUploadPostRequest** | [**V1PackageUploadPostRequest**](V1PackageUploadPostRequest.md)| Data from `content.json` file | 

### Return type

[**V1PackageUploadPost200Response**](V1PackageUploadPost200Response.md)

### Authorization

[JWTAuth](../README.md#JWTAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

