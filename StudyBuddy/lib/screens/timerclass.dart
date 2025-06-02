import 'dart:async';

import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/widgets/BuddychosingDropDownButton.dart';
import 'package:timer/widgets/buddystack.dart';
// import 'package:timer/widgets/buddybuilder.dart';

class Timerclass
    extends
        StatefulWidget {
  const Timerclass({
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
  State<
    StatefulWidget
  >
  createState() {
    return _timerapp();
  }
}

// ignore: camel_case_types
class _timerapp
    extends
        State<
          Timerclass
        > {
  //controllers
  final hourEntered =
      TextEditingController();
  final minEntered =
      TextEditingController();
  final secEntered =
      TextEditingController();
  final secBreak =
      TextEditingController();
  final minBreak =
      TextEditingController();
  final hourBreak =
      TextEditingController();
  //strings
  String state =
      "press to start";
  //timer object
  Timer? timer;
  //integers

  int?
  currentsecond;

  int breakseconds =
      0;

  int breakhours =
      0;
  int breakminutes =
      0;

  int studystate =
      0;
  int session = 0;

  int
  secondsremaining =
      0;

  int
  hoursremaining =
      0;
  int
  minutesremaining =
      0;
  int
  totaltimebreak =
      0;
  int
  totaltimestudied =
      0;
  int totaltime = 0;

  //bools
  bool
  visiblebutton =
      true;
  bool
  visiblebreak =
      true;
  bool timerin =
      true;
  //method only for pause and resume
  void pauseresume(
    Timer timer,
  ) {
    if (studystate ==
        3) {
      pausetimer;
    } else if (studystate ==
        4) {
      setState(() {
        secondsremaining--;
      });
    }
  }

  //method for switching btwn study states
  void
  switchsession() {
    breakseconds =
        int.parse(
          secBreak
              .text,
        );
    breakhours =
        int.parse(
          hourBreak
              .text,
        );
    breakminutes =
        int.parse(
          minBreak
              .text,
        );
    totaltimebreak =
        (breakhours *
            3600) +
        (breakminutes *
            60) +
        breakseconds;
    timer?.cancel();
    if (studystate ==
        1) {
      restartTimer(
        breakseconds,
      );
      setState(() {
        state =
            'break';
        secondsremaining =
            breakseconds;
        studystate =
            2;
        visiblebreak =
            false;
      });
    } else if (studystate ==
        2) {
      restartTimer(
        session,
      );
      setState(() {
        visiblebreak =
            true;
        if (session %
                2 ==
            0) {
          secondsremaining =
              session ~/
              2;
        } else {
          secondsremaining =
              session ~/
                  2 -
              1;
        }

        studystate =
            3;
        state =
            'pause';
      });
    } else if (studystate ==
        3) {
      visiblebreak =
          false;
      state =
          'over';
      visiblebutton =
          false;
      setState(() {
        totaltime =
            totaltimebreak +
            totaltimestudied;
        widget.buddystack[Assestsofbuddy
                .totaltime] =
            (widget.buddystack[Assestsofbuddy.totaltime] ??
                0) +
            totaltime;
        widget.studdybuddies[widget
                .selectedBuddy][Assestsofbuddy
                .totaltime] =
            widget
                .buddystack[Assestsofbuddy
                .totaltime];
      });
    }
  }

  //starter timer that handles study session 1
  void
  starttimer() {
    hoursremaining =
        int.parse(
          hourEntered
              .text,
        );
    minutesremaining =
        int.parse(
          minEntered
              .text,
        );
    secondsremaining =
        int.parse(
          secEntered
              .text,
        );

    totaltimestudied =
        (hoursremaining *
            3600) +
        (minutesremaining *
            60) +
        secondsremaining;

    secondsremaining =
        (hoursremaining *
            3600) +
        (minutesremaining *
            60) +
        secondsremaining;

    if (secondsremaining %
            2 ==
        0) {
      secondsremaining =
          secondsremaining ~/
          2;
    } else {
      secondsremaining =
          secondsremaining ~/
              2 +
          1;
    }

    session =
        secondsremaining;
    const sec =
        Duration(
          seconds:
              1,
        );
    timer = Timer.periodic(sec, (
      Timer timer,
    ) {
      setState(() {
        secondsremaining--;
        if (secondsremaining <
            0) {
          setState(() {
            timer
                .cancel();
            switchsession();
          });
        }
      });
    });
    timerin = false;
    state = 'pause';
    studystate = 1;
  }

  //dispose
  @override
  void dispose() {
    secBreak
        .dispose();
    secEntered
        .dispose();
    minBreak
        .dispose();
    minEntered
        .dispose();
    hourBreak
        .dispose();
    hourEntered
        .dispose();
    timer?.cancel();
    super.dispose();
  }

  //pause timer
  void
  pausetimer() {
    setState(() {
      currentsecond =
          secondsremaining;
      timer
          ?.cancel();
    });
    state =
        "resume";
    studystate = 3;
  }

  //resume timer
  void
  resumetimer() {
    currentsecond =
        secondsremaining;
    timer =
        Timer.periodic(
          Duration(
            seconds:
                1,
          ),
          pauseresume,
        );
    state = "pause";
    studystate = 4;
  }

  //cancle button
  void
  canclebutton() {
    setState(() {
      timer
          ?.cancel();
      state =
          'cancle';
      visiblebutton =
          false;
    });
  }

  //restar timer,
  // handles the start and end of the timer started by the switch method
  void restartTimer(
    int sec,
  ) {
    secondsremaining =
        sec;
    timer = Timer.periodic(
      Duration(
        seconds: 1,
      ),
      (
        Timer timer,
      ) {
        setState(() {
          if (secondsremaining >
              0) {
            secondsremaining--;
          } else {
            timer
                .cancel();
            switchsession();
          }
        });
      },
    );
  }

  //changes text on the button
  void
  changebutton() {
    setState(() {
      if (state ==
          states[0]) {
        starttimer();
      } else if (state ==
          states[2]) {
        pausetimer();
      } else if (state ==
          states[3]) {
        resumetimer();
      }
    });
  }

  //states
  List<String>
  states = [
    "press to start",
    'start',
    'pause',
    "resume",
    "over",
    'break',
    'cancle',
  ];
  String s =
      'press to start';

  //build method
  @override
  Widget build(
    BuildContext
    context,
  ) {
    if (state ==
        states[0]) {
      s = "press start!";
    } else if (state ==
        states[3]) {
      s = "session paused!";
    } else if (state ==
            states[1] ||
        (state ==
            states[2])) {
      s = 'studying session!';
    } else if (state ==
        states[4]) {
      s = "session over!";
    } else if (state ==
        states[5]) {
      s = "session in break!";
    } else if (state ==
        states[6]) {
      s = "session cancled.";
    }
    return Center(
      child: Column(
        children: [
          SizedBox(
            height:
                5,
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
                SizedBox(
                  height:
                      10,
                ),
                Visibility(
                  visible:
                      timerin,
                  child: Buddychosingdropdownbutton(
                    switchbuddies:
                        widget.switchbuddies,
                    selectedBuddy:
                        widget.selectedBuddy,
                    studdybuddies:
                        widget.studdybuddies,
                    buddystack:
                        widget.buddystack,
                    body:
                        widget.body,
                  ),
                ),
                Visibility(
                  visible:
                      timerin,
                  child: Column(
                    children: [
                      Text(
                        "Session Time: ",
                      ),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width:
                                60,
                            child: TextField(
                              controller:
                                  hourEntered,
                              keyboardType:
                                  TextInputType.number,
                              textAlign:
                                  TextAlign.center,
                              style: TextStyle(
                                fontSize:
                                    18,
                              ),
                              decoration: InputDecoration(
                                border:
                                    OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical:
                                      8,
                                ),
                                isDense:
                                    true,
                                counterText:
                                    "",
                                hintText:
                                    "00",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  4,
                            ),
                            child: Text(
                              ":",
                              style: TextStyle(
                                fontSize:
                                    20,
                              ),
                            ),
                          ),
                          SizedBox(
                            width:
                                60,
                            child: TextField(
                              controller:
                                  minEntered,
                              keyboardType:
                                  TextInputType.number,
                              textAlign:
                                  TextAlign.center,
                              style: TextStyle(
                                fontSize:
                                    18,
                              ),
                              decoration: InputDecoration(
                                border:
                                    OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical:
                                      8,
                                ),
                                isDense:
                                    true,
                                counterText:
                                    "",
                                hintText:
                                    "00",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  4,
                            ),
                            child: Text(
                              ":",
                              style: TextStyle(
                                fontSize:
                                    20,
                              ),
                            ),
                          ),
                          SizedBox(
                            width:
                                60,
                            child: TextField(
                              controller:
                                  secEntered,
                              keyboardType:
                                  TextInputType.number,
                              textAlign:
                                  TextAlign.center,
                              style: TextStyle(
                                fontSize:
                                    18,
                              ),
                              decoration: InputDecoration(
                                border:
                                    OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical:
                                      8,
                                ),
                                isDense:
                                    true,
                                counterText:
                                    "",
                                hintText:
                                    "00",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible:
                      timerin,
                  child: Column(
                    children: [
                      Text(
                        "Break Time: ",
                      ),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width:
                                60,
                            child: TextField(
                              controller:
                                  hourBreak,
                              keyboardType:
                                  TextInputType.number,
                              textAlign:
                                  TextAlign.center,
                              style: TextStyle(
                                fontSize:
                                    18,
                              ),
                              decoration: InputDecoration(
                                border:
                                    OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical:
                                      8,
                                ),
                                isDense:
                                    true,
                                counterText:
                                    "",
                                hintText:
                                    "00",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  4,
                            ),
                            child: Text(
                              ":",
                              style: TextStyle(
                                fontSize:
                                    20,
                              ),
                            ),
                          ),
                          SizedBox(
                            width:
                                60,
                            child: TextField(
                              controller:
                                  minBreak,
                              keyboardType:
                                  TextInputType.number,
                              textAlign:
                                  TextAlign.center,
                              style: TextStyle(
                                fontSize:
                                    18,
                              ),
                              decoration: InputDecoration(
                                border:
                                    OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical:
                                      8,
                                ),
                                isDense:
                                    true,
                                counterText:
                                    "",
                                hintText:
                                    "00",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  4,
                            ),
                            child: Text(
                              ":",
                              style: TextStyle(
                                fontSize:
                                    20,
                              ),
                            ),
                          ),
                          SizedBox(
                            width:
                                60,
                            child: TextField(
                              controller:
                                  secBreak,
                              keyboardType:
                                  TextInputType.number,
                              textAlign:
                                  TextAlign.center,
                              style: TextStyle(
                                fontSize:
                                    18,
                              ),
                              decoration: InputDecoration(
                                border:
                                    OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical:
                                      8,
                                ),
                                isDense:
                                    true,
                                counterText:
                                    "",
                                hintText:
                                    "00",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height:
                      5,
                ),
                Text(
                  s,
                  style: TextStyle(
                    fontWeight:
                        FontWeight.w500,
                    fontSize:
                        15,
                  ),
                ),
                Text(
                  "${(secondsremaining ~/ 3600).toString().padLeft(2, '0')}:${(secondsremaining ~/ 60).toString().padLeft(2, '0')}:${(secondsremaining % 60).toString().padLeft(2, '0')}",
                  style: TextStyle(
                    fontSize:
                        24,
                  ),
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  mainAxisSize:
                      MainAxisSize.min,
                  children: [
                    Visibility(
                      visible:
                          visiblebutton,
                      child: ElevatedButton(
                        onPressed:
                            canclebutton,
                        child: Text(
                          'cancle',
                        ),
                      ),
                    ),
                    SizedBox(
                      width:
                          10,
                    ),
                    Visibility(
                      visible:
                          visiblebreak,
                      child: ElevatedButton(
                        onPressed:
                            changebutton,
                        child: Text(
                          state,
                        ),
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
                20,
          ),
          Buddystack(
            body:
                widget.body,
            buddystack:
                widget.studdybuddies[widget.selectedBuddy],
          ),
        ],
      ),
    );
  }
}
