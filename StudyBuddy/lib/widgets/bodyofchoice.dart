import 'package:flutter/material.dart';
import 'package:timer/models/FullbodyOfChoice.dart';
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
  Fullbodyofchoice
  body =
      fullbody[0];

  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Scaffold(
      body: Column(
        children: [
        ],
      ),
    );
  }
}
