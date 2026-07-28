import 'package:flutter/material.dart';

class EmailValidation extends StatefulWidget {
  const EmailValidation({super.key});

  @override
  State<EmailValidation> createState() => _EmailValidationState();
}

class _EmailValidationState extends State<EmailValidation> {
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
                      label: Text("Enter your Email"),
                      hint: Text("Email field"),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "value can't be null";
                      }
                      final EmailRegEx = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                      );
                      if (!EmailRegEx.hasMatch(value)) {
                        return "Enter a valid email address";
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
                            content: Text("Email approved."),
                            duration: Duration(milliseconds: 1000),
                          ),
                        );
                      }
                    },
                    child: Text("Validate Email"),
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
