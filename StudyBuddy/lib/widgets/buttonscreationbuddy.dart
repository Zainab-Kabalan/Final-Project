import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';

class Buttonscreationbuddy
    extends
        StatelessWidget {
  const Buttonscreationbuddy({
    required this.whatTochange,
    super.key,
  });

  final void
  Function(
    Assestsofbuddy
    accessories,
  )
  whatTochange;
  @override
  Widget build(
    BuildContext
    context,
  ) {
    return ListView(
      physics:
          AlwaysScrollableScrollPhysics(),
      scrollDirection:
          Axis.horizontal,
      padding:
          EdgeInsets.symmetric(
            vertical:
                5,
          ),
      children: [
        ElevatedButton(
          onPressed: () {
            whatTochange(
              Assestsofbuddy
                  .clothes,
            );
          },
          style: ElevatedButton.styleFrom(
            padding:
                EdgeInsets.symmetric(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                23,
              ),
            ),
          ),
          child: Text(
            "clothes",
          ),
        ),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            whatTochange(
              Assestsofbuddy
                  .backhair,
            );
          },
          child: Text(
            "backhair",
          ),
        ),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            whatTochange(
              Assestsofbuddy
                  .fronthair,
            );
          },
          child: Text(
            "fronthair",
          ),
        ),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            whatTochange(
              Assestsofbuddy
                  .eyes,
            );
          },
          child: Text(
            "eyes",
          ),
        ),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            whatTochange(
              Assestsofbuddy
                  .skin,
            );
          },
          child: Text(
            "skins",
          ),
        ),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            whatTochange(
              Assestsofbuddy
                  .accessories,
            );
          },
          child: Text(
            "accessories",
          ),
        ),
      ],
    );
  }
}
