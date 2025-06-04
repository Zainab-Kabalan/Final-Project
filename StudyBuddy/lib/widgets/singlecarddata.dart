import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/models/BuddyInfo/buddyinfo.dart';
import 'package:timer/widgets/buddystack.dart';

class Singlecarddata
    extends
        StatelessWidget {
  Singlecarddata({
    required this.studdybuddies,
    required this.view,
    required this.totaltimestudied,
    required this.as,
    required this.i,
    required this.edit,
    required this.info,
    required this.buddystack,
    required this.body,
    super.key,
  });
  int
  totaltimestudied;
  final Assestsofbuddy
  as;
  final int i;
  final Fullbodyofchoice
  body;
  final buddy
  buddystack;
  List<buddy>
  studdybuddies;
  final Buddyinfo
  info;
  final void
  Function(
    Assestsofbuddy,
    int,
  )
  edit;
  final void
  Function(int)
  view;
  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Card(
      elevation: 3,

      margin:
          EdgeInsets.all(
            15,
          ),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color:
              Color.fromARGB(
                179,
                138,
                135,
                135,
              ),
          width: 1,
        ),

        borderRadius:
            BorderRadius.circular(
              20,
            ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width:
                    120,
                height:
                    100,
                child: Buddystack(
                  body:
                      body,
                  buddystack:
                      buddystack,
                ),
              ),
              Column(
                children: [
                  Text(
                    "Name: ${buddystack.Name} ",
                    style: TextStyle(
                      fontWeight:
                          FontWeight.bold,
                      fontSize:
                          20,
                    ),
                  ),

                  Text(
                    "Subject: ${buddystack.subject} ",
                    style: TextStyle(
                      fontSize:
                          15,
                      fontWeight:
                          FontWeight.w500,
                      color: const Color.fromARGB(
                        255,
                        124,
                        108,
                        108,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width:
                    10,
              ),
              ElevatedButton(
                onPressed: () {
                  edit(
                    as,
                    studdybuddies.indexOf(
                      buddystack,
                    ),
                  );
                },

                child: Text(
                  "edit",
                ),
              ),
              SizedBox(
                width:
                    10,
              ),
              ElevatedButton(
                onPressed: () {
                  view(
                    studdybuddies.indexOf(
                      buddystack
                          as buddy,
                    ),
                  );
                },
                child: Text(
                  "view",
                ),
              ),
              SizedBox(
                height:
                    50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
