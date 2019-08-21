# kd.api.ValuesApi

## Load the API package
```dart
import 'package:kd/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**valuesDelete**](ValuesApi.md#valuesDelete) | **DELETE** /api/Values/{id} | 
[**valuesGet**](ValuesApi.md#valuesGet) | **GET** /api/Values/{id} | 
[**valuesGetAll**](ValuesApi.md#valuesGetAll) | **GET** /api/Values | 
[**valuesPost**](ValuesApi.md#valuesPost) | **POST** /api/Values | 
[**valuesPut**](ValuesApi.md#valuesPut) | **PUT** /api/Values/{id} | 


# **valuesDelete**
> valuesDelete(id)



### Example 
```dart
import 'package:kd/api.dart';

var api_instance = ValuesApi();
var id = 56; // int | 

try { 
    api_instance.valuesDelete(id);
} catch (e) {
    print("Exception when calling ValuesApi->valuesDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **valuesGet**
> String valuesGet(id)



### Example 
```dart
import 'package:kd/api.dart';

var api_instance = ValuesApi();
var id = 56; // int | 

try { 
    var result = api_instance.valuesGet(id);
    print(result);
} catch (e) {
    print("Exception when calling ValuesApi->valuesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **valuesGetAll**
> List<String> valuesGetAll()



### Example 
```dart
import 'package:kd/api.dart';

var api_instance = ValuesApi();

try { 
    var result = api_instance.valuesGetAll();
    print(result);
} catch (e) {
    print("Exception when calling ValuesApi->valuesGetAll: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **valuesPost**
> valuesPost(value)



### Example 
```dart
import 'package:kd/api.dart';

var api_instance = ValuesApi();
var value = String(); // String | 

try { 
    api_instance.valuesPost(value);
} catch (e) {
    print("Exception when calling ValuesApi->valuesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **valuesPut**
> valuesPut(id, value)



### Example 
```dart
import 'package:kd/api.dart';

var api_instance = ValuesApi();
var id = 56; // int | 
var value = String(); // String | 

try { 
    api_instance.valuesPut(id, value);
} catch (e) {
    print("Exception when calling ValuesApi->valuesPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [default to null]
 **value** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

