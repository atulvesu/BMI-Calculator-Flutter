import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function() onTab;
  final String buttonTitle;

  const BottomButton({required this.onTab, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        width: double.infinity,
        height: 80,
        color: const Color(0xFFEB1555),
        child: Center(
          child: Text(
            buttonTitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
