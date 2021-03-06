import 'dart:mirrors';

class LukasReflectorUnit {
  // static void reflectClass({Type classType, Map<String, String> metadata}) {}

  static T reflectWithData<T>({T classType, Map<dynamic, dynamic> data}) {
    // final _reflected = reflectType(T);
    // final _instance = _reflected.newInstance(
    //   Symbol(''),
    //   [],
    // );
    // _instance.invoke(Symbol('readFromMap'), [data]);

    // return _instance.hasReflectee ? _instance.reflectee : null;
    return classType;
  }
}
