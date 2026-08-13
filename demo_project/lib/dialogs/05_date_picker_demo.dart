import 'package:flutter/material.dart';

class DatePickerDemoBox extends StatefulWidget {
  const DatePickerDemoBox({super.key});

  @override
  State<DatePickerDemoBox> createState() => _DatePickerDemoBoxState();
}

class _DatePickerDemoBoxState extends State<DatePickerDemoBox> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                selectedDate = await showDatePicker(
                  context: context,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(3000),
                  initialDate: DateTime.now(),
                );

                if (selectedDate != null) {
                  setState(() {});
                }
              },
              child: Text("Choose date"),
            ),
            Text(selectedDate.toString()),
          ],
        ),
      ),
    );
  }
}
