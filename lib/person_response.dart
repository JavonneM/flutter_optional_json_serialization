import 'package:json_annotation/json_annotation.dart';

import 'converter.dart';
part 'person_response.g.dart';

@JsonSerializable()
class PersonResponse implements JsonConverterGenerics {
  final String name;
  @JsonKey(name: 'lastName')
  final String lastname;

  PersonResponse(this.name, this.lastname);

  factory PersonResponse.fromJson(Map<String, dynamic> json) =>
      _$PersonResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PersonResponseToJson(this);
}
