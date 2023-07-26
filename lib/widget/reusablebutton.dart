import 'package:flutter/material.dart';

class Reusablebutton extends StatelessWidget {
  const Reusablebutton({
    super.key,
    required this.flex,
    required this.lable,
    required this.color,
    required this.onTap,
  });

  final int flex;
  final String lable;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 70,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(1, 5), // changes position of shadow
              ),
            ],
          ),
          child: Center(
            child: Text(
              lable,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
