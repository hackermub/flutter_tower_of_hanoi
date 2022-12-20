class Steps {
  int numberOfDisks;

  List<List<int>> towers = [[], [], []];
  List<List<List<int>>> stepsList = [];

  void getNext(int n, List<int> source, List<int> target, List<int> aux) {
    if (n == 1) {
      target.add(source.removeLast());
      stepsList.add(towers.map((e) => List<int>.from(e)).toList());
    } else {
      getNext(n - 1, source, aux, target);
      getNext(1, source, target, aux);
      getNext(n - 1, aux, target, source);
    }
  }

  Steps({required this.numberOfDisks}) {
    towers[0] = [for (var i = numberOfDisks; i >= 1; i--) i];
    stepsList.add(towers.map((e) => List<int>.from(e)).toList());
    getNext(numberOfDisks, towers[0], towers[2], towers[1]);
  }
}
