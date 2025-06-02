import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/models/timerState.dart';
import 'package:timer/widgets/BuddychosingDropDownButton.dart';
import 'package:timer/widgets/buddystack.dart';

class Buddytimer
    extends
        StatelessWidget {
  const Buddytimer({
    required this.pauseTimer,
    required this.resumeTimer,
    required this.timerState,
    required this.cancletimer,
    required this.displayHr,
    required this.displayMin,
    required this.displaySec,
    required this.isTimerRunning,
    required this.startTimer,
    required this.ShoursController,
    required this.SminutesController,
    required this.SsecondsController,
    required this.BhoursController,
    required this.BminutesController,
    required this.BsecondsController,
    required this.switchbuddies,
    required this.selectedBuddy,
    required this.studdybuddies,
    required this.buddystack,
    required this.body,
    super.key,
  });
  final TimerState
  timerState;
  final ShoursController;
  final SminutesController;
  final SsecondsController;
  final BhoursController;
  final BminutesController;
  final BsecondsController;
  final void
  Function()
  pauseTimer;
  final void
  Function()
  resumeTimer;
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
  final int
  displayHr;
  final int
  displayMin;
  final int
  displaySec;
  final bool
  isTimerRunning;
  final void
  Function()
  startTimer;
  final void
  Function()
  cancletimer;
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
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Session Time:",
                        ),
                      ],
                    ),

                    Visibility(
                      visible:
                          !isTimerRunning,
                      child: Row(
                        children: [
                          SizedBox(
                            width:
                                100,
                          ),
                          Expanded(
                            child: TextField(
                              controller:
                                  ShoursController,
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

                          Padding(
                            padding: EdgeInsets.all(
                              5,
                            ),
                          ),
                          SizedBox(
                            height:
                                40,
                          ),
                          Text(
                            ":",

                            style: TextStyle(
                              fontSize:
                                  20,
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
                          ),
                          Expanded(
                            child: TextField(
                              controller:
                                  SminutesController,
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
                          Padding(
                            padding: EdgeInsets.all(
                              5,
                            ),
                          ),
                          SizedBox(
                            height:
                                40,
                          ),
                          Text(
                            ":",
                            style: TextStyle(
                              fontSize:
                                  20,
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
                          ),
                          Expanded(
                            child: TextField(
                              controller:
                                  SsecondsController,
                              keyboardType:
                                  TextInputType.number,
                              maxLength:
                                  2,
                              decoration: InputDecoration(
                                labelText:
                                    "",
                                isDense:
                                    true,
                                counterText:
                                    "",
                              ),
                            ),
                          ),
                          SizedBox(
                            width:
                                100,
                          ),
                        ],
                      ),
                    ),

                    Visibility(
                      visible:
                          isTimerRunning,
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center,
                        children: [
                          Text(
                            "${displayHr.toString().padLeft(2, '0')}:"
                            "${displayMin.toString().padLeft(2, '0')}:"
                            "${displaySec.toString().padLeft(2, '0')}",
                            style: TextStyle(
                              fontSize:
                                  24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Break Time:",
                        ),
                      ],
                    ),

                    Visibility(
                      visible:
                          timerState ==
                              TimerState.start ||
                          timerState ==
                              TimerState.finished ||
                          timerState ==
                              TimerState.cancelled,
                      child: Row(
                        children: [
                          SizedBox(
                            width:
                                100,
                          ),
                          Expanded(
                            child: TextField(
                              controller:
                                  ShoursController,
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

                          Padding(
                            padding: EdgeInsets.all(
                              5,
                            ),
                          ),
                          SizedBox(
                            height:
                                40,
                          ),
                          Text(
                            ":",

                            style: TextStyle(
                              fontSize:
                                  20,
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
                          ),
                          Expanded(
                            child: TextField(
                              controller:
                                  SminutesController,
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
                          Padding(
                            padding: EdgeInsets.all(
                              5,
                            ),
                          ),
                          SizedBox(
                            height:
                                40,
                          ),
                          Text(
                            ":",
                            style: TextStyle(
                              fontSize:
                                  20,
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
                          ),
                          Expanded(
                            child: TextField(
                              controller:
                                  SsecondsController,
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
                          SizedBox(
                            width:
                                100,
                          ),
                        ],
                      ),
                    ),

                    Visibility(
                      visible:
                          timerState ==
                              TimerState.running ||
                          timerState ==
                              TimerState.paused,
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center,
                        children: [
                          Text(
                            "${displayHr.toString().padLeft(2, '0')}:"
                            "${displayMin.toString().padLeft(2, '0')}:"
                            "${displaySec.toString().padLeft(2, '0')}",
                            style: TextStyle(
                              fontSize:
                                  24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed:
                          cancletimer,
                      child: Text(
                        "cancle",
                      ),
                    ),
                    SizedBox(
                      width:
                          10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        switch (timerState) {
                          case TimerState.start:
                          case TimerState.finished:
                          case TimerState.cancelled:
                            startTimer();
                            break;
                          case TimerState.running:
                            pauseTimer();
                            break;
                          case TimerState.paused:
                            resumeTimer();
                            break;
                        }
                      },
                      child: Text(
                        timerState ==
                                TimerState.running
                            ? "Pause"
                            : timerState ==
                                TimerState.paused
                            ? "Resume"
                            : timerState ==
                                TimerState.finished
                            ? "Restart"
                            : "Start",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height:
                      10,
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
