import 'package:flutter/material.dart';
import 'package:timer/models/FullbodyOfChoice.dart';
import 'package:timer/models/assestsofbuddy.dart';
import 'package:timer/widgets/buddystack.dart';

class Buddytimer
    extends
        StatelessWidget {
  const Buddytimer({
    required this.switchbuddies,
    required this.selectedBuddy,
    required this.studdybuddies,
    required this.buddystack,
    required this.body,
    super.key,
  });
  final void
  Function(int)
  switchbuddies;
  final int
  selectedBuddy;
  final Fullbodyofchoice
  body;
  final List<
    Map<
      Assestsofbuddy,
      int
    >
  >
  studdybuddies;
  final Map<
    Assestsofbuddy,
    int
  >
  buddystack;

  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height:
                  30,
            ),
            Card(
              color: Color.fromARGB(
                167,
                126,
                203,
                247,
              ),
              elevation:
                  2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              child: Column(
                children: [
                  DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown:
                          true,
                      child: DropdownButton<
                        int
                      >(
                        value:
                            selectedBuddy,
                        items:
                            List.generate(
                              studdybuddies.length,
                              (
                                index,
                              ) {
                                return DropdownMenuItem<
                                  int
                                >(
                                  value:
                                      index,
                                  child: Buddystack(
                                    body:
                                        body,
                                    buddystack:
                                        studdybuddies[index],
                                  ),
                                );
                              },
                            ).toList(),
                        onChanged: (
                          selectedBuddy,
                        ) {
                          switchbuddies(
                            selectedBuddy!,
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width:
                        5,
                    height:
                        20,
                  ),
                  TextField(),
                ],
              ),
            ),
            SizedBox(
              height:
                  150,
            ),
            Buddystack(
              body:
                  body,
              buddystack:
                  studdybuddies[selectedBuddy],
            ),
          ],
        ),
      ),
    );
  }
}
