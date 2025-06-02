import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/widgets/buddystack.dart';

class Buddychosingdropdownbutton
    extends
        StatelessWidget {
  const Buddychosingdropdownbutton({
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
      dynamic
    >
  >
  studdybuddies;
  final Map<
    Assestsofbuddy,
    dynamic
  >
  buddystack;

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
    );
  }
}
