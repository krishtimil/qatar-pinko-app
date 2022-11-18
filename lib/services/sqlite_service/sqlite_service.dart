import 'package:sqflite/sqflite.dart';

class SqliteService {
  Database? db;
  Future<void> openDb() async {
    db = await openDatabase('${getDatabasesPath()}/main.db', version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE Pinko (id INTEGER PRIMARY KEY, team TEXT, bet INTEGER)');
      await db.execute('CREATE TABLE RemainingBlc (remainingBlc INTEGER)');
    });
  }

  insertDataIntoDB() async {
    await openDb();
    int id1 = await db!.rawInsert(
        'INSERT INTO Pinko (team, bet, remainingBlc) VALUES("Qatar", 1234, 1000)');
  }

  getDataFromDB() async {
    await openDb();
    List<Map> list = await db!.rawQuery('SELECT * FROM PINKO');
    return list;
  }

  getTotalBet() async {
    List data = await getDataFromDB();
    int bet = 0;
    for (var i = 0; i < data.length; i++) {
      bet = bet + (data[i]['bet'] as int);
    }
    print(bet);
    print(await getDataFromDB());
    return bet;
  }

  
}
