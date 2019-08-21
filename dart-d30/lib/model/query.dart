part of kd.api;

class Query {
  
  String name = null;
  Query();

  @override
  String toString() {
    return 'Query[name=$name, ]';
  }

  Query.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<Query> listFromJson(List<dynamic> json) {
    return json == null ? List<Query>() : json.map((value) => Query.fromJson(value)).toList();
  }

  static Map<String, Query> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Query>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Query.fromJson(value));
    }
    return map;
  }
}

