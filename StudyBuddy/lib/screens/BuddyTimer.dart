import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/widgets/BuddychosingDropDownButton.dart';
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
    return Center(
      child: Column(
        children: [
          SizedBox(
            height:
                30,
          ),
          Card(
            color: Color.fromARGB(
              162,
              150,
              239,
              255,
            ),
            elevation:
                2,
            margin:
                EdgeInsets.all(
                  10,
                ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
            child: Column(
              children: [
                Buddychosingdropdownbutton(
                  switchbuddies:
                      switchbuddies,
                  selectedBuddy:
                      selectedBuddy,
                  studdybuddies:
                      studdybuddies,
                  buddystack:
                      buddystack,
                  body:
                      body,
                ),
                SizedBox(
                  height:
                      5,
                ),
                Row(
                  children: [
                    Text(
                      "Session Time:",
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width:
                          100,
                    ),
                    Expanded(
                      child: SizedBox(
                        child: TextField(
                          keyboardType:
                              TextInputType.number,
                          maxLength:
                              2,
                          decoration: InputDecoration(
                            isDense:
                                true,
                            counterText:
                                "",
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                        5,
                      ),
                    ),
                    SizedBox(
                      height:
                          40,
                      child: Center(
                        child: Text(
                          ":",
                          style: TextStyle(
                            fontSize:
                                20,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                        5,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: TextField(
                          keyboardType:
                              TextInputType.number,
                          maxLength:
                              2,
                          decoration: InputDecoration(
                            isDense:
                                true,
                            counterText:
                                "",
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(
                        5,
                      ),
                    ),
                    SizedBox(
                      height:
                          40,
                      child: Center(
                        child: Text(
                          ":",
                          style: TextStyle(
                            fontSize:
                                20,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                        5,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: TextField(
                          keyboardType:
                              TextInputType.number,
                          maxLength:
                              2,
                          decoration: InputDecoration(
                            isDense:
                                true,
                            counterText:
                                "",
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      width:
                          100,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Break Time:",
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width:
                          100,
                    ),
                    Expanded(
                      child: SizedBox(
                        child: TextField(
                          keyboardType:
                              TextInputType.number,
                          maxLength:
                              2,
                          decoration: InputDecoration(
                            isDense:
                                true,
                            counterText:
                                "",
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: TextField(
                          keyboardType:
                              TextInputType.number,
                          maxLength:
                              2,
                          decoration: InputDecoration(
                            isDense:
                                true,
                            counterText:
                                "",
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(
                        5,
                      ),
                    ),
                    SizedBox(
                      height:
                          40,
                      child: Center(
                        child: Text(
                          ":",
                          style: TextStyle(
                            fontSize:
                                20,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                        5,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: TextField(
                          keyboardType:
                              TextInputType.number,
                          maxLength:
                              2,
                          decoration: InputDecoration(
                            isDense:
                                true,
                            counterText:
                                "",
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      width:
                          100,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height:
                50,
          ),
          Buddystack(
            body:
                body,
            buddystack:
                studdybuddies[selectedBuddy],
          ),
        ],
      ),
    );
  }
}
