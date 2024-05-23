import 'package:flutter/material.dart';

class CustomThankYouStepperBar extends StatelessWidget {
  const CustomThankYouStepperBar({
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
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
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
          SizedBox(width: 10),
          Icon(Icons.arrow_right_alt_sharp, color: Colors.green),
          SizedBox(width: 10),
          Row(
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
          SizedBox(width: 10),
          Icon(
            Icons.arrow_right_alt_sharp,
            color: Colors.grey,
          ),
          SizedBox(width: 10),
          Row(
            children: [
              Icon(
                Icons.check_circle_outline,
                color: Colors.green,
              ),
              Text(
                "Done",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
