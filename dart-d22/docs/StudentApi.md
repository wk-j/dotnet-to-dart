# kd.api.StudentApi

## Load the API package
```dart
import 'package:kd/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**studentGetStudents**](StudentApi.md#studentGetStudents) | **GET** /api/Student/GetStudents | 
[**studentQuery**](StudentApi.md#studentQuery) | **POST** /api/Student/Query | 


# **studentGetStudents**
> List<Student> studentGetStudents()



### Example 
```dart
import 'package:kd/api.dart';

var api_instance = StudentApi();

try { 
    var result = api_instance.studentGetStudents();
    print(result);
} catch (e) {
    print("Exception when calling StudentApi->studentGetStudents: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Student>**](Student.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **studentQuery**
> List<Student> studentQuery(query)



### Example 
```dart
import 'package:kd/api.dart';

var api_instance = StudentApi();
var query = Query(); // Query | 

try { 
    var result = api_instance.studentQuery(query);
    print(result);
} catch (e) {
    print("Exception when calling StudentApi->studentQuery: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**Query**](Query.md)|  | 

### Return type

[**List<Student>**](Student.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

