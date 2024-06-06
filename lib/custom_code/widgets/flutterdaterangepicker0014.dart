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

import 'package:flutter_date_range_picker/flutter_date_range_picker.dart';

class Flutterdaterangepicker0014 extends StatefulWidget {
  const Flutterdaterangepicker0014({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _Flutterdaterangepicker0014State createState() =>
      _Flutterdaterangepicker0014State();
}

class _Flutterdaterangepicker0014State
    extends State<Flutterdaterangepicker0014> {
  DateRange? selectedDateRange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DefaultTabController(
          length: 3,
          child: TabBarView(
            children: <Widget>[
              Column(
                children: [
                  const SizedBox(height: 100),
                  const Text("The simple field example:"),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 250,
                    child: DateRangeField(
                      decoration: const InputDecoration(
                        label: Text("Date range picker"),
                        hintText: 'Please select a date range',
                      ),
                      onDateRangeSelected: (DateRange? value) {
                        setState(() {
                          selectedDateRange = value;
                        });
                      },
                      selectedDateRange: selectedDateRange,
                      pickerBuilder: datePickerBuilder,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(height: 100),
                  const Text("The simple form field example:"),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 250,
                    child: DateRangeFormField(
                      decoration: const InputDecoration(
                        label: Text("Date range picker"),
                        hintText: 'Please select a date range',
                      ),
                      pickerBuilder: (x, y) => datePickerBuilder(x, y, false),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    const Text("The decomposed widgets example :"),
                    const SizedBox(height: 20),
                    const Text("The date range picker widget:"),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 560,
                      child: DateRangePickerWidget(
                        maximumDateRangeLength: 10,
                        minimumDateRangeLength: 3,
                        disabledDates: [DateTime(2023, 11, 20)],
                        initialDisplayedDate: DateTime(2023, 11, 20),
                        onDateRangeChanged: print,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text("The month selector:"),
                    SizedBox(
                      width: 450,
                      child: MonthSelectorAndDoubleIndicator(
                        currentMonth: DateTime(2023, 11, 20),
                        onNext: () => debugPrint("Next"),
                        onPrevious: () => debugPrint("Previous"),
                        nextMonth: DateTime(2023, 12, 20),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text("A button to open the picker:"),
                    TextButton(
                      onPressed: () => showDateRangePickerDialog(
                          context: context, builder: datePickerBuilder),
                      child: const Text("Open the picker"),
                    ),
                    const SizedBox(height: 20),
                    const Text("The quick dateRanges:"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget datePickerBuilder(
          BuildContext context, dynamic Function(DateRange?) onDateRangeChanged,
          [bool doubleMonth = true]) =>
      DateRangePickerWidget(
        doubleMonth: doubleMonth,
        maximumDateRangeLength: 10,
        quickDateRanges: [
          QuickDateRange(dateRange: null, label: "Remove date range"),
          QuickDateRange(
            label: 'Last 3 days',
            dateRange: DateRange(
              DateTime.now().subtract(const Duration(days: 3)),
              DateTime.now(),
            ),
          ),
          QuickDateRange(
            label: 'Last 7 days',
            dateRange: DateRange(
              DateTime.now().subtract(const Duration(days: 7)),
              DateTime.now(),
            ),
          ),
          QuickDateRange(
            label: 'Last 30 days',
            dateRange: DateRange(
              DateTime.now().subtract(const Duration(days: 30)),
              DateTime.now(),
            ),
          ),
          QuickDateRange(
            label: 'Last 90 days',
            dateRange: DateRange(
              DateTime.now().subtract(const Duration(days: 90)),
              DateTime.now(),
            ),
          ),
          QuickDateRange(
            label: 'Last 180 days',
            dateRange: DateRange(
              DateTime.now().subtract(const Duration(days: 180)),
              DateTime.now(),
            ),
          ),
        ],
        minimumDateRangeLength: 3,
        initialDateRange: selectedDateRange,
        disabledDates: [DateTime(2023, 11, 20)],
        initialDisplayedDate:
            selectedDateRange?.start ?? DateTime(2023, 11, 20),
        onDateRangeChanged: onDateRangeChanged,
      );
}
