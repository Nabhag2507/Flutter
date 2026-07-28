import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StudentRegistration extends StatefulWidget {
  const StudentRegistration({super.key});

  @override
  State<StudentRegistration> createState() => _StudentRegistrationState();
}

class _StudentRegistrationState extends State<StudentRegistration> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student registration form")),
      body: Center(
        child: Container(
          height: 800,
          width: 400,
          decoration: BoxDecoration(
            border: Border.all(width: 5, color: Colors.black),
          ),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Enter your name"),
                      hint: Text("Name field"),
                    ),
                    validator: (value) {
                      if (value == null || value.length < 5) {
                        return "Minimum 5 character needed";
                      }
                      if (value.length > 30) {
                        return "Maximum 30 character allowed";
                      }
                      if (!RegExp(r"^[a-zA-z\s]+$").hasMatch(value)) {
                        return "Only alphabets are allowed";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Enter your age"),
                      hint: Text("Age field"),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "value can't be null";
                      }
                      if (!RegExp(r"^[0-9]+$").hasMatch(value)) {
                        return "Only numbers allowed";
                      }
                      if (int.parse(value) < 18 || int.parse(value) > 60) {
                        return "Only age between 18 and 60 allowed";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(10),
                    ],
                    decoration: InputDecoration(
                      label: Text("Enter your Mobile Number"),
                      hint: Text("Mobile Number field"),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "value can't be null";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Form submitted successfully."),
                            duration: Duration(milliseconds: 1000),
                          ),
                        );
                      }
                    },
                    child: Text("Submit form"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
