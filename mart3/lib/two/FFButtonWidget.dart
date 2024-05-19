import 'package:flutter/material.dart';

import 'package:mart3/option/flutter_flow_theme.dart';

class FFButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const FFButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),

      ),
    );
  }
}
