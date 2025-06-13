import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:timer/db/buddy-Storage.dart';
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
    required this.buddies,
    super.key,
  });
  final List<buddy>
  buddies;
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
  bool firsttime =
      false;
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
  List<buddy>
  studdybuddies = [
  ];

  final subjecttaking =
      TextEditingController();
  final Valuetaking =
      TextEditingController();
  late buddy
  buddystack;
  String
  currentscreen =
      'maker';

  late Buddyinfo
  info;
  int? editing;
  @override
  void initState() {
    buddystack =
        buddy(
          totaltime:
              0,
          Name: '',
          clothes:
              0,
          skin: 0,
          eyes: 0,
          accessories:
              0,
          fronthair:
              0,
          backhair:
              0,
          subject:
              "",
        );
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
    loadBuddies();
    super
        .initState();
  }

  void
  loadBuddies() async {
    List<buddy>
    buddydb =
        await loadBuddy();
    setState(() {
      studdybuddies =
          buddydb;
    });
    if (studdybuddies
            .isEmpty &&
        !firsttime) {
      firsttime =
          true;
      WidgetsBinding
          .instance
          .addPostFrameCallback((
            _,
          ) {
            _showBuddyMaker();
          });
    }
  }

  void chosenBuddy(
    int newbuddy,
  ) {
    setState(() {
      selectedBuddy =
          newbuddy;
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
                buddystack: buddy(
                  Name:
                      studdybuddies[indexofbuddy].Name,
                  totaltime:
                      studdybuddies[indexofbuddy].totaltime,
                  clothes:
                      studdybuddies[indexofbuddy].clothes,
                  skin:
                      studdybuddies[indexofbuddy].skin,
                  eyes:
                      studdybuddies[indexofbuddy].eyes,
                  accessories:
                      studdybuddies[indexofbuddy].accessories,
                  fronthair:
                      studdybuddies[indexofbuddy].fronthair,
                  backhair:
                      studdybuddies[indexofbuddy].backhair,
                  subject:
                      studdybuddies[indexofbuddy].subject,
                ),
                body:
                    body,
                index:
                    indexofbuddy,
                add:
                    add,
                editingIndex:
                    editing,
              ),
            ),
      ),
    );
    setState(() {
      studdybuddies[indexofbuddy] =
          editedBuddy;
    });
    print(
      studdybuddies[studdybuddies
                  .length -
              1]
          .clothes,
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
                buddystack: buddy(
                  Name:
                      studdybuddies[selectedBuddy].Name,
                  totaltime:
                      studdybuddies[selectedBuddy].totaltime,
                  clothes:
                      studdybuddies[selectedBuddy].clothes,
                  skin:
                      studdybuddies[selectedBuddy].skin,
                  eyes:
                      studdybuddies[selectedBuddy].eyes,
                  accessories:
                      studdybuddies[selectedBuddy].accessories,
                  fronthair:
                      studdybuddies[selectedBuddy].fronthair,
                  backhair:
                      studdybuddies[selectedBuddy].backhair,
                  subject:
                      studdybuddies[selectedBuddy].subject,
                ),
                body:
                    body,
                index:
                    selectedBuddy,
                add:
                    add,
              ),
            ),
      ),
    );

    setState(() {
      studdybuddies
          .add(
            addBuddy,
          );
      insertBuddy(
        addBuddy,
      );
    });
    print(
      studdybuddies[studdybuddies
                  .length -
              1]
          .clothes,
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
              ),
            ),
      ),
    );
    if (newBuddy !=
        null) {
      setState(() {
        studdybuddies
            .add(
              newBuddy,
            );
        insertBuddy(
          newBuddy,
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
