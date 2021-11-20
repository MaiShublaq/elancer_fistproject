//import 'package:elancer_fistproject/database/db_controller.dart';
//import 'package:elancer_fistproject/database/db_operations.dart';
//import 'package:elancer_fistproject/models/cosmetics.dart';
//import 'package:sqflite/sqflite.dart';
//
//class CosmeticsDbController implements DbOperations<Cosmetics>{
//  final Database _database= DbController().database;
//
//  @override
//  Future<int> create(Cosmetics object)async {
//    return await _database.insert('cosmetics', object.toMap());
//  }
//
//  @override
//  Future<bool> delete(int id) async{
//    int numberRows= await _database.delete('cosmetics',where: 'id=?',whereArgs: [id]);
//    return numberRows>0;
//  }
//
//  @override
//  Future<List<Cosmetics>> read() async {
//    List<Map<String,dynamic>> rowsMap= await _database.query('cosmetics');
//    return rowsMap.map((Map<String,dynamic> rowMap) => Cosmetics.fromMab(rowMap)).toList();
//  }
//
//  @override
//  Future<Cosmetics?> show(int id) async {
//    List<Map<String,dynamic>> rows= await _database.query("cosmetics",where: 'id=?',whereArgs: [id]);
//    return rows.isNotEmpty? Cosmetics.fromMab(rows.first):null;
//  }
//
//  @override
//  Future<bool> update(Cosmetics object) async{
//    int numberOfRows= await _database.update("cosmetics", object.toMap(),where: 'id=?',whereArgs: [object.id]);
//    return numberOfRows>0;
//  }
//
//
//
//}