import 'package:flutter/material.dart';

class FirstForm extends StatefulWidget {
  const FirstForm({super.key});

  @override
  State<FirstForm> createState() => _FirstFormState();
}

class _FirstFormState extends State<FirstForm> {
  final _formKey = GlobalKey<FormState>();
  var buttonText = "submit";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fill the form")),
      body: Center(
        child: Form(
          key: _formKey,
          child: Container(
            width: 400,
            height: 800,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 4),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                      ),
                      label: Text("Enter your name"),
                      hint: Text("Name field"),
                    ),
                    validator: (value) {
                      // Added isEmpty check to catch empty inputs
                      if (value == null || value.isEmpty) {
                        return "Please enter your name";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      focusColor: Colors.pinkAccent,
                      label: Text("Enter your email"),
                      hint: Text("Email field"),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter your email address";
                      }
                      final emailRegEx = RegExp(
                        r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
                      );
                      if (!emailRegEx.hasMatch(value)) {
                        return "please enter a valid email";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                      ),
                      label: Text("Enter your Password"),
                      hint: Text("Password field"),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter your password";
                      }
                      final passwordRegex = RegExp(
                        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$',
                      );
                      if (!passwordRegex.hasMatch(value)) {
                        return "Must be 8+ chars with uppercase, lowercase & digit";
                      }
                      return null;
                    },
                  ),
                  OutlinedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        buttonText = "submitted";
                        setState(() {});
                      }
                    },
                    child: Text(buttonText),
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
