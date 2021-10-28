import 'package:json_annotation/json_annotation.dart';
part 'person_response.g.dart';
@JsonSerializable()
class PersonResponse {
  final String name;
  final String lastname;

  PersonResponse(this.name, this.lastname);

  factory PersonResponse.fromJson(Map<String, dynamic> json) =>
      _$PersonResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PersonResponseToJson(this);
}
