import 'package:flutter/material.dart';
import 'package:timer/models/FullbodyOfChoice.dart';
import 'package:timer/models/assestsofbuddy.dart';
import 'package:timer/widgets/buddystack.dart';
// import 'package:timer/studybuddydata/data.dart';

class Buddymakerscreen
    extends
        StatelessWidget {
  const Buddymakerscreen({
    required this.whatTochange,
    required this.chosenAsset,
    required this.savebuddy,
    required this.buddystack,
    required this.body,
    required this.change,
    required this.index,
    super.key,
  });
  final Fullbodyofchoice
  body;
  final void
  Function(
    Assestsofbuddy,
  )
  savebuddy;
  final Assestsofbuddy
  chosenAsset;
  final void
  Function(
    Assestsofbuddy,
    int index,
  )
  change;
  final void
  Function(
    Assestsofbuddy,
  )
  whatTochange;

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
            SizedBox(
              height:
                  350,
              child: Buddystack(
                body:
                    body,
                buddystack:
                    buddystack,
              ),
            ),
            SizedBox(
              height:
                  40,
              child: ListView(
                physics:
                    AlwaysScrollableScrollPhysics(),
                scrollDirection:
                    Axis.horizontal,
                padding: EdgeInsets.symmetric(
                  vertical:
                      5,
                ),
                children: [
                  ElevatedButton(
                    onPressed: () {
                      whatTochange(
                        Assestsofbuddy.clothes,
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
                    width:
                        10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      whatTochange(
                        Assestsofbuddy.backhair,
                      );
                    },
                    child: Text(
                      "backhair",
                    ),
                  ),
                  SizedBox(
                    width:
                        10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      whatTochange(
                        Assestsofbuddy.fronthair,
                      );
                    },
                    child: Text(
                      "fronthair",
                    ),
                  ),
                  SizedBox(
                    width:
                        10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      whatTochange(
                        Assestsofbuddy.eyes,
                      );
                    },
                    child: Text(
                      "eyes",
                    ),
                  ),
                  SizedBox(
                    width:
                        10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      whatTochange(
                        Assestsofbuddy.skin,
                      );
                    },
                    child: Text(
                      "skins",
                    ),
                  ),
                  SizedBox(
                    width:
                        10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      whatTochange(
                        Assestsofbuddy.accessories,
                      );
                    },
                    child: Text(
                      "accessories",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height:
                  230,
              child: GridView.count(
                crossAxisCount:
                    3,
                primary:
                    false,
                padding: const EdgeInsets.all(
                  20,
                ),
                crossAxisSpacing:
                    30,
                mainAxisSpacing:
                    10,
                children: [
                  //clothes
                  if (chosenAsset ==
                      Assestsofbuddy.clothes) ...[
                    ...body.buddyclothes[Assestsofbuddy.clothes]![0].clothes.map(
                      (
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
                      },
                    ),
                  ]
                  //fronthair
                  else if (chosenAsset ==
                      Assestsofbuddy.fronthair) ...[
                    ...body.buddyfronthair[Assestsofbuddy.fronthair]![0].fronthair.map(
                      (
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
                      },
                    ),
                  ]
                  //backhair
                  else if (chosenAsset ==
                      Assestsofbuddy.backhair) ...[
                    ...body.buddybackhair[Assestsofbuddy.backhair]![0].backhair.map(
                      (
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
                      },
                    ),
                  ]
                  //skins
                  else if (chosenAsset ==
                      Assestsofbuddy.skin) ...[
                    ...body.buddyskin[Assestsofbuddy.skin]![0].skin.map(
                      (
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
                      },
                    ),
                  ]
                  //eyes
                  else if (chosenAsset ==
                      Assestsofbuddy.eyes) ...[
                    ...body.buddyeyes[Assestsofbuddy.eyes]![0].eyes.map(
                      (
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
                      },
                    ),
                  ] else if (chosenAsset ==
                      Assestsofbuddy.accessories) ...[
                    ...body.buddyaccesories[Assestsofbuddy.accessories]![0].accesories.map(
                      (
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
                      },
                    ),
                  ],
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                savebuddy(
                  Assestsofbuddy.clothes,
                );
              },
              child: Text(
                "Save",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
