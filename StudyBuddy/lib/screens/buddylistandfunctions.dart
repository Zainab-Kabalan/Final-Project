import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/models/BuddyInfo/buddyinfo.dart';
import 'package:timer/widgets/singlecarddata.dart';

// ignore: must_be_immutable
class Buddylistandfunctions
    extends
        StatelessWidget {
  Buddylistandfunctions({
    required this.add,
    required this.view,
    required this.totaltimestudied,
    required this.as,
    required this.i,
    required this.studdybuddies,
    required this.body,
    required this.buddystack,
    required this.info,
    required this.edit,
    super.key,
  });

  int
  totaltimestudied;
  final Assestsofbuddy
  as;
  final int i;
  final Buddyinfo
  info;
  final Fullbodyofchoice
  body;
  final Map<
    Assestsofbuddy,
    dynamic
  >
  buddystack;
  final void
  Function(int)
  view;
  final void
  Function(
    Assestsofbuddy,
    int,
  )
  edit;
  final List<
    Map<
      Assestsofbuddy,
      dynamic
    >
  >
  studdybuddies;
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

  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...studdybuddies.map((
              buddystack,
            ) {
              return Singlecarddata(
                info:
                    info,
                buddystack:
                    buddystack,
                body:
                    body,
                edit:
                    edit,
                as:
                    as,
                i: i,
                totaltimestudied:
                    totaltimestudied,
                view:
                    view,
                studdybuddies:
                    studdybuddies,
              );
            }),
            SizedBox(
              height:
                  20,
              child: ElevatedButton(
                onPressed: () {
                  add(
                    as,
                    i,
                    totaltimestudied,
                    studdybuddies,
                  );
                },
                child: Icon(
                  Icons.plus_one_rounded,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
