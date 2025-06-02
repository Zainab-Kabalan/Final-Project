import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';

import 'package:timer/widgets/buddystack.dart';
import 'package:timer/widgets/buttonscreationbuddy.dart';
import 'package:timer/widgets/buttonsforassets.dart';
import 'package:timer/widgets/infobkg.dart';
// import 'package:timer/studybuddydata/data.dart';

class Buddymakerscreen
    extends
        StatefulWidget {
  const Buddymakerscreen({
    required this.Valuetaking,

    required this.subjecttaking,
    required this.whatTochange,
    required this.chosenAsset,
    required this.savebuddy,
    required this.buddystack,
    required this.body,
    required this.change,
    required this.index,
    required this.text,
    super.key,
  });

  final subjecttaking;
  final void
  Function(String)
  text;
  final Valuetaking;
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
    dynamic
  >
  buddystack;
  final int index;

  @override
  State<
    Buddymakerscreen
  >
  createState() =>
      _BuddymakerscreenState();
}

class _BuddymakerscreenState
    extends
        State<
          Buddymakerscreen
        > {
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
                  widget.chosenAsset,
              savebuddy:
                  widget.savebuddy,
              Valuetaking:
                  widget.Valuetaking,
              text:
                  widget.text,
              subjecttaking:
                  widget.subjecttaking,
            ),
          ),
          SizedBox(
            height:
                200,
            child: Buddystack(
              body:
                  widget.body,
              buddystack:
                  widget.buddystack,
            ),
          ),
          SizedBox(
            height:
                40,
            child: Buttonscreationbuddy(
              whatTochange:
                  widget.whatTochange,
            ),
          ),
          SizedBox(
            height:
                200,
            child: Buttonsforassets(
              body:
                  widget.body,
              chosenAsset:
                  widget.chosenAsset,
              index:
                  widget.index,
              change:
                  widget.change,
            ),
          ),
        ],
      ),
    );
  }
}
