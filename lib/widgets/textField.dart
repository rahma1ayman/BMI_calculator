import 'package:flutter/material.dart';

class DesignedTextField extends StatelessWidget {
  const DesignedTextField({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText:
            title == 'Email' ? 'Enter your email...' : 'Enter your password',
        hintStyle: const TextStyle(color: Colors.black, fontSize: 15),
        label: Text(
          title,
          style: const TextStyle(color: Colors.black, fontSize: 17),
        ),
        prefixIcon: title == "Email"
            ? const Icon(Icons.email_outlined)
            : const Icon(Icons.password),
        prefixIconColor: Colors.black,
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.black, width: 3),
        ),
      ),
      keyboardType:
          title == 'Email' ? TextInputType.emailAddress : TextInputType.number,
      validator: (value) {
        if (value!.isEmpty || value.length < 5) {
          return "Invalid to be empty or must be more than 4";
        }
      },
    );
  }
}
