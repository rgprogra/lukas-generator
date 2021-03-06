import 'dart:mirrors';

import 'package:lukas_generator/lukas_generator.dart';
import 'package:test/test.dart';

class TestModel {
  String varName;

  // TestModel({
  //   this.varName,
  // });

  void readFromMap(Map<dynamic, dynamic> metadata) {
    varName = metadata['var_name']?.toString() ?? '';
  }
}

void main() {
  group('Lukas Reflector', () {
    setUp(() {});

    test('test', () {
      final _reflected = reflectClass(TestModel);
      final _instance = _reflected.newInstance(Symbol(''), []);

      print(_instance.reflectee);
    });

    test('Reflector Unit', () {
      var data = {'var_name': 'custom value'};

      final _instance =
          LukasReflectorUnit.reflectWithData(classType: TestModel, data: data);
      expect(_instance is TestModel, true);
    });
  });
}
