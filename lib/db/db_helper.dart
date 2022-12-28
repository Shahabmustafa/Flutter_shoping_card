import 'dart:ffi';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io' as io;
import 'package:flutter_shopping/Model/card_model.dart';

class DBHelper{

  static Database? _db;

  Future<Database?> get db async{
    if(_db != null){
      return _db;
    }
    _db = await initDatabase();

  }
  initDatabase()async{
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path,'cart.db');
    var db = await openDatabase(path,version: 1, onCreate: _onCreate);
    return db;
  }
  _onCreate(Database db,int version)async{
    await db.execute('CREATE TABLE cart (id INTEGER PRIMARY KEY , productId VARCHAR UNIQUE,productName TEXT,initialPrice INTEGER, productPrice INTEGER , quantity INTEGER, unitTag TEXT , image TEXT )');
  }
  Future<Cart> insert(Cart cart)async{
    var dbClient = await db;
    await dbClient!.insert('cart', cart.toMap());
    return cart;

  }
}