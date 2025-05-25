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
          'assets/images/hair/base1.png',
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
              .clothes[1],
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
          'assets/images/accessories/ribbon-A1.png',
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
          'assets/images/eyes/girl-eyes1.png',
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
          'assets/images/hair/front-hair1.png',
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
