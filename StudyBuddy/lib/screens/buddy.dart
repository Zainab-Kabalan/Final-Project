import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/screens/BuddyTimer.dart';
import 'package:timer/models/studybuddydata/data.dart';
import 'package:timer/screens/buddybuilder.dart';
import 'package:timer/widgets/buddystack.dart';

class Bodyofchoice
    extends
        StatefulWidget {
  const Bodyofchoice({
    super.key,
  });

  @override
  State<
    Bodyofchoice
  >
  createState() =>
      _BodyofchoiceState();
}

class _BodyofchoiceState
    extends
        State<
          Bodyofchoice
        > {
  late int
  selectedBuddy;
  Assestsofbuddy
  chosenasset =
      Assestsofbuddy
          .clothes;
  int indexofbuddy =
      0;
  late Fullbodyofchoice
  body;
  List<
    Map<
      Assestsofbuddy,
      int
    >
  >
  studdybuddies = [
  ];

  Map<
    Assestsofbuddy,
    int
  >
  buddystack = {
    Assestsofbuddy
        .accessories: 0,
    Assestsofbuddy
        .backhair: 0,
    Assestsofbuddy
        .fronthair: 0,
    Assestsofbuddy
        .clothes: 0,
    Assestsofbuddy
        .eyes: 0,
    Assestsofbuddy
        .skin: 0,
  };
  late Buddystack
  buddy;
  String
  currentscreen =
      'maker';
  @override
  void initState() {
    body =
        fullbody[0];
    buddy = Buddystack(
      body: body,
      buddystack:
          buddystack,
    );
    selectedBuddy =
        0;
    super
        .initState();
  }

  void chosenBuddy(
    int newbuddy,
  ) {
    setState(() {
      selectedBuddy =
          newbuddy;
      studdybuddies[newbuddy];
    });
  }

  void save(
    Assestsofbuddy
    type,
  ) {
    setState(() {
      studdybuddies.add(
        Map.from(
          buddystack,
        ),
      );
    });
    currentscreen =
        'timer';
    print(
      studdybuddies,
    );
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

  void whatTochange(
    Assestsofbuddy
    current,
  ) {
    setState(() {
      chosenasset =
          current;
    });
  }

  @override
  Widget build(
    BuildContext
    context,
  ) {
    Widget
    screen = Buddymakerscreen(
      body: body,
      change:
          chosen,
      buddystack:
          buddystack,
      savebuddy:
          save,
      index:
          indexofbuddy,
      whatTochange:
          whatTochange,
      chosenAsset:
          chosenasset,
    );
    if (currentscreen ==
            'timer' &&
        studdybuddies
                .length ==
            2) {
      screen = Buddytimer(
        studdybuddies:
            studdybuddies,
        buddystack:
            buddystack,
        body: body,
        selectedBuddy:
            selectedBuddy,
        switchbuddies:
            chosenBuddy,
      );
    }

    body =
        fullbody[0];
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/backgrounds/background-1.png",
          ),
          fit:
              BoxFit
                  .cover,
        ),
      ),
      child: screen,
    );
  }
}
