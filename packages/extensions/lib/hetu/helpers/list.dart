import 'package:hetu_script/hetu_script.dart';

const String listDefinitions = '''
const ListMapper: type = fun(i: num, item) -> bool; // -> bool
external fun mapList(data: List, mapper: ListMapper) -> List; // -> List<dynamic>

const ListFilterer: type = fun(i: num, item) -> bool;
external fun filterList(data: List, filterer: ListFilterer) -> List; // -> List<dynamic>
external fun findList(data: List, filterer: ListFilterer); // -> dynamic?

const ListEachCb: type = fun(i: num, item);
external fun eachList(data: List, cb: ListEachCb) -> void;

external fun mergeList(m1: List, m2: List) -> List; // -> List<dynamic>
external fun rangeList(a: num, b: num) -> List<num>;
external fun flattenList(data: List, level: num) -> List; // -> List<dynamic>
external fun deepFlattenList(data: List) -> List; // -> List<dynamic>
''';

List<int> rangeList(final int a, final int b) {
  final int length = (b - a).abs();
  return b > a
      ? List<int>.generate(length, (final int i) => i + a)
      : List<int>.generate(length, (final int i) => a - i);
}

List<dynamic> mergeList(
  final List<dynamic> m1,
  final List<dynamic> m2,
) =>
    <dynamic>[
      ...m1,
      ...m2,
    ];

void eachList(
  final List<dynamic> data,
  final HTFunction fn,
) {
  data.asMap().forEach(
    (final int i, final dynamic x) {
      fn.call(positionalArgs: <dynamic>[i, x]);
    },
  );
}

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

List<dynamic> flattenList(final List<dynamic> data, final int level) =>
    data.cast<List<dynamic>>().expand((final List<dynamic> x) {
      Iterable<dynamic> flat = x;
      int done = 1;

      while (done < level) {
        flat = flat.cast<List<dynamic>>().expand((final List<dynamic> x) => x);
        done++;
      }

      return flat;
    }).toList();

List<dynamic> deepFlattenList(final List<dynamic> data) {
  final List<dynamic> flat = <dynamic>[];

  for (final dynamic x in data) {
    if (x is List) {
      flat.addAll(deepFlattenList(x));
    } else {
      flat.add(x);
    }
  }

  return flat;
}
