import 'package:flutter/material.dart';

class CustomPaymentStepperBar extends StatelessWidget {
  const CustomPaymentStepperBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            children: [
              Icon(
                Icons.check_circle_outline,
                color: Colors.green,
              ),
              Text(
                "Invoice details",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          const Icon(Icons.arrow_right_alt_sharp, color: Colors.green),
          const SizedBox(width: 10),
          const Row(
            children: [
              Icon(
                Icons.check_circle_outline,
                color: Colors.green,
              ),
              Text(
                "Payment Type",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          const Icon(
            Icons.arrow_right_alt_sharp,
            color: Colors.grey,
          ),
          const SizedBox(width: 10),
          Row(
            children: [
              const Icon(
                Icons.check_circle_outline,
                color: Colors.grey,
              ),
              Text(
                "Done",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
