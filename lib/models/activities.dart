class Activities {
  late int id;
  late String title;
  late String info;
  late String period;
  late String img;
  bool done = false;

  Activities(
      {required this.title,
      required this.info,
      required this.period,
      required this.img});

  Activities.fromMab(Map<String, dynamic> rowMap) {
    id = rowMap['id'];
    title = rowMap['title'];
    info = rowMap['info'];
    period = rowMap['period'];
    img = rowMap['img'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> rowMap = <String, dynamic>{};
    rowMap['title'] = title;
    rowMap['info'] = info;
    rowMap['period'] = period;
    rowMap['img'] = img;
    return rowMap;
  }
}
