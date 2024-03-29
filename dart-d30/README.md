# kd
No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- Build package: org.openapitools.codegen.languages.DartClientCodegen

## Requirements

Dart 1.20.0 or later OR Flutter 0.0.20 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: kd
version: 1.0.0
description: OpenAPI API client
dependencies:
  kd:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  kd:
    path: /path/to/kd
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

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

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*StudentApi* | [**apiStudentGetStudentsGet**](docs//StudentApi.md#apistudentgetstudentsget) | **GET** /api/Student/GetStudents | 
*StudentApi* | [**apiStudentQueryPost**](docs//StudentApi.md#apistudentquerypost) | **POST** /api/Student/Query | 
*ValuesApi* | [**apiValuesGet**](docs//ValuesApi.md#apivaluesget) | **GET** /api/Values | 
*ValuesApi* | [**apiValuesIdDelete**](docs//ValuesApi.md#apivaluesiddelete) | **DELETE** /api/Values/{id} | 
*ValuesApi* | [**apiValuesIdGet**](docs//ValuesApi.md#apivaluesidget) | **GET** /api/Values/{id} | 
*ValuesApi* | [**apiValuesIdPut**](docs//ValuesApi.md#apivaluesidput) | **PUT** /api/Values/{id} | 
*ValuesApi* | [**apiValuesPost**](docs//ValuesApi.md#apivaluespost) | **POST** /api/Values | 


## Documentation For Models

 - [Query](docs//Query.md)
 - [Student](docs//Student.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author




