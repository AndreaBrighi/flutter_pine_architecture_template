import 'package:pine/pine.dart';
import 'package:poi_app/services/responses/test_dto.dart';
import '../model/test.dart';
import '../services/new_service.dart';


abstract class NewRepository {
  Future<Test> get test;
}

class NewRepositoryImpl extends NewRepository {
  final NewService newService;
  final DTOMapper<TestDTO, Test> mapper;

  NewRepositoryImpl({
    required this.newService,
    required this.mapper,
  });

  @override
  Future<Test> get test async {
    final response = await newService.test();

    return mapper.fromDTO(response);
  }
}