import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  const TextStyleThird(
      {super.key, required this.text, required TextAlign textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headlineStyle3.copyWith(color: Colors.white),
    );
  }
}
