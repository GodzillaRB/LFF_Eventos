// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:omni_datetime_picker/omni_datetime_picker.dart';

class Omnidatetimepicker extends StatefulWidget {
  const Omnidatetimepicker({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _OmnidatetimepickerState createState() => _OmnidatetimepickerState();
}

class _OmnidatetimepickerState extends State<Omnidatetimepicker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Omni DateTime Picker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  DateTime? dateTime = await showOmniDateTimePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate:
                        DateTime(1600).subtract(const Duration(days: 3652)),
                    lastDate: DateTime.now().add(
                      const Duration(days: 3652),
                    ),
                    is24HourMode: false,
                    isShowSeconds: false,
                    minutesInterval: 1,
                    secondsInterval: 1,
                    isForce2Digits: true,
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    constraints: const BoxConstraints(
                      maxWidth: 350,
                      maxHeight: 650,
                    ),
                    transitionBuilder: (context, anim1, anim2, child) {
                      return FadeTransition(
                        opacity: anim1.drive(
                          Tween(
                            begin: 0,
                            end: 1,
                          ),
                        ),
                        child: child,
                      );
                    },
                    transitionDuration: const Duration(milliseconds: 200),
                    barrierDismissible: true,
                    selectableDayPredicate: (dateTime) {
                      // Disable 25th Feb 2023
                      if (dateTime == DateTime(2023, 2, 25)) {
                        return false;
                      } else {
                        return true;
                      }
                    },
                  );

                  print("dateTime: $dateTime");
                },
                child: const Text("Show DateTime Picker"),
              ),
              ElevatedButton(
                onPressed: () async {
                  List<DateTime>? dateTimeList =
                      await showOmniDateTimeRangePicker(
                    context: context,
                    startInitialDate: DateTime.now(),
                    startFirstDate:
                        DateTime(1600).subtract(const Duration(days: 3652)),
                    startLastDate: DateTime.now().add(
                      const Duration(days: 3652),
                    ),
                    endInitialDate: DateTime.now(),
                    endFirstDate:
                        DateTime(1600).subtract(const Duration(days: 3652)),
                    endLastDate: DateTime.now().add(
                      const Duration(days: 3652),
                    ),
                    is24HourMode: false,
                    isShowSeconds: false,
                    minutesInterval: 1,
                    secondsInterval: 1,
                    isForce2Digits: true,
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    constraints: const BoxConstraints(
                      maxWidth: 350,
                      maxHeight: 650,
                    ),
                    transitionBuilder: (context, anim1, anim2, child) {
                      return FadeTransition(
                        opacity: anim1.drive(
                          Tween(
                            begin: 0,
                            end: 1,
                          ),
                        ),
                        child: child,
                      );
                    },
                    transitionDuration: const Duration(milliseconds: 200),
                    barrierDismissible: true,
                    selectableDayPredicate: (dateTime) {
                      // Disable 25th Feb 2023
                      if (dateTime == DateTime(2023, 2, 25)) {
                        return false;
                      } else {
                        return true;
                      }
                    },
                  );

                  print("Start dateTime: ${dateTimeList?[0]}");
                  print("End dateTime: ${dateTimeList?[1]}");
                },
                child: const Text("Show DateTime Range Picker"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
