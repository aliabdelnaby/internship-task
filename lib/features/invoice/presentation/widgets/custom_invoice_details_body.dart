import 'package:flutter/material.dart';

class InvoiceDetailsBody extends StatelessWidget {
  final int index;
  const InvoiceDetailsBody({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffF3F3F3),
          borderRadius: BorderRadius.circular(20)),
      child: ExpansionTile(
        title: Text(
          "Invoice (${index + 1}) details",
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
        subtitle: const Divider(
          color: Colors.grey,
        ),
        shape: const Border(),
        childrenPadding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
        children: const [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Invoice Number",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "1145789787",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "7,500 EGP",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Student Name",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "Ali Abdelrahman",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Payment Date",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "01/09/2023 - 10:45 AM",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Teacher Name",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "MR.Sayed Mohammed",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Teacher Subject",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "Math",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
