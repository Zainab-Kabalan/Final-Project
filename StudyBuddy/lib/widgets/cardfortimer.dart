import 'package:flutter/material.dart';
import 'package:timer/widgets/textinputoftimer.dart';

class Cardfortimer
    extends
        StatelessWidget {
  const Cardfortimer({
    super.key,
  });

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
          Textinputoftimer(),
        ],
      ),
    );
  }
}
