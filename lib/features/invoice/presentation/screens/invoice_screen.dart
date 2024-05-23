import 'package:flutter/material.dart';
import 'package:task/core/widgets/custom_btn.dart';
import 'package:task/features/invoice/presentation/widgets/custom_invoice_buttons.dart';
import 'package:task/features/invoice/presentation/widgets/custom_invoice_details_text_widget.dart';
import 'package:task/features/invoice/presentation/widgets/custom_invoice_stepper_bar.dart';
import 'package:task/features/invoice/presentation/widgets/custom_invoice_details.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            Image.network(
              "https://gob2b.com/wp-content/uploads/2021/08/undraw_online_payments_luau.png",
              height: 180,
            ),
            const SizedBox(height: 20),
            const CustomInvoiceDeatilsTextWidget(),
            const SizedBox(height: 15),
            //! Expansion Tile
            const CustomInvoiceDetails(),
            const SizedBox(height: 20),
            CustomBtn(
              onPressed: () {},
              text: "Pay now (11,658 EGP)",
              height: 60,
              width: double.infinity,
              backgroundColor: Colors.blue,
              color: Colors.white,
            ),
            const SizedBox(height: 15),
            const CustomInvoiceStepperBar(),
            const SizedBox(height: 15),
            const CustomBackConfirmInvoiceButtons(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
