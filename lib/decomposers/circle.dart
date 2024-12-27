import 'package:simple_sparse_list/simple_sparse_list.dart';

import '../decomposer.dart';

class CircleDecomposer extends Decomposer {
  const CircleDecomposer();

  @override
  List<int>? decompose(int character) {
    if (character < 0 || character > 1114111) {
      throw RangeError.range(character, 0, 1114111, 'character');
    }

    final result = _data[character];
    return result?.toList();
  }
}

SparseList<List<int>?> _unpack(List<(int, List<int>)> data) {
  final list = <(int, int, List<int>)>[];
  var prev = 0;
  for (var i = 0; i < data.length; i++) {
    final element = data[i];
    final code = element.$1 + prev;
    list.add((code, code, element.$2));
    prev = code;
  }

  return SparseList(list, null, length: 0x110000);
}

final _data = _unpack(const [(9312, [49]), (1, [50]), (1, [51]), (1, [52]), (1, [53]), (1, [54]), (1, [55]), (1, [56]), (1, [57]), (1, [49, 48]), (1, [49, 49]), (1, [49, 50]), (1, [49, 51]), (1, [49, 52]), (1, [49, 53]), (1, [49, 54]), (1, [49, 55]), (1, [49, 56]), (1, [49, 57]), (1, [50, 48]), (67, [65]), (1, [66]), (1, [67]), (1, [68]), (1, [69]), (1, [70]), (1, [71]), (1, [72]), (1, [73]), (1, [74]), (1, [75]), (1, [76]), (1, [77]), (1, [78]), (1, [79]), (1, [80]), (1, [81]), (1, [82]), (1, [83]), (1, [84]), (1, [85]), (1, [86]), (1, [87]), (1, [88]), (1, [89]), (1, [90]), (1, [97]), (1, [98]), (1, [99]), (1, [100]), (1, [101]), (1, [102]), (1, [103]), (1, [104]), (1, [105]), (1, [106]), (1, [107]), (1, [108]), (1, [109]), (1, [110]), (1, [111]), (1, [112]), (1, [113]), (1, [114]), (1, [115]), (1, [116]), (1, [117]), (1, [118]), (1, [119]), (1, [120]), (1, [121]), (1, [122]), (1, [48]), (3418, [21839]), (1, [24188]), (1, [25991]), (1, [31631]), (10, [50, 49]), (1, [50, 50]), (1, [50, 51]), (1, [50, 52]), (1, [50, 53]), (1, [50, 54]), (1, [50, 55]), (1, [50, 56]), (1, [50, 57]), (1, [51, 48]), (1, [51, 49]), (1, [51, 50]), (1, [51, 51]), (1, [51, 52]), (1, [51, 53]), (1, [4352]), (1, [4354]), (1, [4355]), (1, [4357]), (1, [4358]), (1, [4359]), (1, [4361]), (1, [4363]), (1, [4364]), (1, [4366]), (1, [4367]), (1, [4368]), (1, [4369]), (1, [4370]), (1, [4352, 4449]), (1, [4354, 4449]), (1, [4355, 4449]), (1, [4357, 4449]), (1, [4358, 4449]), (1, [4359, 4449]), (1, [4361, 4449]), (1, [4363, 4449]), (1, [4364, 4449]), (1, [4366, 4449]), (1, [4367, 4449]), (1, [4368, 4449]), (1, [4369, 4449]), (1, [4370, 4449]), (1, [4366, 4449, 4535, 4352, 4457]), (1, [4364, 4462, 4363, 4468]), (1, [4363, 4462]), (2, [19968]), (1, [20108]), (1, [19977]), (1, [22235]), (1, [20116]), (1, [20845]), (1, [19971]), (1, [20843]), (1, [20061]), (1, [21313]), (1, [26376]), (1, [28779]), (1, [27700]), (1, [26408]), (1, [37329]), (1, [22303]), (1, [26085]), (1, [26666]), (1, [26377]), (1, [31038]), (1, [21517]), (1, [29305]), (1, [36001]), (1, [31069]), (1, [21172]), (1, [31192]), (1, [30007]), (1, [22899]), (1, [36969]), (1, [20778]), (1, [21360]), (1, [27880]), (1, [38917]), (1, [20241]), (1, [20889]), (1, [27491]), (1, [19978]), (1, [20013]), (1, [19979]), (1, [24038]), (1, [21491]), (1, [21307]), (1, [23447]), (1, [23398]), (1, [30435]), (1, [20225]), (1, [36039]), (1, [21332]), (1, [22812]), (1, [51, 54]), (1, [51, 55]), (1, [51, 56]), (1, [51, 57]), (1, [52, 48]), (1, [52, 49]), (1, [52, 50]), (1, [52, 51]), (1, [52, 52]), (1, [52, 53]), (1, [52, 54]), (1, [52, 55]), (1, [52, 56]), (1, [52, 57]), (1, [53, 48]), (17, [12450]), (1, [12452]), (1, [12454]), (1, [12456]), (1, [12458]), (1, [12459]), (1, [12461]), (1, [12463]), (1, [12465]), (1, [12467]), (1, [12469]), (1, [12471]), (1, [12473]), (1, [12475]), (1, [12477]), (1, [12479]), (1, [12481]), (1, [12484]), (1, [12486]), (1, [12488]), (1, [12490]), (1, [12491]), (1, [12492]), (1, [12493]), (1, [12494]), (1, [12495]), (1, [12498]), (1, [12501]), (1, [12504]), (1, [12507]), (1, [12510]), (1, [12511]), (1, [12512]), (1, [12513]), (1, [12514]), (1, [12516]), (1, [12518]), (1, [12520]), (1, [12521]), (1, [12522]), (1, [12523]), (1, [12524]), (1, [12525]), (1, [12527]), (1, [12528]), (1, [12529]), (1, [12530]), (114221, [67]), (1, [82]), (1, [67, 68]), (1, [87, 90]), (290, [24471]), (1, [21487])]);
