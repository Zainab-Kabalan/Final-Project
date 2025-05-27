import 'package:flutter/material.dart';
import 'package:timer/models/FullbodyOfChoice.dart';
import 'package:timer/models/assestsofbuddy.dart';
import 'package:timer/widgets/buddystack.dart';
// import 'package:timer/studybuddydata/data.dart';

class Buddymakerscreen
    extends
        StatelessWidget {
  const Buddymakerscreen({
    required this.index,
    required this.buddystack,
    required this.body,
    required this.change,
    super.key,
  });
  final Fullbodyofchoice
  body;
  final void
  Function(String s)
  change;
  final Map<
    Assestsofbuddy,
    int
  >
  buddystack;
  final int index;

  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment
                  .end,
          children: [
            Buddystack(
              body:
                  body,
              buddystack:
                  buddystack,
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.end,
              children: [
                ...body.buddyclothes[Assestsofbuddy.clothes]![0].clothes.map((
                  asset,
                ) {
                  return SizedBox(
                    height:
                        60,
                    width:
                        70,
                    child: ElevatedButton(
                      onPressed: () {
                        change(
                          asset,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal:
                              10,
                          vertical:
                              10,
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          asset,
                          height:
                              80,
                          width:
                              80,
                          filterQuality:
                              FilterQuality.none,
                          fit:
                              BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
