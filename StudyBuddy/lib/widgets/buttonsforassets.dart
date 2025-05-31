import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';

class Buttonsforassets
    extends
        StatelessWidget {
  const Buttonsforassets({
    required this.body,
    required this.chosenAsset,
    required this.index,
    required this.change,
    super.key,
  });

  final int index;
  final Fullbodyofchoice
  body;
  final Assestsofbuddy
  chosenAsset;
  final void
  Function(
    Assestsofbuddy
    eyes,
    int,
  )
  change;

  @override
  Widget build(
    BuildContext
    context,
  ) {
    return GridView.count(
      crossAxisCount:
          3,
      primary:
          false,
      padding:
          const EdgeInsets.all(
            20,
          ),
      crossAxisSpacing:
          40,
      mainAxisSpacing:
          15,
      children: [
        //clothes
        if (chosenAsset ==
            Assestsofbuddy
                .clothes) ...[
          ...body.buddyclothes[Assestsofbuddy.clothes]![0].clothes.map((
            asset,
          ) {
            return SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  change(
                    Assestsofbuddy.clothes,
                    body.buddyclothes[Assestsofbuddy.clothes]![0].clothes.indexOf(
                      asset,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal:
                        10,
                    vertical:
                        10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      23,
                    ),
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
        ]
        //fronthair
        else if (chosenAsset ==
            Assestsofbuddy
                .fronthair) ...[
          ...body.buddyfronthair[Assestsofbuddy.fronthair]![0].fronthair.map((
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
                    Assestsofbuddy.fronthair,
                    body.buddyfronthair[Assestsofbuddy.fronthair]![0].fronthair.indexOf(
                      asset,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal:
                        10,
                    vertical:
                        10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      23,
                    ),
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
        ]
        //backhair
        else if (chosenAsset ==
            Assestsofbuddy
                .backhair) ...[
          ...body.buddybackhair[Assestsofbuddy.backhair]![0].backhair.map((
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
                    Assestsofbuddy.backhair,
                    body.buddybackhair[Assestsofbuddy.backhair]![0].backhair.indexOf(
                      asset,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal:
                        10,
                    vertical:
                        10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      23,
                    ),
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
        ]
        //skins
        else if (chosenAsset ==
            Assestsofbuddy
                .skin) ...[
          ...body.buddyskin[Assestsofbuddy.skin]![0].skin.map((
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
                    Assestsofbuddy.skin,
                    body.buddyskin[Assestsofbuddy.skin]![0].skin.indexOf(
                      asset,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal:
                        10,
                    vertical:
                        10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      23,
                    ),
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
        ]
        //eyes
        else if (chosenAsset ==
            Assestsofbuddy
                .eyes) ...[
          ...body.buddyeyes[Assestsofbuddy.eyes]![0].eyes.map((
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
                    Assestsofbuddy.eyes,
                    body.buddyeyes[Assestsofbuddy.eyes]![0].eyes.indexOf(
                      asset,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal:
                        10,
                    vertical:
                        10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      23,
                    ),
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
        ] else if (chosenAsset ==
            Assestsofbuddy
                .accessories) ...[
          ...body.buddyaccesories[Assestsofbuddy.accessories]![0].accesories.map((
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
                    Assestsofbuddy.accessories,
                    body.buddyaccesories[Assestsofbuddy.accessories]![0].accesories.indexOf(
                      asset,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal:
                        10,
                    vertical:
                        10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      23,
                    ),
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
      ],
    );
  }
}
