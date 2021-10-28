import 'package:json_annotation/json_annotation.dart';
import 'package:retro_test/person_response.dart';
import 'package:retro_test/test_response.dart';

class Converter<T> implements JsonConverter<T, Object> {
  const Converter();

  @override
  T fromJson(Object json) {
    if (json is List) {
      /// In this case T is List<String>? so when we recursively call fromJson
      /// we will try to case the String to List<String>? at the very last return
      /// in this method
      json.map((e) => fromJson(json)).toList();
    }
    if (json is Map<String, dynamic>) {
      final T? obj = parseObject(json);
      if (obj != null) {
        return obj;
      }
      // This will only work if `json` is a native JSON type:
      //   num, String, bool, null, etc
      // *and* is assignable to `T`.
    }
    return json as T;
  }

  T? parseObject(Map<String, dynamic> json) {
    // It seems all T's here are of optional types
    // There for T == TestResponse is not true
    // and T == TestResponse? is not valid. or (T == (TestResponse?))
    if (T == TestResponse) {
      return TestResponse.fromJson(json) as T;
    }
    if (T == PersonResponse) {
      return PersonResponse.fromJson(json) as T;
    }
    return json as T;
  }

  @override
  Object toJson(T object) {
    if (object is TestResponse) {
      return object.toJson();
    }
    if (object is PersonResponse) {
      return object.toJson();
    }
    // This will only work if `object` is a native JSON type:
    //   num, String, bool, null, etc
    // Or if it has a `toJson()` function`.
    return object as Object;
  }
}
