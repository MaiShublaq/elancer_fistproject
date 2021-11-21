import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbController{
  static final DbController _instance=DbController._internal();
  late Database _database;

  DbController._internal();
  factory DbController(){
    return _instance;
  }
  Database get database => _database;


  Future<void> initDatabase ()async{
    Directory directory=await getApplicationDocumentsDirectory();
    String path= join(directory.path,'app_db.sql');
    _database=await openDatabase(
      path,
      version: 1,
      onOpen: (db){} ,
      onCreate: (Database db, int version) async {
   //await db.execute('CREATE TABLE exercises('
   //    'id INTEGER PRIMARY KEY AUTOINCREMENT,'
   //    'name TEXT NOT NULL,'
   //    'benefites TEXT NOT NULL,'
   //    'alternative TEXT NOT NULL,'
   //    'firstStep TEXT NOT NULL,'
   //    'secondStep TEXT NOT NULL,'
   //    'thirdStep TEXT NOT NULL,'
   //    'img TEXT NOT NULL'
   //    ')');

   //await db.execute('CREATE TABLE cosmeticsCategories('
   //    'id INTEGER PRIMARY KEY AUTOINCREMENT,'
   //    'name TEXT NOT NULL'
   // ')');

   //await db.execute('CREATE TABLE cosmetics('
   //    'id INTEGER PRIMARY KEY AUTOINCREMENT,'
   //    'name TEXT NOT NULL,'
   //    'brief TEXT NOT NULL,'
   //    'info TEXT NOT NULL,'
   //    'idCategory INTEGER NOT NULL,'
   //    'mainImg LONGBLOB NOT NULL,'
   //    'img LONGBLOB NOT NULL'
   //    ')');

   //await db.execute('CREATE TABLE blogs('
   //    'id INTEGER PRIMARY KEY AUTOINCREMENT,'
   //    'title TEXT NOT NULL,'
   //    'autherName TEXT NOT NULL,'
   //    'autherTitle TEXT NOT NULL,'
   //    'autherImg LONGBLOB NOT NULL,'
   //    'content TEXT NOT NULL,'
   //    'img LONGBLOB NOT NULL'
   //    ')');
        await db.execute('CREATE TABLE activities('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'title TEXT NOT NULL,'
            'info TEXT NOT NULL,'
            'period TEXT NOT NULL,'
            'img TEXT NOT NULL'
            ')');

        await db.execute('CREATE TABLE daily_activities('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'activity_id TEXT NOT NULL,'
            'date TEXT NOT NULL'
            ')');

      },
      onUpgrade: (Database db, int oldVersion,int newVersion) {},
      onDowngrade: ( db,  oldVersion,  newVersion) {},
    );


  }
}