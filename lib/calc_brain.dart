class CalcBrain {
  final int weight;
  CalcBrain({this.weight});

  String getResult() {
    return ((weight * weight) / 4).toStringAsFixed(0);
  }
}
