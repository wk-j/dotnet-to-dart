part of kd.api;

class Student {
  
  int id = null;
  
  String firstName = null;
  
  String lastName = null;
  
  Height height = null;
  //enum heightEnum {  0,  1,  2,  };{
  Student();

  @override
  String toString() {
    return 'Student[id=$id, firstName=$firstName, lastName=$lastName, height=$height, ]';
  }

  Student.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['firstName'] == null) {
      firstName = null;
    } else {
          firstName = json['firstName'];
    }
    if (json['lastName'] == null) {
      lastName = null;
    } else {
          lastName = json['lastName'];
    }
    if (json['height'] == null) {
      height = null;
    } else {
      height = Height.fromJson(json['height']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (firstName != null)
      json['firstName'] = firstName;
    if (lastName != null)
      json['lastName'] = lastName;
    if (height != null)
      json['height'] = height;
    return json;
  }

  static List<Student> listFromJson(List<dynamic> json) {
    return json == null ? List<Student>() : json.map((value) => Student.fromJson(value)).toList();
  }

  static Map<String, Student> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Student>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Student.fromJson(value));
    }
    return map;
  }
}

