import 'package:meta/meta.dart';

import 'lukas_generator_unit.dart';

class LukasGenerator {
  static List<String> tryParseAll({
    @required StringBuffer template,
    @required List<Map<dynamic, dynamic>> metadata,
  }) {
    try {
      final result = metadata.asMap().entries.map((entry) {
        final index = entry.key;
        final mt = entry.value;
        final _r =
            LukasGeneratorUnit(template: template, metadata: mt).tryParse();
        if (_r == null) {
          throw Exception('Error parsing metadata with index: $index .');
        }

        return _r.toString();
      }).toList();

      return result;
    } on Exception {
      return null;
    }
  }
}
