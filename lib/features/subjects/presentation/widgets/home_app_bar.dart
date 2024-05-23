import 'package:flutter/material.dart';

class CustomSubjectScreenAppBar extends StatelessWidget {
  const CustomSubjectScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(45),
          bottomRight: Radius.circular(45),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 40),
          RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.white, fontSize: 18),
              children: [
                TextSpan(text: 'Welcome '),
                TextSpan(
                  text: 'Ali Abdelnaby',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Please choose your subject',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
