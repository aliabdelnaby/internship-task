import 'package:flutter/material.dart';
import 'package:task/features/payment/presentation/widgets/cash_payment.dart';
import 'package:task/features/payment/presentation/widgets/credit_card_payment.dart';
import 'package:task/features/payment/presentation/widgets/mobile_wallet.dart';

class CustomPaymentExpansionTilesMethods extends StatefulWidget {
  const CustomPaymentExpansionTilesMethods({super.key});

  @override
  State<CustomPaymentExpansionTilesMethods> createState() =>
      _CustomPaymentExpansionTilesMethodsState();
}

class _CustomPaymentExpansionTilesMethodsState
    extends State<CustomPaymentExpansionTilesMethods> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
      ),
      child: const Column(
        children: [
          //! Cash Payment
          CashPayment(),
          SizedBox(height: 15),
          //! Credit Card Payment
          CreditCardPayment(),
          SizedBox(height: 15),
          //! Mobile Wallet
          MobileWallet(),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
