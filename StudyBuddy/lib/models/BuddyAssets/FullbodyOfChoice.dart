import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/models/BuddyAssets/models%20of%20assests/accesories.dart';
import 'package:timer/models/BuddyAssets/models%20of%20assests/backhair.dart';
import 'package:timer/models/BuddyAssets/models%20of%20assests/clothes.dart';
import 'package:timer/models/BuddyAssets/models%20of%20assests/eyes.dart';
import 'package:timer/models/BuddyAssets/models%20of%20assests/fronthair.dart';

import 'package:timer/models/BuddyAssets/models%20of%20assests/skins.dart';

class Fullbodyofchoice {
  Fullbodyofchoice({
    required this.buddyeyes,
    required this.buddyskin,
    required this.buddyclothes,
    required this.buddyaccesories,
    required this.buddybackhair,
    required this.buddyfronthair,
  });
  final Map<
    Assestsofbuddy,
    List<Clothes>
  >
  buddyclothes;

  final Map<
    Assestsofbuddy,
    List<Skins>
  >
  buddyskin;
  final Map<
    Assestsofbuddy,
    List<Eyes>
  >
  buddyeyes;
  final Map<
    Assestsofbuddy,
    List<Fronthair>
  >
  buddyfronthair;
  final Map<
    Assestsofbuddy,
    List<Backhair>
  >
  buddybackhair;
  final Map<
    Assestsofbuddy,
    List<Accesories>
  >
  buddyaccesories;
}
