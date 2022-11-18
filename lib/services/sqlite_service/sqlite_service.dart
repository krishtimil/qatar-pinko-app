import 'package:sqflite/sqflite.dart';

class SqliteService {
  late Database db;
  Future<void> openDb() async {
    db = await openDatabase('${getDatabasesPath()}/main.db', version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE Pinko (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
    });
  }

  insertDataIntoDB(int name) async {
    await openDb();
    await db.execute('INSERT ');
  }
}
