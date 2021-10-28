import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'base_list_response.dart';
import 'base_response.dart';
import 'person_response.dart';
import 'test_response.dart';

part 'test_api.g.dart';

@RestApi()
abstract class TestApi {
  factory TestApi(Dio dio) => _TestApi(dio);

  @GET('https://run.mocky.io/v3/8e692f67-e0da-4f55-9815-81a75ce2c9eb')
  Future<BaseResponse<void>> voidCall();

  @GET('https://run.mocky.io/v3/e09e00e2-d77e-490c-8a7a-860609b483ad')
  Future<BaseResponse<dynamic>> dynamicCall();

  @GET('https://run.mocky.io/v3/bba72112-be60-48a9-9a8e-24140eba7d23')
  Future<BaseResponse<String>> stringCall();

  @GET('https://run.mocky.io/v3/327be2bc-da56-428d-9023-7eb7d162d234')
  Future<BaseResponse<List<String>>> listPrimitiveCall();
  @GET('https://run.mocky.io/v3/c96e755f-f8cf-4ce2-b539-53420e27d1ea')
  Future<BaseResponse<List<PersonResponse>>> listPersonObjectCall();

  @GET('https://run.mocky.io/v3/327be2bc-da56-428d-9023-7eb7d162d234')
  Future<BaseListResponse<String>> baseListPrimitiveCall();

  @GET('https://run.mocky.io/v3/c96e755f-f8cf-4ce2-b539-53420e27d1ea')
  Future<BaseListResponse<PersonResponse>> baseListPersonObjectCall();

  @GET('https://run.mocky.io/v3/bb53961f-39dd-4235-bd2c-198d44481999')
  Future<BaseResponse<PersonResponse>> personObjectCall();

  @GET('https://run.mocky.io/v3/7e5dfdda-581e-47d3-bfe8-cd256d62810c')
  Future<BaseResponse<TestResponse>> complexObjectCall();
}
