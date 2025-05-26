import 'package:flutter/material.dart';
import 'package:timer/models/FullbodyOfChoice.dart';
import 'package:timer/models/assestsofbuddy.dart';
import 'package:timer/studybuddydata/data.dart';

void main(
  List<String> args,
) {
  runApp(
    MaterialApp(
      home:
          Buddymakerscreen(),
    ),
  );
}

class Buddymakerscreen
    extends
        StatelessWidget {
  const Buddymakerscreen({
    super.key,
  });

  @override
  Widget build(
    BuildContext
    context,
  ) {
    Fullbodyofchoice
    body =
        fullbody[0];
    return Stack(
      children: [
        Image.asset(
          body
              .buddybackhair[Assestsofbuddy
                  .backhair]![0]
              .backhair[0],
          height:
              200,
          width:
              200,
          filterQuality:
              FilterQuality
                  .none,
          fit:
              BoxFit
                  .contain,
        ),
        Image.asset(
          body
              .buddyskin[Assestsofbuddy
                  .skin]![0]
              .skin[0],
          filterQuality:
              FilterQuality
                  .none,
          height:
              200,
          width:
              200,
          fit:
              BoxFit
                  .contain,
        ),
        Image.asset(
          body
              .buddyclothes[Assestsofbuddy
                  .clothes]![0]
              .clothes[0],
          height:
              200,
          width:
              200,
          filterQuality:
              FilterQuality
                  .none,
          fit:
              BoxFit
                  .contain,
        ),
        Image.asset(
          body
              .buddyaccesories[Assestsofbuddy
                  .accessories]![0]
              .accesories[0],
          height:
              200,
          width:
              200,
          filterQuality:
              FilterQuality
                  .none,
          fit:
              BoxFit
                  .contain,
        ),
        Image.asset(
          body
              .buddyeyes[Assestsofbuddy
                  .eyes]![0]
              .eyes[0],
          height:
              200,
          width:
              200,
          filterQuality:
              FilterQuality
                  .none,
          fit:
              BoxFit
                  .contain,
        ),
        Image.asset(
          body
              .buddyfronthair[Assestsofbuddy
                  .fronthair]![0]
              .fronthair[0],
          height:
              200,
          width:
              200,
          filterQuality:
              FilterQuality
                  .none,
          fit:
              BoxFit
                  .contain,
        ),
      ],
    );
  }
}
