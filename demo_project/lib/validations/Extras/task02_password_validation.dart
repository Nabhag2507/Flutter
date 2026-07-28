import 'package:flutter/material.dart';

class PasswordValidation extends StatefulWidget {
  const PasswordValidation({super.key});

  @override
  State<PasswordValidation> createState() => _PasswordValidationState();
}

class _PasswordValidationState extends State<PasswordValidation> {
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
                    // keyboardType: TextInputType.number,
                    // inputFormatters: [
                    //   FilteringTextInputFormatter.digitsOnly,
                    //   LengthLimitingTextInputFormatter(10),
                    // ],
                    decoration: InputDecoration(
                      label: Text("Enter your password"),
                      hint: Text("Password field"),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "value can't be null";
                      }
                      if (value.length < 8) {
                        return "Minimum 8 characters required.";
                      }
                      if (!RegExp(r"[a-z]").hasMatch(value)) {
                        return "At least one lower case character required.";
                      }
                      if (!RegExp(r"[A-Z]").hasMatch(value)) {
                        return "At least one upper case character required.";
                      }
                      if (!RegExp(r"[0-9]").hasMatch(value)) {
                        return "At least one number required.";
                      }
                      if (!RegExp(r"[!@#$%^&*]").hasMatch(value)) {
                        return "At least one special character required.";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Password approved."),
                            duration: Duration(milliseconds: 1000),
                          ),
                        );
                      }
                    },
                    child: Text("Validate password"),
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
