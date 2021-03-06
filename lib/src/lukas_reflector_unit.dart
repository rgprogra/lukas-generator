import 'dart:mirrors';

import 'package:meta/meta.dart';

class LukasReflectorUnit {
  final Type type;
  final Map<dynamic, dynamic> data;

  const LukasReflectorUnit({
    @required this.type,
    @required this.data,
  });

  // static void reflectClass({Type classType, Map<String, String> metadata}) {}

  Type getInstance<Type>() {
    final _reflected = reflectClass(type);
    final _instance = _reflected.newInstance(
      Symbol(''),
      [],
    );
    _instance.invoke(#readFromMap, [data]);

    return _instance.hasReflectee ? _instance.reflectee : null;
  }
}
