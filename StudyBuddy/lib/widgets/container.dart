import 'package:flutter/material.dart';

class BuddyContainer
    extends
        StatelessWidget {
  final Widget
  child;
  const BuddyContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/backgrounds/background-1.png",
          ),
          fit:
              BoxFit
                  .cover,
        ),
      ),
      child: child,
    );
  }
}
