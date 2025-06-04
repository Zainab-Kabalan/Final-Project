import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/models/BuddyInfo/buddyinfo.dart';
import 'package:timer/models/studybuddydata/data.dart';
import 'package:timer/screens/buddybuilder.dart';
import 'package:timer/screens/buddylistandfunctions.dart';
import 'package:timer/screens/timerclass.dart';
import 'package:timer/widgets/buddyFullInfo.dart';
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
  int? editing;
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
    if (studdybuddies
        .isEmpty) {
      WidgetsBinding
          .instance
          .addPostFrameCallback((
            _,
          ) {
            _showBuddyMaker();
          });
    }
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

  void edit(
    Assestsofbuddy
    chosenasset,
    int
    indexofbuddy,
  ) async {
    final editedBuddy = await Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (
              context,
            ) => BuddyContainer(
              child: Buddymakerscreen(
                totaltimestudied:
                    totaltimestudied,
                info:
                    info,
                studdybuddies:
                    studdybuddies,
                Valuetaking:
                    Valuetaking,
                subjecttaking:
                    subjecttaking,
                chosenAsset:
                    chosenasset,
                buddystack: Map<
                  Assestsofbuddy,
                  dynamic
                >.from(
                  studdybuddies[indexofbuddy],
                ),
                body:
                    body,
                index:
                    indexofbuddy,
                add:
                    add,
                editingIndex:
                    indexofbuddy,
                popsave:
                    popsave,
              ),
            ),
      ),
    );
    setState(() {
      studdybuddies[indexofbuddy] = Map<
        Assestsofbuddy,
        dynamic
      >.from(
        editedBuddy,
      );
    });
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
                    studdybuddies[indexofbuddy],
                studdybuddies:
                    studdybuddies,
              ),
            ),
      ),
    );
  }

  String? buddyName;

  int screenindex =
      0;

  void add(
    as,
    i,
    totaltimestudied,
    studdybuddies,
  ) async {
    final addBuddy = await Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (
              context,
            ) => BuddyContainer(
              child: Buddymakerscreen(
                totaltimestudied:
                    totaltimestudied,
                info:
                    info,
                studdybuddies:
                    studdybuddies,
                Valuetaking:
                    Valuetaking,
                subjecttaking:
                    subjecttaking,
                chosenAsset:
                    as,
                buddystack:
                    buddystack,
                body:
                    body,
                index:
                    i,
                add:
                    add,
                popsave:
                    popsave,
              ),
            ),
      ),
    );

    setState(() {
      studdybuddies.add(
        Map<
          Assestsofbuddy,
          dynamic
        >.from(
          addBuddy,
        ),
      );
    });
  }

  void popsave() {
    Navigator.pop(
      context,
    );
  }

  void
  _showBuddyMaker() async {
    final newBuddy = await Navigator.push(
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
                add:
                    add,
                popsave:
                    popsave,
              ),
            ),
      ),
    );
    if (newBuddy !=
        null) {
      setState(() {
        studdybuddies.add(
          Map<
            Assestsofbuddy,
            dynamic
          >.from(
            buddystack,
          ),
        );
      });
    }
  }

  @override
  void dispose() {
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
        add: add,
      ),
    ];
    if (studdybuddies
        .isEmpty) {
      return Scaffold(
        body: Center(
          child: Text(
            "create your buddy",
          ),
        ),
      );
    } else {
      return DefaultTabController(
        length: 2,
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
                  Icons.people_alt,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
