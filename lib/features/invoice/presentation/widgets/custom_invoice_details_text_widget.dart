import 'package:flutter/material.dart';

class CustomInvoiceDeatilsTextWidget extends StatelessWidget {
  const CustomInvoiceDeatilsTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),
      child: const Center(
        child: Text(
          "Invoices details",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
