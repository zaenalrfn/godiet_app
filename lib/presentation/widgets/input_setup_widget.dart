import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Untuk input formatter

class InputSetup extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final TextInputType? keyBoardType;

  const InputSetup({
    super.key,
    required this.hint,
    this.controller,
    this.keyBoardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyBoardType ?? TextInputType.text, // Default ke text
      inputFormatters: keyBoardType == TextInputType.number
          ? [FilteringTextInputFormatter.digitsOnly] // Hanya angka
          : null,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.grey.shade400,
          fontSize: 14,
        ),
        filled: true,
        fillColor: const Color(0xFFF5F7FA),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color(0xFF00BCD4),
            width: 2,
          ),
        ),
        // Tambahan untuk accessibility
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
      ),
    );
  }
}