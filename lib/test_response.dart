import 'package:json_annotation/json_annotation.dart';
import 'package:retro_test/person_response.dart';
part 'test_response.g.dart';

@JsonSerializable()
class TestResponse {
  final String name;
  final int size;
  final List<PersonResponse> people;
  TestResponse(this.name, this.size, this.people);

  factory TestResponse.fromJson(Map<String, dynamic> json) =>
      _$TestResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TestResponseToJson(this);
}
