import 'package:flutter/material.dart';

class DemoForm extends StatefulWidget {
  const DemoForm({super.key});

  @override
  State<DemoForm> createState() => _DemoFormState();
}

class _DemoFormState extends State<DemoForm> {
  String selectedGender = "Male";

  bool cricket = false;
  bool hockey = false;
  bool football = false;
  bool tennis = false;

  final List<String> cities = [
    "Rajkot",
    "Morbi",
    "Ahmedabad",
    "Surat",
    "Vadodara",
  ];

  String? selectedCity;

  @override
  Widget build(BuildContext context) {
    // Create selected sports list
    List<String> selectedSports = [];

    if (cricket) selectedSports.add("Cricket");
    if (hockey) selectedSports.add("Hockey");
    if (football) selectedSports.add("Football");
    if (tennis) selectedSports.add("Tennis");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Registration Form"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ================= RADIO BUTTON =================
            const Text(
              "Select Gender",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            RadioListTile<String>(
              value: "Male",
              groupValue: selectedGender,
              title: const Text("Male"),
              onChanged: (value) {
                setState(() {
                  selectedGender = value!;
                });
              },
            ),

            RadioListTile<String>(
              value: "Female",
              groupValue: selectedGender,
              title: const Text("Female"),
              onChanged: (value) {
                setState(() {
                  selectedGender = value!;
                });
              },
            ),

            Text(
              "Selected Gender : $selectedGender",
              style: const TextStyle(fontSize: 18),
            ),

            const Divider(thickness: 2),

            // ================= CHECKBOX =================
            const Text(
              "Select Sports",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            CheckboxListTile(
              value: cricket,
              title: const Text("Cricket"),
              onChanged: (value) {
                setState(() {
                  cricket = value!;
                });
              },
            ),

            CheckboxListTile(
              value: hockey,
              title: const Text("Hockey"),
              onChanged: (value) {
                setState(() {
                  hockey = value!;
                });
              },
            ),

            CheckboxListTile(
              value: football,
              title: const Text("Football"),
              onChanged: (value) {
                setState(() {
                  football = value!;
                });
              },
            ),

            CheckboxListTile(
              value: tennis,
              title: const Text("Tennis"),
              onChanged: (value) {
                setState(() {
                  tennis = value!;
                });
              },
            ),

            const Text(
              "Selected Sports",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            Text(
              selectedSports.isEmpty
                  ? "No Sport Selected"
                  : selectedSports.join(", "),
              style: const TextStyle(fontSize: 16),
            ),

            const Divider(thickness: 2),

            // ================= DROPDOWN =================
            const Text(
              "Select City",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            DropdownButton<String>(
              value: selectedCity,
              hint: const Text("Select City"),
              isExpanded: true,
              items: cities.map((city) {
                return DropdownMenuItem<String>(value: city, child: Text(city));
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedCity = value;
                });
              },
            ),

            const SizedBox(height: 10),

            Text(
              "Selected City : ${selectedCity ?? "None"}",
              style: const TextStyle(fontSize: 18),
            ),

            const Divider(thickness: 2),
          ],
        ),
      ),
    );
  }
}
