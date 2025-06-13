import 'package:flutter/material.dart';

enum Assestsofbuddy {
  clothes,
  skin,
  eyes,
  accessories,
  fronthair,
  backhair,
  name,
  subject,
  totaltime,
}

const Asset = {
  'clothes':
      Assestsofbuddy
          .clothes,
  'skin':
      Assestsofbuddy
          .skin,
  'eyes':
      Assestsofbuddy
          .eyes,
  'accessories':
      Assestsofbuddy
          .accessories,
  'fronthair':
      Assestsofbuddy
          .fronthair,
  'backhair':
      Assestsofbuddy
          .backhair,
  'name':
      Assestsofbuddy
          .name,
  'subject':
      Assestsofbuddy
          .subject,
  'totaltime':
      Assestsofbuddy
          .totaltime,
};

class buddy {
  buddy({
    required this.totaltime,
    required this.Name,
    required this.clothes,
    required this.skin,
    required this.eyes,
    required this.accessories,
    required this.fronthair,
    required this.backhair,
    required this.subject,
  });
  String Name;
  int totaltime;
  int clothes;
  int skin;
  int eyes;
  int accessories;
  int fronthair;
  int backhair;
  String subject;

  Map<
    String,
    Object?
  >
  get buddystack {
    return {
      'BuddyName':
          Name,
      'BuddySubject':
          subject,
      'BuddyTotalTime':
          totaltime,
      'BuddyClothes':
          clothes,
      'BuddySkin':
          skin,
      'BuddyEyes':
          eyes,
      'BuddyAccessories':
          accessories,
      'BuddyFrontHair':
          fronthair,
      'BuddyBackHair':
          backhair,
    };
  }
}
