import 'dart:async';
import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/models/BuddyInfo/buddyinfo.dart';
import 'package:timer/models/studybuddydata/data.dart';
import 'package:timer/screens/buddybuilder.dart';
import 'package:timer/screens/buddylistandfunctions.dart';
import 'package:timer/screens/timerclass.dart';
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
  };
  late Buddystack
  buddy;
  String
  currentscreen =
      'maker';
  @override
  void initState() {
    info = Buddyinfo(
      name:
          Valuetaking
              .text,
      subject:
          subjecttaking
              .text,
    );

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

  late Buddyinfo
  info;
  //methods
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

  void textbuddy(
    text,
  ) {
    setState(() {
      info = Buddyinfo(
        name:
            Valuetaking
                .text,
        subject:
            subjecttaking
                .text,
      );
      buddy.buddystack[Assestsofbuddy
              .name] =
          info.name;
      buddy.buddystack[Assestsofbuddy
              .subject] =
          info.subject;
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
        'card';
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
                Valuetaking:
                    Valuetaking,
                text:
                    textbuddy,
                subjecttaking:
                    subjecttaking,
              ),
            ),
      ),
    );
  }

  String? buddyName;

  int screenindex =
      0;
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

      ///body
      /// selectedbuddy
      ///  studdybuddies,
      ///  switchbuddies,
      /// indexofbuddy
      /// chosenasset
      /// edit
      /// info
      ///  buddystack chosenbody
      Buddymakerscreen(
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
        Valuetaking:
            Valuetaking,
        text:
            textbuddy,
        subjecttaking:
            subjecttaking,
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
      ),
    ];

    body =
        fullbody[0];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body:
            widgets[screenindex],
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
