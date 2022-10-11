
import 'package:flutter/material.dart';
class Oct11RouteTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String lable;
  final String? Function(String?)? validator;
  const Oct11RouteTextField({
    Key? key,
    required this.lable,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    );
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        label: Text(lable),
        border: border,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 8,
        ),
        fillColor: Colors.amberAccent.withOpacity(0.1),
        filled: true,
      ),
    );
  }
}
