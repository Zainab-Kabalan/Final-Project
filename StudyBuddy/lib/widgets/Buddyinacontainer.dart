import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/widgets/buddystack.dart';

class Buddyinacontainer
    extends
        StatelessWidget {
  const Buddyinacontainer({
    required this.body,
    required this.buddystack,
    super.key,
  });
  final Fullbodyofchoice
  body;
  final buddy
  buddystack;
  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Padding(
      padding:
          const EdgeInsets.fromLTRB(
            50,
            15,
            50,
            0,
          ),
      child: SizedBox(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.zero,
          ),
          child: Container(
            color: const Color.fromARGB(
              193,
              138,
              220,
              223,
            ),
            child: Buddystack(
              body:
                  body,
              buddystack:
                  buddystack,
            ),
          ),
        ),
      ),
    );
  }
}
