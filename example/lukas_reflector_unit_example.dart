import 'package:lukas_generator/lukas_generator.dart';

class TestModel {
  String varName;

  void readFromMap(Map<dynamic, dynamic> metadata) {
    varName = metadata['var_name']?.toString() ?? '';
  }
}

void main() {
  var data = {'var_name': 'custom value'};
  final _reflector = LukasReflectorUnit(
    type: TestModel,
    data: data,
  );

  final _instance = _reflector.getInstance() as TestModel;

  if (_instance is TestModel) {
    print('successfully get a reflected instance');
  }
}
