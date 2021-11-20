//import 'package:elancer_fistproject/database/db_controller.dart';
//import 'package:elancer_fistproject/database/db_operations.dart';
//import 'package:elancer_fistproject/models/exercises.dart';
//import 'package:sqflite/sqflite.dart';
//
//class ExercisesDbController implements DbOperations<Exercises>{
//  final Database _database= DbController().database;
//
//  @override
//  Future<int> create(Exercises object)async {
//    return await _database.insert('exercises', object.toMap());
//  }
//
//  @override
//  Future<bool> delete(int id) async{
//    int numberRows= await _database.delete('exercises',where: 'id=?',whereArgs: [id]);
//    return numberRows>0;
//  }
//
//  @override
//  Future<List<Exercises>> read() async {
//    List<Map<String,dynamic>> rowsMap= await _database.query('exercises');
//    return rowsMap.map((Map<String,dynamic> rowMap) => Exercises.fromMab(rowMap)).toList();
//  }
//
//  @override
//  Future<Exercises?> show(int id) async {
//    List<Map<String,dynamic>> rows= await _database.query("exercises",where: 'id=?',whereArgs: [id]);
//    return rows.isNotEmpty? Exercises.fromMab(rows.first):null;
//  }
//
//  @override
//  Future<bool> update(Exercises object) async{
//    int numberOfRows= await _database.update("exercises", object.toMap(),where: 'id=?',whereArgs: [object.id]);
//    return numberOfRows>0;
//  }
//
//
//
//}