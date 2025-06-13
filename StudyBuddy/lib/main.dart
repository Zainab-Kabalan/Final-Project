import 'dart:io';
import 'package:flutter/material.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:timer/db/buddy-Storage.dart';
import 'package:timer/models/BuddyAssets/assestsofbuddy.dart';
import 'package:timer/screens/buddy.dart';

void main(
  List<String> args,
) async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform
      .isWindows) {
    sqfliteFfiInit();
    databaseFactory =
        databaseFactoryFfi;
  }
  List<buddy>
  buddys =
      await loadBuddy();

  sqfliteFfiInit();
  databaseFactory =
      databaseFactoryFfi;

  runApp(
    MaterialApp(
      home: Bodyofchoice(
        buddies:
            buddys,
      ),
    ),
  );
}

class MyApp
    extends
        StatelessWidget {
  final List<buddy>
  buddies;

  const MyApp({
    super.key,
    required this.buddies,
  });

  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Bodyofchoice(
      buddies:
          buddies,
    );
  }
}
