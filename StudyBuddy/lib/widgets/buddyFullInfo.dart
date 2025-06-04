import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/widgets/Buddyinacontainer.dart';
import 'package:google_fonts/google_fonts.dart';

class Buddyfullinfo
    extends
        StatelessWidget {
  const Buddyfullinfo({
    required this.studdybuddies,
    required this.body,
    required this.buddystack,
    super.key,
  });
  final Fullbodyofchoice
  body;
  final buddy
  buddystack;
  final List<buddy>
  studdybuddies;

  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            const Color.fromARGB(
              0,
              255,
              214,
              64,
            ),
        title: Text(
          'Buddy Card',
          style: GoogleFonts.bubblegumSans(
            fontWeight:
                FontWeight.bold,
            fontSize:
                25,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons
                .arrow_back,
          ),
          onPressed:
              () => Navigator.pop(
                context,
              ),
        ),
      ),
      backgroundColor:
          Colors
              .transparent,
      body: Center(
        child: Card(
          color:
              const Color.fromARGB(
                117,
                255,
                253,
                253,
              ),
          child: Column(
            children: [
              Buddyinacontainer(
                body:
                    body,
                buddystack:
                    buddystack,
              ),
              Column(
                children: [
                  Text(
                    "Name: ${buddystack.Name} ",
                    style: GoogleFonts.roboto(
                      fontWeight:
                          FontWeight.bold,
                      fontSize:
                          25,
                    ),
                  ),

                  Text(
                    "Subject: ${buddystack.subject} ",
                    style: GoogleFonts.roboto(
                      fontWeight:
                          FontWeight.bold,
                      fontSize:
                          25,
                    ),
                  ),
                  Text(
                    style: GoogleFonts.alegreyaSansSc(
                      fontWeight:
                          FontWeight.bold,
                      fontSize:
                          20,
                    ),
                    "Total Hours Studied: ${(buddystack.totaltime ~/ 3600).toString().padLeft(2, '0')}:"
                    "${((buddystack.totaltime % 3600) ~/ 60).toString().padLeft(2, '0')}:"
                    "${(buddystack.totaltime % 60).toString().padLeft(2, '0')}",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
