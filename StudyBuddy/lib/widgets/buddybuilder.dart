import 'package:flutter/material.dart';

class Buddymakerscreen
    extends
        StatelessWidget {
  const Buddymakerscreen({
    super.key,
  });

  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/hair/base1.png',
          height:
              200,
          width:
              200,
          filterQuality:
              FilterQuality
                  .none,
          fit:
              BoxFit
                  .contain,
        ),
        Image.asset(
          'assets/images/base/body-base1.png',
          filterQuality:
              FilterQuality
                  .none,
          height:
              200,
          width:
              200,
          fit:
              BoxFit
                  .contain,
        ),
        Image.asset(
          'assets/images/clothes/girl-clothes1.png',
          height:
              200,
          width:
              200,
          filterQuality:
              FilterQuality
                  .none,
          fit:
              BoxFit
                  .contain,
        ),
        Image.asset(
          'assets/images/accessories/ribbon-A1.png',
          height:
              200,
          width:
              200,
          filterQuality:
              FilterQuality
                  .none,
          fit:
              BoxFit
                  .contain,
        ),
        Image.asset(
          'assets/images/eyes/girl-eyes1.png',
          height:
              200,
          width:
              200,
          filterQuality:
              FilterQuality
                  .none,
          fit:
              BoxFit
                  .contain,
        ),
        Image.asset(
          'assets/images/hair/front-hair1.png',
          height:
              200,
          width:
              200,
          filterQuality:
              FilterQuality
                  .none,
          fit:
              BoxFit
                  .contain,
        ),
      ],
    );
  }
}
