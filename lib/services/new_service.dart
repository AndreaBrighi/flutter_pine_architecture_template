
import 'package:dio/dio.dart';
import 'package:poi_app/services/responses/test_dto.dart';
import 'package:retrofit/retrofit.dart' as retrofit;

part 'new_service.g.dart';

@retrofit.RestApi()
abstract class NewService {
  factory NewService(Dio dio, {String? baseUrl}) =>
      _NewService(dio, baseUrl: baseUrl);

  @retrofit.GET('')
  @retrofit.Headers({'Authorization': 'Bearer <token>'})
  Future<TestDTO> test(/*{
    @retrofit.Query('q') String query = 'italy',
  }*/);
}