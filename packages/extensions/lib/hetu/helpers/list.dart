import 'package:hetu_script/hetu_script.dart';

List<dynamic> mapList(
  final List<dynamic> data,
  final HTFunction fn,
) =>
    data
        .asMap()
        .map(
          (final int i, final dynamic x) => MapEntry<int, dynamic>(
            i,
            fn.call(positionalArgs: <dynamic>[i, x]),
          ),
        )
        .values
        .toList();

List<dynamic> filterList(
  final List<dynamic> data,
  final HTFunction fn,
) {
  final List<dynamic> out = <dynamic>[];

  for (int i = 0; i < data.length; i++) {
    if (fn.call(positionalArgs: <dynamic>[i, data[i]]) as bool) {
      out.add(data[i]);
    }
  }

  return out;
}

dynamic findList(
  final List<dynamic> data,
  final HTFunction fn,
) {
  for (int i = 0; i < data.length; i++) {
    if (fn.call(positionalArgs: <dynamic>[i, data[i]]) as bool) {
      return data[i];
    }
  }

  return null;
}