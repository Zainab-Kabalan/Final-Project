import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/widgets/buddyinfoW.dart';
import 'package:timer/widgets/buddystack.dart';
import 'package:timer/widgets/buttonscreationbuddy.dart';
import 'package:timer/widgets/buttonsforassets.dart';
import 'package:timer/widgets/infobkg.dart';
// import 'package:timer/studybuddydata/data.dart';

class Buddymakerscreen
    extends
        StatelessWidget {
  const Buddymakerscreen({
    required this.whatTochange,
    required this.chosenAsset,
    required this.savebuddy,
    required this.buddystack,
    required this.body,
    required this.change,
    required this.index,
    super.key,
  });
  final Fullbodyofchoice
  body;
  final void
  Function(
    Assestsofbuddy,
  )
  savebuddy;
  final Assestsofbuddy
  chosenAsset;
  final void
  Function(
    Assestsofbuddy,
    int index,
  )
  change;
  final void
  Function(
    Assestsofbuddy,
  )
  whatTochange;

  final Map<
    Assestsofbuddy,
    int
  >
  buddystack;
  final int index;
  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Center(
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment
                .end,
        children: [
          SizedBox(
            height:
                5,
          ),
          SizedBox(
            child: Infobkg(
              info:
                  chosenAsset,
              savebuddy:
                  savebuddy,
            ),
          ),
          SizedBox(
            height:
                200,
            child: Buddystack(
              body:
                  body,
              buddystack:
                  buddystack,
            ),
          ),
          SizedBox(
            height:
                40,
            child: Buttonscreationbuddy(
              whatTochange:
                  whatTochange,
            ),
          ),
          SizedBox(
            height:
                200,
            child: Buttonsforassets(
              body:
                  body,
              chosenAsset:
                  chosenAsset,
              index:
                  index,
              change:
                  change,
            ),
          ),
        ],
      ),
    );
  }
}
