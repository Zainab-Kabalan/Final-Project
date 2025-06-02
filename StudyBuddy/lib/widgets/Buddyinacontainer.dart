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
    return Card(
      child: Container(
        color:
            const Color.fromARGB(
              255,
              141,
              139,
              139,
            ),
        child: Buddystack(
          body:
              body,
          buddystack:
              buddystack,
        ),
      ),
    );
  }
}
