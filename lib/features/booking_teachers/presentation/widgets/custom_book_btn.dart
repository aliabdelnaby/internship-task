import 'package:flutter/material.dart';

class CustomBookBtn extends StatelessWidget {
  const CustomBookBtn({
    super.key,
    this.color,
    required this.text,
    this.onPressed,
    required this.height,
    required this.width,
    this.shape,
    required this.backgroundColor,
    required this.icon,
  });

  final Color? color;
  final String text;
  final VoidCallback? onPressed;
  final double height;
  final double width;
  final OutlinedBorder? shape;
  final Color backgroundColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              size: 18,
              color: Colors.white,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
