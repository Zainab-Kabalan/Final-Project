// import 'package:flutter/material.dart';
// import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
// import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
// import 'package:timer/widgets/BuddychosingDropDownButton.dart';
// import 'package:timer/widgets/textinputoftimer.dart';

// class Cardfortimer
//     extends
//         StatelessWidget {
//   const Cardfortimer({
//     required this.switchbuddies,
//     required this.selectedBuddy,
//     required this.studdybuddies,
//     required this.buddystack,
//     required this.body,
//     super.key,
//   });
//   final void
//   Function(int)
//   switchbuddies;
//   final int
//   selectedBuddy;
//   final Fullbodyofchoice
//   body;
//   final List<
//     Map<
//       Assestsofbuddy,
//       int
//     >
//   >
//   studdybuddies;
//   final Map<
//     Assestsofbuddy,
//     int
//   >
//   buddystack;

//   @override
//   Widget build(
//     BuildContext
//     context,
//   ) {
//     return Card(
//       color:
//           Color.fromARGB(
//             144,
//             150,
//             239,
//             255,
//           ),
//       margin:
//           EdgeInsets.all(
//             10,
//           ),
//       elevation: 3,
//       shape: RoundedRectangleBorder(
//         borderRadius:
//             BorderRadius.circular(
//               20,
//             ),
//       ),
//       child: Column(
//         children: [
//           Buddychosingdropdownbutton(
//             switchbuddies:
//                 switchbuddies,
//             selectedBuddy:
//                 selectedBuddy,
//             studdybuddies:
//                 studdybuddies,
//             buddystack:
//                 buddystack,
//             body:
//                 body,
//           ),
//           // Textinputoftimer(),
//         ],
//       ),
//     );
//   }
// }
