import 'package:flutter/material.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/widgets/buddyinfoW.dart';

class Infobkg
    extends
        StatelessWidget {
  const Infobkg({
    required this.info,
    required this.savebuddy,
    super.key,
  });
  final void
  Function(
    Assestsofbuddy
    info,
  )
  savebuddy;
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
          ),
          Buddyinfow(
            value:
                "Subject:",
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
