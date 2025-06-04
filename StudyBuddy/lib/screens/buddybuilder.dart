import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/models/BuddyInfo/buddyinfo.dart';
import 'package:timer/screens/timerclass.dart';

import 'package:timer/widgets/buddystack.dart';
import 'package:timer/widgets/buttonscreationbuddy.dart';
import 'package:timer/widgets/buttonsforassets.dart';
import 'package:timer/widgets/infobkg.dart';
// import 'package:timer/studybuddydata/data.dart';

class Buddymakerscreen
    extends
        StatefulWidget {
  Buddymakerscreen({
    required this.add,
    required this.totaltimestudied,
    required this.info,
    required this.studdybuddies,
    required this.Valuetaking,
    required this.subjecttaking,
    required this.chosenAsset,
    required this.buddystack,
    required this.body,
    required this.index,
    this.editingIndex,
    required this.popsave,
    super.key,
  });
  final void
  Function()
  popsave;

  int? editingIndex;
  final subjecttaking;
  final Valuetaking;
  final Fullbodyofchoice
  body;
  int
  totaltimestudied;
  Assestsofbuddy
  chosenAsset;
  final void
  Function(
    Assestsofbuddy,
    int,
    int,
    List<
      Map<
        Assestsofbuddy,
        dynamic
      >
    >,
  )
  add;

  final Map<
    Assestsofbuddy,
    dynamic
  >
  buddystack;
  final int index;
  final List<
    Map<
      Assestsofbuddy,
      dynamic
    >
  >
  studdybuddies;
  Buddyinfo info;
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
  late Timerclass
  time;
  late Buddystack
  buddy;
  @override
  void initState() {
    buddy = Buddystack(
      body:
          widget
              .body,
      buddystack:
          widget
              .buddystack,
    );
    super
        .initState();
  }

  void save(
    Assestsofbuddy
    type,
  ) {
    setState(() {
      if (widget
              .editingIndex !=
          null) {
        widget
            .studdybuddies[widget
            .editingIndex!] = Map.from(
          widget
              .buddystack,
        );
      }
      if (widget
              .editingIndex ==
          null) {
        showDialog(
          context:
              context,
          builder:
              (
                context,
              ) => AlertDialog(
                title: Text(
                  '${widget.buddystack[Assestsofbuddy.name]} Created!',
                ),
                content: Text(
                  'Your buddy has been created!',
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pop();
                    },
                    child: Text(
                      'OK',
                    ),
                  ),
                ],
              ),
        ).then((_) {
          Navigator.pop(
            context,
            buddy
                .buddystack,
          );
        });
      } else {
        showDialog(
          context:
              context,
          builder:
              (
                context,
              ) => AlertDialog(
                title: Text(
                  '${widget.buddystack[Assestsofbuddy.name]} Updated!',
                ),
                content: Text(
                  'Your buddy has been updated!',
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pop();
                    },
                    child: Text(
                      'OK',
                    ),
                  ),
                ],
              ),
        ).then((_) {
          Navigator.pop(
            context,
            buddy
                .buddystack,
          );
        });
      }
    });
  }

  void chosen(
    Assestsofbuddy
    type,
    int index,
  ) {
    setState(() {
      buddy.buddystack[type] =
          index;
    });
  }

  void textbuddy(
    text,
  ) {
    setState(() {
      widget
          .info = Buddyinfo(
        name:
            widget
                .Valuetaking
                .text,
        subject:
            widget
                .subjecttaking
                .text,
        totaltimestudied:
            widget
                .totaltimestudied,
      );
      buddy.buddystack[Assestsofbuddy
              .name] =
          widget
              .info
              .name;
      buddy.buddystack[Assestsofbuddy
              .subject] =
          widget
              .info
              .subject;
      buddy.buddystack[Assestsofbuddy
              .totaltime] =
          widget
              .info
              .totaltimestudied;
    });
  }

  void whatTochange(
    Assestsofbuddy
    current,
  ) {
    setState(() {
      widget.chosenAsset =
          current;
    });
  }

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
                  save,
              Valuetaking:
                  widget.Valuetaking,
              text:
                  textbuddy,
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
                  whatTochange,
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
                  chosen,
            ),
          ),
        ],
      ),
    );
  }
}
