import 'package:flutter/material.dart';
import 'package:task/features/subjects/data/subjects_list.dart';
import 'custom_subject_item.dart';

class CustomSubjects extends StatelessWidget {
  const CustomSubjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          const Text(
            "Please select subject",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomSubjectItem(
              items: subjectsList,
            ),
          ),
        ],
      ),
    );
  }
}
