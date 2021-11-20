import 'package:elancer_fistproject/database/db_controller.dart';
import 'package:elancer_fistproject/database/db_operations.dart';
import 'package:elancer_fistproject/models/activities.dart';
import 'package:sqflite/sqflite.dart';

class ActivitiesDbController implements DbOperations<Activities>{
  final Database _database= DbController().database;

  @override
  Future<int> create(Activities object)async {
    return await _database.insert('activities', object.toMap());
  }

  @override
  Future<bool> delete(int id) async{
    int numberRows= await _database.delete('activities',where: 'id=?',whereArgs: [id]);
    return numberRows>0;
  }

  @override
  Future<List<Activities>> read() async {
    List<Map<String,dynamic>> rowsMap= await _database.query('activities');
    return rowsMap.map((Map<String,dynamic> rowMap) => Activities.fromMab(rowMap)).toList();
  }

  @override
  Future<Activities?> show(int id) async {
    List<Map<String,dynamic>> rows= await _database.query("activities",where: 'id=?',whereArgs: [id]);
    return rows.isNotEmpty? Activities.fromMab(rows.first):null;
  }

  @override
  Future<bool> update(Activities object) async{
    int numberOfRows= await _database.update("activities", object.toMap(),where: 'id=?',whereArgs: [object.id]);
    return numberOfRows>0;
  }



}