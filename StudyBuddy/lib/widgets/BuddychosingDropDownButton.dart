import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/widgets/buddystack.dart';

class Buddychosingdropdownbutton
    extends
        StatelessWidget {
  Buddychosingdropdownbutton({
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
  final List<buddy>
  studdybuddies;
  buddy buddystack;

  @override
  Widget build(
    BuildContext
    context,
  ) {
    return DropdownButtonHideUnderline(
      child: ButtonTheme(
        alignedDropdown:
            true,
        child: DropdownButton<
          buddy
        >(
          value:
              studdybuddies[selectedBuddy],
          items:
              List.generate(
                studdybuddies.length,
                (
                  index,
                ) {
                  return DropdownMenuItem<
                    buddy
                  >(
                    value:
                        studdybuddies[index],
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
            if (selectedBuddy !=
                null) {
              switchbuddies(
                studdybuddies.indexOf(
                  selectedBuddy,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
