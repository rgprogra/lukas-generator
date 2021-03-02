import 'package:lukas_generator/lukas_generator.dart';

void main() {
  final template = StringBuffer();
  template.write('example template \n var varName = \$varName\$; \$foo\$');

  final generatedUnit = LukasGeneratorUnit(
    template: template,
    metadata: {'varName': 'custom string value', 'foo': 'bar'},
  );

  final parsed = generatedUnit.tryParse()?.toString() ?? '';

  print(parsed);
}
