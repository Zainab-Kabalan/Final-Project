import 'package:timer/models/BuddyAssets/models%20of%20assests/accesories.dart';
import 'package:timer/models/BuddyAssets/models%20of%20assests/backhair.dart';
import 'package:timer/models/BuddyAssets/models%20of%20assests/clothes.dart';
import 'package:timer/models/BuddyAssets/FullbodyOfChoice.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/models/BuddyAssets/models%20of%20assests/eyes.dart';
import 'package:timer/models/BuddyAssets/models%20of%20assests/fronthair.dart';
import 'package:timer/models/BuddyAssets/models%20of%20assests/skins.dart';

List<
  Fullbodyofchoice
>
fullbody = [
  Fullbodyofchoice(
    buddyclothes: {
      Assestsofbuddy
          .clothes: [
        Clothes(
          clothes: [
            "assets/images/default.png",
            "assets/images/clothes/clothes-1.png",
            "assets/images/clothes/clothes-2.png",
            "assets/images/clothes/clothes-3.png",
            "assets/images/clothes/clothes-4.png",
          ],
        ),
      ],
    },
    buddyskin: {
      Assestsofbuddy
          .skin: [
        Skins(
          skin: [
            "assets/images/base/skin-1.png",
            "assets/images/base/skin-2.png",
            "assets/images/base/skin-3.png",
          ],
        ),
      ],
    },
    buddyeyes: {
      Assestsofbuddy
          .eyes: [
        Eyes(
          eyes: [
            "assets/images/eyes/eyes-0.png",
            "assets/images/eyes/eyes-1.png",
          ],
        ),
      ],
    },
    buddyaccesories: {
      Assestsofbuddy
          .accessories: [
        Accesories(
          accesories: [
            "assets/images/default.png",
            "assets/images/accessories/ribbon-A1.png",
          ],
        ),
      ],
    },
    buddybackhair: {
      Assestsofbuddy
          .backhair: [
        Backhair(
          backhair: [
            "assets/images/default.png",
            "assets/images/hair/base1.png",
          ],
        ),
      ],
    },
    buddyfronthair: {
      Assestsofbuddy
          .fronthair: [
        Fronthair(
          fronthair: [
            "assets/images/default.png",
            "assets/images/hair/front-hair1.png",
          ],
        ),
      ],
    },
  ),
];
