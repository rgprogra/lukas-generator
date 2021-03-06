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
      print(result);
      expect(result, isNotNull);
    });

    test('LukasGenerator parse', () {
      final template = StringBuffer();
      template.write(
          'test\ntemplate name:\$templateName\$ with \n var "foo" with value: \$foo\$');

      final result = LukasGenerator.tryParseAll(template: template, metadata: [
        {
          'foo': 'custom value 1',
          'templateName': 'Custom Template Name 1',
        },
        {
          'foo': 'custom value 2',
          'templateName': 'Custom Template Name 2',
        },
        {
          'foo': 'custom value 3',
          'templateName': 'Custom Template Name 3',
        },
        {
          'foo': 'custom value 4',
          'templateName': 'Custom Template Name 4',
        },
      ]);

      print(result?.toString());
      expect(result, isNotNull);
    });
  });
}
