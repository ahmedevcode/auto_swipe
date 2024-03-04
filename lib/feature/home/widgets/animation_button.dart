import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  bool isTurnedOn = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTurnedOn = !isTurnedOn;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: 100.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: isTurnedOn ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Center(
          child: Text(
            isTurnedOn ? 'ON' : 'OFF',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}