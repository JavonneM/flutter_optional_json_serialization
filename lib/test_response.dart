import 'package:json_annotation/json_annotation.dart';
import 'package:retro_test/person_response.dart';

import 'converter.dart';
part 'test_response.g.dart';

@JsonSerializable()
class TestResponse implements JsonConverterGenerics {
  final String name;
  final int size;
  final List<PersonResponse> people;
  TestResponse(this.name, this.size, this.people);

  factory TestResponse.fromJson(Map<String, dynamic> json) =>
      _$TestResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestResponseToJson(this);
}
