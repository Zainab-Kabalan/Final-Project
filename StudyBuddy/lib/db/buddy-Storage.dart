import 'package:timer/db/buddydb.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';

void insertBuddy(
  buddy buddy,
) async {
  Buddydb database =
      Buddydb();
  final db =
      await database
          .getDatabase();
  db.insert(
    'buddy',
    buddy
        .buddystack,
  );
}

Future<List<buddy>>
loadBuddy() async {
  Buddydb database =
      Buddydb();
  final db =
      await database
          .getDatabase();
  final result =
      await db
          .query(
            'buddy',
          );
  List<buddy>
  resultList =
      result.map((
        row,
      ) {
        return buddy(
          Name:
              row['BuddyName']
                  as String,
          subject:
              row['BuddySubject']
                  as String,
          totaltime:
              row['BuddyTotalTime']
                  as int,
          clothes:
              row['BuddyClothes']
                  as int,
          skin:
              row['BuddySkin']
                  as int,
          eyes:
              row['BuddyEyes']
                  as int,
          accessories:
              row['BuddyAccessories']
                  as int,
          fronthair:
              row['BuddyFrontHair']
                  as int,
          backhair:
              row['BuddyBackHair']
                  as int,
        );
      }).toList();
  return resultList;
}
