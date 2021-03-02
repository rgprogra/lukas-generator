// Parse a template string using metadata object values
class LukasGeneratorUnit {
  final StringBuffer template;
  final Map<dynamic, dynamic> metadata;

  LukasGeneratorUnit({
    this.template,
    this.metadata,
  });

  String tryParse() {
    if (template == null || metadata == null) {
      return null;
    }

    var _result = template.toString();
    // match all between $ character
    final _pattern = RegExp(r'\$(.*?)\$');

    try {
      return _result.replaceAllMapped(_pattern,
          (match) => metadata[match.group(1)]?.toString() ?? match.group(0));
    } on RangeError {
      return null;
    }
  }
}
