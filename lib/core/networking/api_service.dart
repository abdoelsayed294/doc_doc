import 'package:dio/dio.dart';
import 'package:doc_now/core/networking/api_constants.dart';
import 'package:doc_now/features/login/data/models/login_request_body.dart';
import 'package:doc_now/features/login/data/models/login_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

//RestApi => annotation to retrofit
//retrofit based on dio
//retrofit abbreviate your get form
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}