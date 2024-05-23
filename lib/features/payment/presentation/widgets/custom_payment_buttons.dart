import 'package:flutter/material.dart';
import 'package:task/features/thanks/presentation/screens/thanks_screen.dart';
import 'package:task/core/widgets/custom_btn.dart';

class CustomBackConfirmPaymentButtons extends StatelessWidget {
  const CustomBackConfirmPaymentButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomBtn(
          onPressed: () {
            Navigator.pop(context);
          },
          text: "Back",
          height: 50,
          width: 160,
          backgroundColor: const Color.fromARGB(255, 230, 224, 224),
          color: Colors.black,
        ),
        CustomBtn(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ThankYouScreen(),
              ),
            );
          },
          text: "Confirm",
          height: 50,
          width: 160,
          backgroundColor: Colors.blue,
          color: Colors.white,
        ),
      ],
    );
  }
}
