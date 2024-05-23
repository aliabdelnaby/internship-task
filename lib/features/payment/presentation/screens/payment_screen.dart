import 'package:flutter/material.dart';
import 'package:task/features/payment/presentation/widgets/custom_payment_buttons.dart';
import 'package:task/features/payment/presentation/widgets/custom_payment_stepper.dart';
import 'package:task/features/payment/presentation/widgets/payment_methods.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Image.network(
              "https://www.bdo.com.ph/content/dam/bdounibank/en-ph/cbg-digital-marketing/digital/bdo-pay/2024/march---banner-resize/desktop/NewWeb_HeroBanners_Resize_486x440_Pay2.png",
              height: 150,
            ),
            const SizedBox(height: 20),
            //! Expansion Tile
            const CustomPaymentExpansionTilesMethods(),
            const SizedBox(height: 20),
            const CustomPaymentStepperBar(),
            const SizedBox(height: 20),
            const CustomBackConfirmPaymentButtons(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
