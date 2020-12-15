import 'package:flutter/material.dart';

class FormValidation extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<FormValidation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation'),
      ),
      body: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: FormField(
              builder: (FormFieldState formFieldState) {
                return formbody();
              },
            ),
          )
      ),
    );
  }
  formbody() {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(labelText: 'Name'),
          keyboardType: TextInputType.text,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validateName,
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Email'),
          keyboardType: TextInputType.emailAddress,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validateemail,
        ),
      ],
    );
  }

  String validateemail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  String validateName(String value) {
    if (value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }
}