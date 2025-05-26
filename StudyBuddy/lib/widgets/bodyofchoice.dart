import 'package:flutter/material.dart';
import 'package:timer/models/FullbodyOfChoice.dart';
import 'package:timer/models/assestsofbuddy.dart';
import 'package:timer/studybuddydata/data.dart';

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
  int i = 0;
  void chosen(
    int i,
  ) {
    setState(() {
      body
          .buddyclothes[Assestsofbuddy
              .clothes]![0]
          .clothes[i];
    });
  }

  @override
  Widget build(
    BuildContext
    context,
  ) {
    Fullbodyofchoice
    body =
        fullbody[i];
    return Scaffold(
      body: Column(
        children: [
          ...body.buddyclothes[Assestsofbuddy.clothes]![0].clothes.map((
            asset,
          ) {
            return ElevatedButton(
              onPressed: () {
                chosen(
                  i,
                );
              },
              child: Image.asset(
                asset,
                height:
                    200,
                width:
                    200,
                filterQuality:
                    FilterQuality.none,
                fit:
                    BoxFit.contain,
              ),
            );
          }),
        ],
      ),
    );
  }
}
