import 'package:elancer_fistproject/database/db_controller.dart';
import 'package:elancer_fistproject/database/db_operations.dart';
import 'package:elancer_fistproject/models/activities.dart';
import 'package:elancer_fistproject/models/daily_activity.dart';
import 'package:sqflite/sqflite.dart';

class DailyActivitiesDbController implements DbOperations<DailyActivity> {
  final Database _database = DbController().database;

  @override
  Future<int> create(DailyActivity object) async {
    return await _database.insert('daily_activities', object.toMap());
  }

  @override
  Future<bool> delete(int id) async {
    int numberRows = await _database
        .delete('daily_activities', where: 'id=?', whereArgs: [id]);
    return numberRows > 0;
  }

  @override
  Future<List<DailyActivity>> read() async {
    List<Map<String, dynamic>> rowsMap =
        await _database.query('daily_activities');
    return rowsMap
        .map((Map<String, dynamic> rowMap) => DailyActivity.fromMap(rowMap))
        .toList();
  }

  @override
  Future<List<DailyActivity>> readByDate({required String date}) async {
    List<Map<String, dynamic>> rowsMap = await _database
        .query('daily_activities', where: 'date = ?', whereArgs: [date]);
    return rowsMap
        .map((Map<String, dynamic> rowMap) => DailyActivity.fromMap(rowMap))
        .toList();
  }

  @override
  Future<DailyActivity?> show(int id) {
    // TODO: implement show
    throw UnimplementedError();
  }

  @override
  Future<bool> update(DailyActivity object) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
