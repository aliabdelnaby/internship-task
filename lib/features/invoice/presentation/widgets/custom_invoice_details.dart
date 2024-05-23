import 'package:flutter/material.dart';
import 'package:task/features/invoice/presentation/widgets/custom_invoice_details_body.dart';

class CustomInvoiceDetails extends StatelessWidget {
  const CustomInvoiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: InvoiceDetailsBody(index: index),
        );
      },
    );
  }
}
