
class DailyActivity {
  late int id;
  late int activityId;
  late String date;


  DailyActivity(this.activityId, this.date);

  DailyActivity.fromMap(Map<String, dynamic> rowMap) {
    id = rowMap['id'];
    activityId = rowMap['activity_id'];
    date = rowMap['date'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> rowMap = <String, dynamic>{};
    rowMap['activity_id'] = activityId;
    rowMap['date'] = date;
    return rowMap;
  }
}
