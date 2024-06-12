import 'package:equatable/equatable.dart';
import 'package:pine/pine.dart';

class TestDTO extends DTO with EquatableMixin {

  const TestDTO();

  factory TestDTO.fromJson(Map<String, dynamic> json) => const TestDTO(
        //title: json['title'],
      );

  @override
  List<Object?> get props => [];
}