import 'package:flutter/material.dart';

void main(
  List<String> args,
) {
  runApp(
    MaterialApp(
      home:
          Buddymakerscreen(),
    ),
  );
}

class Buddymakerscreen
    extends
        StatefulWidget {
  const Buddymakerscreen({
    super.key,
  });

  @override
  State<
    Buddymakerscreen
  >
  createState() =>
      _BuddymakerscreenState();
}

class _BuddymakerscreenState
    extends
        State<
          Buddymakerscreen
        > {
  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/hair/base1.png',
                  height:
                      200,
                  width:
                      200,
                  filterQuality:
                      FilterQuality.none,
                  fit:
                      BoxFit.contain,
                ),
                Image.asset(
                  'assets/images/base/body-base1.png',
                  filterQuality:
                      FilterQuality.none,
                  height:
                      200,
                  width:
                      200,
                  fit:
                      BoxFit.contain,
                ),
                Image.asset(
                  'assets/images/clothes/girl-clothes1.png',
                  height:
                      200,
                  width:
                      200,
                  filterQuality:
                      FilterQuality.none,
                  fit:
                      BoxFit.contain,
                ),
                Image.asset(
                  'assets/images/accessories/ribbon-A1.png',
                  height:
                      200,
                  width:
                      200,
                  filterQuality:
                      FilterQuality.none,
                  fit:
                      BoxFit.contain,
                ),
                Image.asset(
                  'assets/images/eyes/girl-eyes1.png',
                  height:
                      200,
                  width:
                      200,
                  filterQuality:
                      FilterQuality.none,
                  fit:
                      BoxFit.contain,
                ),
                Image.asset(
                  'assets/images/hair/front-hair1.png',
                  height:
                      200,
                  width:
                      200,
                  filterQuality:
                      FilterQuality.none,
                  fit:
                      BoxFit.contain,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
