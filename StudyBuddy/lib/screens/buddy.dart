import 'dart:async';
import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/models/BuddyInfo/buddyinfo.dart';
import 'package:timer/models/studybuddydata/data.dart';
import 'package:timer/screens/buddybuilder.dart';
import 'package:timer/screens/buddylistandfunctions.dart';
import 'package:timer/screens/timerclass.dart';
import 'package:timer/widgets/buddyFullInfo.dart';
import 'package:timer/widgets/buddystack.dart';
import 'package:timer/widgets/container.dart';

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
  int breakseconds =
      0;

  int breakhours =
      0;
  int breakminutes =
      0;

  int studystate =
      0;
  int session = 0;

  int
  secondsremaining =
      0;

  int
  hoursremaining =
      0;
  int
  minutesremaining =
      0;
  int
  get totaltimestudied =>
      hoursremaining *
          3600 +
      minutesremaining *
          60 +
      secondsremaining;
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
      dynamic
    >
  >
  studdybuddies = [
  ];
  // String text;

  final subjecttaking =
      TextEditingController();
  final Valuetaking =
      TextEditingController();
  Map<
    Assestsofbuddy,
    dynamic
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
    Assestsofbuddy
        .name: '',
    Assestsofbuddy
        .subject: '',
    Assestsofbuddy
        .totaltime: 0,
  };
  String
  currentscreen =
      'maker';

  late Buddyinfo
  info;
  //methods
  @override
  void initState() {
    selectedBuddy =
        0;

    body =
        fullbody[0];

    info = Buddyinfo(
      name:
          Valuetaking
              .text,
      subject:
          subjecttaking
              .text,
      totaltimestudied:
          totaltimestudied,
    );
    super
        .initState();
  }

  void chosenBuddy(
    int newbuddy,
  ) {
    print(
      "${studdybuddies[newbuddy]}",
    );
    setState(() {
      selectedBuddy =
          newbuddy;
      studdybuddies[newbuddy];
    });
  }

  void edit(
    Assestsofbuddy
    chosenasset,
    int
    indexofbuddy,
  ) {
    setState(() {
      currentscreen =
          'maker';
    });

    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (
              context,
            ) => BuddyContainer(
              child: Buddymakerscreen(
                body:
                    body,
                buddystack:
                    buddystack,
                index:
                    indexofbuddy,
                chosenAsset:
                    chosenasset,
                Valuetaking:
                    Valuetaking,
                subjecttaking:
                    subjecttaking,
                studdybuddies:
                    studdybuddies,
                info:
                    info,
                totaltimestudied:
                    totaltimestudied,
              ),
            ),
      ),
    );
  }

  void view(
    int
    indexofbuddy,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (
              context,
            ) => BuddyContainer(
              child: Buddyfullinfo(
                body:
                    body,
                buddystack:
                    buddystack,
                studdybuddies:
                    studdybuddies,
              ),
            ),
      ),
    );
    Navigator.pop(
      context,
    );
  }

  String? buddyName;

  int screenindex =
      0;
  @override
  void dispose() {
    Valuetaking.dispose();
    subjecttaking
        .dispose();
    super.dispose();
  }

  @override
  Widget build(
    BuildContext
    context,
  ) {
    List<Widget>
    widgets = [
      Buddymakerscreen(
        body: body,
        buddystack:
            buddystack,
        index:
            indexofbuddy,
        chosenAsset:
            chosenasset,
        Valuetaking:
            Valuetaking,
        subjecttaking:
            subjecttaking,
        studdybuddies:
            studdybuddies,
        info: info,
        totaltimestudied:
            totaltimestudied,
      ),
      Timerclass(
        switchbuddies:
            chosenBuddy,
        selectedBuddy:
            selectedBuddy,
        studdybuddies:
            studdybuddies,
        buddystack:
            buddystack,
        body: body,
      ),
      Buddylistandfunctions(
        body: body,
        buddystack:
            buddystack,
        info: info,
        edit: edit,
        studdybuddies:
            studdybuddies,
        as:
            chosenasset,
        i: indexofbuddy,
        totaltimestudied:
            totaltimestudied,
        view: view,
      ),
    ];

    body =
        fullbody[0];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: BuddyContainer(
          child:
              widgets[screenindex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap:
              (
                index,
              ) => setState(() {
                screenindex =
                    index;
              }),
          currentIndex:
              screenindex,
          items: [
            BottomNavigationBarItem(
              label:
                  "Timer",
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label:
                  "Buddies",
              icon: Icon(
                Icons.person_3,
              ),
            ),
            BottomNavigationBarItem(
              label:
                  "History",
              icon: Icon(
                Icons.history,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
