import 'package:retro_test/person_response.dart';
import 'package:retro_test/test_response.dart';

T dataFromJson<T>(Object? input) {
  if (input is Map<String, dynamic?>) {
    // What we did previously
    if (T == TestResponse) {
      return TestResponse.fromJson(input) as T;
    }
    if (T == PersonResponse) {
      return PersonResponse.fromJson(input) as T;
    }
  }
  return input as T; // worst case will return the Map
}

Object? dataToJson<T>(T? input) {
  if (input == null) {
    return null;
  }
  if (input is List) {
    final List<dynamic> value =
        input.map<dynamic>((dynamic e) => dataToJson<dynamic>(e)).toList();
    print(value.toString());
    return value;
  }
  return (input as JsonConverterGenerics).toJson();
}

abstract class JsonConverterGenerics {
  Map<String, dynamic> toJson();
}
