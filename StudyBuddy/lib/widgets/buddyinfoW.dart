import 'package:flutter/material.dart';

class Buddyinfow
    extends
        StatelessWidget {
  const Buddyinfow({
    required this.text,
    required this.Valuetaking,
    required this.value,
    super.key,
  });
  final Function(
    String,
  )
  text;
  final String
  value;
  final Valuetaking;

  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Column(
      children: [
        Row(
          mainAxisAlignment:
              MainAxisAlignment
                  .center,
        ),
        SizedBox(
          height:
              40,
          width:
              100,
          child: TextField(
            onChanged: (
              value,
            ) {
              text(
                value,
              );
            },
            controller:
                Valuetaking,
            keyboardType:
                TextInputType.text,
            maxLength:
                30,
            decoration: InputDecoration(
              labelText:
                  value,
              labelStyle: TextStyle(
                color: const Color.fromARGB(
                  255,
                  90,
                  111,
                  122,
                ),
                fontSize:
                    20,
                fontWeight:
                    FontWeight.bold,
              ),

              isDense:
                  true,
              counterText:
                  "",
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
