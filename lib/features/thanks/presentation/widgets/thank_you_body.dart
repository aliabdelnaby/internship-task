
import 'package:flutter/material.dart';
import 'package:task/features/subjects/presentation/screens/subject_screen.dart';

class CustomThankYouBody extends StatelessWidget {
  const CustomThankYouBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "THANK YOU!",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.green,
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          "Your reservation is being confirmed",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.green,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 50),
        Container(
          height: 45,
          margin: const EdgeInsets.symmetric(horizontal: 90),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black),
          ),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
                (route) => false,
              );
            },
            child: const Center(
              child: Text(
                "Browse Home",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
