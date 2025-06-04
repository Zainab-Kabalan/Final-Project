import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Buddydb {
  Future<Database>
  getDatabase() async {
    String dbPath =
        await getDatabasesPath();
    Database
    db = await openDatabase(
      join(
        dbPath,
        'buddy.db',
      ),
      onCreate:
          (
            db,
            version,
          ) => db.execute(
            'CREATE TABLE Buddy( BuddyName Text PRIMARY KEY AUTOINCREMENT, BuddySubject TEXT,BuddyTotalTime INTEGER, BuddyClothes INTEGER, BuddySkin INTEGER, BuddyEyes INTEGER, BuddyAccessories INTEGER, BuddyFrontHair INTEGER, BuddyBackHair INTEGER)',
          ),
      version: 1,
    );
    return db;
  }
}
