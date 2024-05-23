import 'package:flutter/material.dart';
import '../../../invoice/presentation/screens/invoice_screen.dart';
import '../../../../core/widgets/custom_btn.dart';

class BackAndConfirmTeachersButtons extends StatelessWidget {
  const BackAndConfirmTeachersButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
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
                  builder: (context) => const InvoiceScreen(),
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
      ),
    );
  }
}
