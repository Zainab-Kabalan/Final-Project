import 'package:flutter/material.dart';

class Buddyinfow
    extends
        StatelessWidget {
  const Buddyinfow({
    required this.value,
    super.key,
  });
  final String
  value;

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
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize:
                    30,
                fontWeight:
                    FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height:
              40,
          width:
              100,
          child: TextField(
            keyboardType:
                TextInputType.text,
            maxLength:
                30,
            decoration: InputDecoration(
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
