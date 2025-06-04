import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';

class Buddystack
    extends
        StatelessWidget {
  const Buddystack({
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
    return Stack(
      alignment:
          Alignment
              .center,
      children: [
        Image.asset(
          body
              .buddybackhair[Assestsofbuddy
                  .backhair]![0]
              .backhair[buddystack
              .backhair],
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
              .skin[buddystack
              .skin],
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
              .clothes[buddystack
              .clothes],
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
              .eyes[buddystack
              .eyes],
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
              .fronthair[buddystack
              .fronthair],
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
              .accesories[buddystack
              .accessories],
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
