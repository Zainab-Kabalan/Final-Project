// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
// import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
// import 'package:timer/models/BuddyInfo/buddyinfo.dart';
// import 'package:timer/screens/buddy.dart';
// import 'package:timer/screens/buddybuilder.dart';

// void main(
//   List<String> args,
// ) {
//   runApp(
//     MaterialApp(
//       home:
//           Main(), // your main widget
//       debugShowCheckedModeBanner:
//           false,
//     ),
//   );
// }

// class Main
//     extends
//         StatelessWidget {
//   const Main({
//     super.key,
//   });

//   Future<bool>
//   hasCharacter() async {
//     final prefs =
//         await SharedPreferences.getInstance();
//     return prefs
//         .containsKey(
//           'buddy',
//         );
//   }

//   @override
//   Widget build(
//     BuildContext
//     context,
//   ) {
//     return FutureBuilder<
//       bool
//     >(
//       future:
//           hasCharacter(),
//       builder: (
//         context,
//         snapshot,
//       ) {
//         if (!snapshot
//             .hasData) {
//           return Center(
//             child:
//                 CircularProgressIndicator(),
//           );
//         }
//         if (snapshot
//                 .data ==
//             true) {
//           return Bodyofchoice();
//         } else {
//           return Buddymakerscreen(
//             totaltimestudied:
//                 0,
//             info: Buddyinfo(
//               totaltimestudied:
//                   0,
//               name:
//                   '',
//               subject:
//                   '',
//             ),
//             studdybuddies:
//                 [],
//             Valuetaking:
//                 TextEditingController(),
//             subjecttaking:
//                 TextEditingController(),
//             chosenAsset:
//                 Assestsofbuddy.clothes,
//             buddystack:
//                 {},
//             body: Fullbodyofchoice(
//               buddyeyes: {
//                 Assestsofbuddy.eyes:
//                     [],
//               },
//               buddyskin: {
//                 Assestsofbuddy.skin:
//                     [],
//               },
//               buddyclothes: {
//                 Assestsofbuddy.clothes:
//                     [],
//               },
//               buddyaccesories: {
//                 Assestsofbuddy.accessories:
//                     [],
//               },
//               buddybackhair: {
//                 Assestsofbuddy.backhair:
//                     [],
//               },
//               buddyfronthair: {
//                 Assestsofbuddy.fronthair:
//                     [],},
//             ),
//             index:
//                 0,
//           );
//         }
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:timer/screens/buddy.dart';

void main(
  List<String> args,
) {
  runApp(
    MaterialApp(
      home:
          Bodyofchoice(),
    ),
  );
}
