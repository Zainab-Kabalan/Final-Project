import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:timer/widgets/buddybuilder.dart';

class Timerclass
    extends
        StatefulWidget {
  const Timerclass({
    super.key,
  });

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
  //strings
  String state =
      "press to start";
  //timer object
  Timer? timer;
  //integers
  int
  secondsremaining =
      5;
  int?
  currentsecond;

  int breakseconds =
      5;
  int studystate =
      0;
  int session = 15;
  //bools
  bool
  visiblebutton =
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
    timer?.cancel();
    if (studystate ==
        1) {
      restartTimer(
        breakseconds,
      );
      studystate =
          2;
    } else if (studystate ==
        2) {
      restartTimer(
        session,
      );
      studystate =
          3;
    } else if (studystate ==
        3) {
      state =
          'over';
      visiblebutton =
          false;
    }
  }

  //starter timer that handles study session 1
  void
  starttimer() {
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
    state = 'pause';
    studystate = 1;
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

  //restar timer, handles the start and end of the timer started by the switch method
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
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height:
                  30,
            ),
            Text(
              "$s : $secondsremaining ",
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
                ElevatedButton(
                  onPressed:
                      changebutton,
                  child: Text(
                    state,
                  ),
                ),
              ],
            ),
            SizedBox(
              height:
                  100,
            ),
            // Buddymakerscreen(),s
          ],
        ),
      ),
    );
  }
}
