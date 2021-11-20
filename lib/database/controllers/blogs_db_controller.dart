//import 'package:elancer_fistproject/database/db_controller.dart';
//import 'package:elancer_fistproject/database/db_operations.dart';
//import 'package:elancer_fistproject/models/blogs.dart';
//import 'package:sqflite/sqflite.dart';
//
//class BlogsDbController implements DbOperations<Blogs>{
//  final Database _database= DbController().database;
//
//  @override
//  Future<int> create(Blogs object)async {
//    return await _database.insert('blogs', object.toMap());
//  }
//
//  @override
//  Future<bool> delete(int id) async{
//    int numberRows= await _database.delete('blogs',where: 'id=?',whereArgs: [id]);
//    return numberRows>0;
//  }
//
//  @override
//  Future<List<Blogs>> read() async {
//    List<Map<String,dynamic>> rowsMap= await _database.query('blogs');
//    return rowsMap.map((Map<String,dynamic> rowMap) => Blogs.fromMab(rowMap)).toList();
//  }
//
//  @override
//  Future<Blogs?> show(int id) async {
//    List<Map<String,dynamic>> rows= await _database.query("blogs",where: 'id=?',whereArgs: [id]);
//    return rows.isNotEmpty? Blogs.fromMab(rows.first):null;
//  }
//
//  @override
//  Future<bool> update(Blogs object) async{
//    int numberOfRows= await _database.update("blogs", object.toMap(),where: 'id=?',whereArgs: [object.id]);
//    return numberOfRows>0;
//  }
//
//
//
//}