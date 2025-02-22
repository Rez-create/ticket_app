import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  const TextStyleFourth(
      {super.key, required this.text, required TextAlign textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headlineStyle3.copyWith(color: Colors.white),
    );
  }
}
