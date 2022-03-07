import 'package:flutter/material.dart';

class ButtonWidgets extends StatefulWidget {
  ButtonWidgets(
      {required this.buttonColor,
        required this.buttonText,
        required this.buttonTextColor,
        this.onPressed});

  Color buttonColor;
  String buttonText;
  Color buttonTextColor;
  final onPressed;
  // final VoidCallback? onPressed;

  @override
  _ButtonWidgetsState createState() => _ButtonWidgetsState();
}

class _ButtonWidgetsState extends State<ButtonWidgets> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            color: widget.buttonColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              widget.buttonText,
              style: TextStyle(
                color: widget.buttonTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
