import 'package:flutter/material.dart';

class Textinputoftimer
    extends
        StatelessWidget {
  const Textinputoftimer({
    super.key,
  });
  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width:
                  100,
            ),
            Expanded(
              child: SizedBox(
                child: TextField(
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
            ),
          ],
        ),
      ],
    );
  }
}
