# kd.api.StudentApi

## Load the API package
```dart
import 'package:kd/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiStudentGetStudentsGet**](StudentApi.md#apiStudentGetStudentsGet) | **GET** /api/Student/GetStudents | 
[**apiStudentQueryPost**](StudentApi.md#apiStudentQueryPost) | **POST** /api/Student/Query | 


# **apiStudentGetStudentsGet**
> List<Student> apiStudentGetStudentsGet()



### Example 
```dart
import 'package:kd/api.dart';

var api_instance = StudentApi();

try { 
    var result = api_instance.apiStudentGetStudentsGet();
    print(result);
} catch (e) {
    print("Exception when calling StudentApi->apiStudentGetStudentsGet: $e\n");
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

# **apiStudentQueryPost**
> List<Student> apiStudentQueryPost(query)



### Example 
```dart
import 'package:kd/api.dart';

var api_instance = StudentApi();
var query = Query(); // Query | 

try { 
    var result = api_instance.apiStudentQueryPost(query);
    print(result);
} catch (e) {
    print("Exception when calling StudentApi->apiStudentQueryPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**Query**](Query.md)|  | [optional] 

### Return type

[**List<Student>**](Student.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

