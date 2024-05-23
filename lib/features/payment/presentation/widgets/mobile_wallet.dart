import 'package:flutter/material.dart';
import 'package:task/features/payment/presentation/widgets/custom_credit_text_field.dart';
import 'package:task/features/payment/presentation/widgets/custom_credit_text_widget.dart';

class MobileWallet extends StatefulWidget {
  const MobileWallet({super.key});

  @override
  State<MobileWallet> createState() => _MobileWalletState();
}

class _MobileWalletState extends State<MobileWallet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[200],
      ),
      child: ExpansionTile(
        iconColor: Colors.white,
        backgroundColor: Colors.blue,
        title: const ListTile(
          title: Center(
            child: Text(
              "Mobile Wallet",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          leading: Icon(
            Icons.wallet_rounded,
            color: Colors.black,
          ),
        ),
        onExpansionChanged: (value) {
          setState(() {});
        },
        children: [
          Container(
            color: Colors.grey[200],
            child: const Column(
              children: [
                SizedBox(height: 5),
                CustomCreditTextWidget(text: "Phone Number"),
                CustomCreditTextField(
                  hintText: "EX + 20 122156456",
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
