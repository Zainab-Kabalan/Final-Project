import 'package:flutter/material.dart';
import 'package:timer/models/FullbodyOfChoice.dart';
import 'package:timer/models/assestsofbuddy.dart';
import 'package:timer/models/models%20of%20assests/clothes.dart';
import 'package:timer/studybuddydata/data.dart';
import 'package:timer/widgets/buddybuilder.dart';
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
  late Fullbodyofchoice
  body;
  // List<String>
  // clothesbuddy = [];
  // List<
  //   Fullbodyofchoice
  // >
  // studdybuddies =
  //     [];

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
  int i = 0;
  late Buddystack
  buddy;
  @override
  void initState() {
    body =
        fullbody[0];
    buddy = Buddystack(
      body: body,
      buddystack:
          buddystack,
    );
    super
        .initState();
  }

  void chosen(
    String
    buddyfinder,
  ) {
    setState(() {
      Clothes c =
          body.buddyclothes[Assestsofbuddy
              .clothes]![0];
      for (
        int i = 0;
        i <
            c
                .clothes
                .length;
        i++
      ) {
        if (buddyfinder ==
            c.clothes[i]) {
          i = body
              .buddyclothes[Assestsofbuddy
                  .clothes]![0]
              .clothes
              .indexOf(
                c.clothes[i],
              );
        }
      }
      buddy.buddystack[Assestsofbuddy
              .clothes] =
          i;
      Image.asset(
        body
            .buddyclothes[Assestsofbuddy
                .clothes]![0]
            .clothes[i],
      );
    });
  }

  @override
  Widget build(
    BuildContext
    context,
  ) {
    body =
        fullbody[0];
    return Buddymakerscreen(
      body: body,
      change:
          chosen,

      buddystack:
          buddystack,
      index: i,
    );
  }
}
