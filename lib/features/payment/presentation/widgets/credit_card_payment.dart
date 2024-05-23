import 'package:flutter/material.dart';
import 'package:task/core/widgets/custom_btn.dart';
import 'package:task/features/payment/presentation/widgets/custom_credit_text_field.dart';
import 'package:task/features/payment/presentation/widgets/custom_credit_text_widget.dart';

class CreditCardPayment extends StatefulWidget {
  const CreditCardPayment({super.key});

  @override
  State<CreditCardPayment> createState() => _CreditCardPaymentState();
}

class _CreditCardPaymentState extends State<CreditCardPayment> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController expirtyController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    numberController.dispose();
    expirtyController.dispose();
    cvvController.dispose();
  }

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
              "Credit/ Debit Card",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          leading: Icon(
            Icons.credit_card_rounded,
            color: Colors.black,
          ),
        ),
        onExpansionChanged: (value) {
          setState(() {});
        },
        children: [
          Container(
            color: Colors.grey[200],
            child: Column(
              children: [
                const SizedBox(height: 5),
                Image.network(
                  height: 30,
                  "https://getsby.com/wp-content/uploads/2023/01/Visa-Mastercard-1-1024x378.png",
                ),
                const SizedBox(height: 10),
                const CustomCreditTextWidget(
                  text: "Credit Name",
                ),
                CustomCreditTextField(
                  hintText: 'EX Mohamed Ragab',
                  keyboardType: TextInputType.name,
                  controller: nameController,
                ),
                const SizedBox(height: 10),
                const CustomCreditTextWidget(
                  text: "Credit Number",
                ),
                CustomCreditTextField(
                  hintText: 'EX  **** **** **** 5231',
                  keyboardType: TextInputType.number,
                  controller: numberController,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomCreditTextWidget(
                          text: "Expiration Date",
                        ),
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: CustomCreditTextField(
                            hintText: '02/2025',
                            keyboardType: TextInputType.number,
                            controller: expirtyController,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomCreditTextWidget(
                          text: "CVV",
                        ),
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: CustomCreditTextField(
                            hintText: '***',
                            keyboardType: TextInputType.number,
                            controller: cvvController,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CustomBtn(
                  onPressed: () {
                    nameController.clear();
                    numberController.clear();
                    expirtyController.clear();
                    cvvController.clear();
                  },
                  text: "Add other card",
                  height: 45,
                  width: 150,
                  backgroundColor: Colors.lightGreen,
                  color: Colors.black,
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
