import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:retro_test/base_list_response.dart';
import 'package:retro_test/base_response.dart';
import 'package:retro_test/person_response.dart';
import 'package:retro_test/test_api.dart';
import 'package:retro_test/test_response.dart';

void main() {
  final Dio client = Dio();
  final TestApi api = TestApi(client);
  group('Serialization Tests', () {
    // test('Test void', () async {
    //   final BaseResponse<void> call = await api.voidCall();
    //   expect(call.errorCode, null);
    //   expect(call.errorMessage, null);
    //   expect(call.success, true);
    // });
    test('Test dynamic', () async {
      final BaseResponse<dynamic> call = await api.dynamicCall();
      expect(call.errorCode, null);
      expect(call.errorMessage, null);
      expect(call.success, true);
      expect(call.data, <String, dynamic>{});
    });
    test('Test String', () async {
      final BaseResponse<String> call = await api.stringCall();
      expect(call.errorCode, null);
      expect(call.errorMessage, null);
      expect(call.success, true);
      expect(call.data, 'Test Response all good captain');
    });
    test('Test List Primitive', () async {
      final BaseResponse<List<String>> call = await api.listPrimitiveCall();
      expect(call.errorCode, null);
      expect(call.errorMessage, null);
      expect(call.success, true);
      expect(call.data, ['A', 'B', 'C']);
    });
    test('Test BaseList Primitive', () async {
      final BaseListResponse<String> call = await api.baseListPrimitiveCall();
      expect(call.errorCode, null);
      expect(call.errorMessage, null);
      expect(call.success, true);
      expect(call.data, ['A', 'B', 'C']);
    });

    test('Test Person Object', () async {
      final BaseResponse<PersonResponse> call = await api.personObjectCall();
      expect(call.errorCode, null);
      expect(call.errorMessage, null);
      expect(call.success, true);
      expect(call.data!.name, 'John');
      expect(call.data!.lastname, 'Doe');
    });

    test('Test List Person Object', () async {
      final BaseResponse<List<PersonResponse>> call =
          await api.listPersonObjectCall();
      expect(call.errorCode, null);
      expect(call.errorMessage, null);
      expect(call.success, true);
      expect(call.data, ['A', 'B', 'C']);
    });
    test('Test BaseList Person Object', () async {
      final BaseListResponse<PersonResponse> call =
          await api.baseListPersonObjectCall();
      expect(call.errorCode, null);
      expect(call.errorMessage, null);
      expect(call.success, true);
      expect(call.data, ['A', 'B', 'C']);
    });

    test('Test Complex Object call', () async {
      final BaseResponse<TestResponse> call = await api.complexObjectCall();
      expect(call.errorCode, null);
      expect(call.errorMessage, null);
      expect(call.success, true);
      expect(call.data!.name, 'GroupX');
      expect(call.data!.size, 5);
      expect(call.data!.person.name, 'John');
      expect(call.data!.person.lastname, 'Doe');
    });
  });
}
