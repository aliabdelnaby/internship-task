import 'package:flutter/material.dart';

class CashPayment extends StatefulWidget {
  const CashPayment({super.key});

  @override
  State<CashPayment> createState() => _CashPaymentState();
}

class _CashPaymentState extends State<CashPayment> {
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
              "Cash payment",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          leading: Icon(
            Icons.attach_money_rounded,
            color: Colors.black,
          ),
        ),
        onExpansionChanged: (value) {
          setState(() {});
        },
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              color: Colors.grey[200],
            ),
          ),
        ],
      ),
    );
  }
}