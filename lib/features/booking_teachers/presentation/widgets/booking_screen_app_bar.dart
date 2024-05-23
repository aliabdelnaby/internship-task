import 'package:flutter/material.dart';

class CustomBookingScreenAppBar extends StatelessWidget {
  const CustomBookingScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
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
                TextSpan(
                  text: 'Very good..',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Please choose your prefered teachers.',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
