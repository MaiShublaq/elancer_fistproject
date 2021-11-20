
//mport 'package:elancer_fistproject/database/db_controller.dart';
//mport 'package:elancer_fistproject/database/db_operations.dart';
//mport 'package:elancer_fistproject/models/cosmetics_categories.dart';
//mport 'package:sqflite/sqflite.dart';

//lass CosmeticsCategoriesDbController implements DbOperations<CosmeticsCategories>{
// final Database _database= DbController().database;

// @override
// Future<int> create(CosmeticsCategories object)async {
//   return await _database.insert('cosmeticsCategories', object.toMap());
// }

// @override
// Future<bool> delete(int id) async{
//   int numberRows= await _database.delete('cosmeticsCategories',where: 'id=?',whereArgs: [id]);
//   return numberRows>0;
// }

// @override
// Future<List<CosmeticsCategories>> read() async {
//   List<Map<String,dynamic>> rowsMap= await _database.query('cosmeticsCategories');
//   return rowsMap.map((Map<String,dynamic> rowMap) => CosmeticsCategories.fromMab(rowMap)).toList();
// }

// @override
// Future<CosmeticsCategories?> show(int id) async {
//   List<Map<String,dynamic>> rows= await _database.query("cosmeticsCategories",where: 'id=?',whereArgs: [id]);
//   return rows.isNotEmpty? CosmeticsCategories.fromMab(rows.first):null;
// }

// @override
// Future<bool> update(CosmeticsCategories object) async{
//   int numberOfRows= await _database.update("cosmeticsCategories", object.toMap(),where: 'id=?',whereArgs: [object.id]);
//   return numberOfRows>0;
// }



//