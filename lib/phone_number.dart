// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PhoneNumberInputContainer extends StatelessWidget {
  final Function(String) onVerifyPhoneNumber; // Callback function

  PhoneNumberInputContainer({required this.onVerifyPhoneNumber});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            labelText: 'Phone Number',
            hintText: 'Enter your phone number',
          ),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {
            // Get the phone number from the TextField
            String phoneNumber = _getPhoneNumber(); // Implement _getPhoneNumber
            // Call the onVerifyPhoneNumber callback
            onVerifyPhoneNumber(phoneNumber);
          },
          child: Text('Verify Phone Number'),
        ),
      ],
    );
  }

  // Implement a method to retrieve the phone number from the TextField
  String _getPhoneNumber() {
    // Retrieve the phone number from the TextField
    // You can use the controller or other means to get the text.
    return '1234567890'; // Replace with your logic to get the phone number
  }
}
