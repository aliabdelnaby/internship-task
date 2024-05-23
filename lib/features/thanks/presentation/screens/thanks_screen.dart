import 'package:flutter/material.dart';
import 'package:task/features/thanks/presentation/widgets/thank_you_body.dart';
import 'package:task/features/thanks/presentation/widgets/thanks_stepper_bar.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            Image.network(
              "https://niceillustrations.com/wp-content/uploads/2021/03/Successful-Payment-color-800px-768x768.png",
              height: 250,
            ),
            const Icon(
              Icons.check_box_outlined,
              color: Colors.green,
              size: 100,
            ),
            const CustomThankYouBody(),
            const SizedBox(height: 100),
            const CustomThankYouStepperBar(),
          ],
        ),
      ),
    );
  }
}
