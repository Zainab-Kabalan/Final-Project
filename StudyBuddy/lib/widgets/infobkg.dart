import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/widgets/buddyinfoW.dart';

class Infobkg
    extends
        StatelessWidget {
  const Infobkg({
    required this.subjecttaking,
    required this.text,
    required this.Valuetaking,
    required this.info,
    required this.savebuddy,

    super.key,
  });
  final Valuetaking;

  final subjecttaking;
  final void
  Function(
    Assestsofbuddy
    info,
  )
  savebuddy;
  final Function(
    String,
  )
  text;
  final Assestsofbuddy
  info;
  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Card(
      color:
          Color.fromARGB(
            144,
            150,
            239,
            255,
          ),
      margin:
          EdgeInsets.all(
            10,
          ),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(
              20,
            ),
      ),
      child: Column(
        children: [
          Buddyinfow(
            value:
                "Name:",
            Valuetaking:
                Valuetaking,
            text:
                text,
          ),
          Buddyinfow(
            value:
                "Subject:",
            Valuetaking:
                subjecttaking,
            text:
                text,
          ),
          ElevatedButton(
            onPressed: () {
              savebuddy(
                info,
              );
            },
            child: Text(
              "Save",
            ),
          ),
          SizedBox(
            height:
                15,
          ),
        ],
      ),
    );
  }
}
