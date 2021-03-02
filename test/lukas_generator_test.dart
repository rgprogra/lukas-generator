import 'package:lukas_generator/lukas_generator.dart';
import 'package:test/test.dart';

void main() {
  group('Lukas Generator', () {
    setUp(() {
      // awesome = Awesome();
    });

    test('Generator Unit parse', () {
      final template = StringBuffer();
      template.write(
          'test\ntemplate name:\$templateName\$ with \n var "foo" with value: \$foo\$');

      final unit = LukasGeneratorUnit(
        template: template,
        metadata: {
          'foo': 'bar',
          'templateName': 'Custom Template Name',
        },
      );

      final result = unit.tryParse();

      expect(result, isNotNull);
    });
  });
}
