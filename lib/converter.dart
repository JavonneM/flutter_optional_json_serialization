import 'package:retro_test/person_response.dart';
import 'package:retro_test/test_response.dart';

List<T>? listDataFromJson<T>(List<dynamic>? input) {
  return input?.map((dynamic e) => dataFromJson<T>(e)).whereType<T>().toList();
}

T? dataFromJson<T>(Object? input) {
  if (input is Map<String, dynamic?>) {
    // What we did previously
    if (T == TestResponse) {
      return TestResponse.fromJson(input) as T;
    }
    if (T == PersonResponse) {
      return PersonResponse.fromJson(input) as T;
    }
  }
  if (input is List) {
    return input.map((e) => dataFromJson(e)).toList() as T?;
  }
  return input as T; // worst case will return the Map
}

Object? dataToJson<T>(dynamic? input) {
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
