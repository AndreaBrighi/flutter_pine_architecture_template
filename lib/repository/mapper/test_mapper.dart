import 'package:pine/pine.dart';

import '../../model/test.dart';
import '../../services/responses/test_dto.dart';

class TestMapper extends DTOMapper<TestDTO, Test> {
  @override
  Test fromDTO(TestDTO dto) {
    // TODO: implement fromDTO
    throw UnimplementedError();
  }

  @override
  TestDTO toDTO(Test model) {
    // TODO: implement toDTO
    throw UnimplementedError();
  }
}