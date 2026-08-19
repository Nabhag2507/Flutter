import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/*
  dd/MM/yyyy
  dd-MM-yyyy
  dd-MMM-yyyy
  dd-MM-yy
  dd MMM, yyyy
 */

class DateFormattingDemoPage extends StatefulWidget {
  const DateFormattingDemoPage({super.key});

  @override
  State<DateFormattingDemoPage> createState() => _DateFormattingDemoPageState();
}

class _DateFormattingDemoPageState extends State<DateFormattingDemoPage> {
  String? _selectedDate1;
  String? _selectedDate2;
  String? _selectedDate3;
  String? _selectedDate4;
  String? _selectedDate5;

  String? _selectedTime1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Date & Time Formatting")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Select date and time",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.calendar_today),
                      label: const Text("Choose date"),
                      onPressed: () async {
                        final DateTime? date = await showDatePicker(
                          context: context,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2030),
                          initialDate: DateTime.now(),
                        );
                        if (!mounted) return;
                        if (date != null) {
                          setState(() {
                            _selectedDate1 = DateFormat(
                              "dd/MM/yyyy",
                            ).format(date);
                            _selectedDate2 = DateFormat(
                              "dd-MM-yyyy",
                            ).format(date);
                            _selectedDate3 = DateFormat(
                              "dd-MMM-yyyy",
                            ).format(date);
                            _selectedDate4 = DateFormat(
                              "dd-MM-yy",
                            ).format(date);
                            _selectedDate5 = DateFormat(
                              "dd MMM, yyyy",
                            ).format(date);
                          });
                        }
                      },
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.access_time),
                      label: const Text("Choose time"),
                      onPressed: () async {
                        final TimeOfDay? time = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );
                        if (!mounted) return;
                        if (time != null) {
                          final now = DateTime.now();
                          final dt = DateTime(
                            now.year,
                            now.month,
                            now.day,
                            time.hour,
                            time.minute,
                          );
                          setState(() {
                            _selectedTime1 = DateFormat.jm().format(dt);
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: const Icon(Icons.event_note),
                    title: const Text('dd/MM/yyyy'),
                    subtitle: Text(_selectedDate1 ?? 'No date selected'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.event_note),
                    title: const Text('dd-MM-yyyy'),
                    subtitle: Text(_selectedDate2 ?? 'No date selected'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.event_note),
                    title: const Text('dd-MMM-yyyy'),
                    subtitle: Text(_selectedDate3 ?? 'No date selected'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.event_note),
                    title: const Text('dd-MM-yy'),
                    subtitle: Text(_selectedDate4 ?? 'No date selected'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.event_note),
                    title: const Text('dd MMM, yyyy'),
                    subtitle: Text(_selectedDate5 ?? 'No date selected'),
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.access_time),
                    title: const Text('Selected time'),
                    subtitle: Text(_selectedTime1 ?? 'No time selected'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
