import 'package:flutter/material.dart';
import 'package:task/features/booking_teachers/models/teacher_item_model.dart';
import 'package:task/features/booking_teachers/presentation/widgets/custom_book_btn.dart';

class CustomTeacherItem extends StatefulWidget {
  const CustomTeacherItem({super.key, required this.items});
  final List<TeacherItemModel> items;

  @override
  State<CustomTeacherItem> createState() => _CustomTeacherItemState();
}

class _CustomTeacherItemState extends State<CustomTeacherItem> {
  final List<int> _pressCount = [];
  int _nextCount = 1;
  @override
  void initState() {
    super.initState();
    _pressCount.addAll(List.generate(widget.items.length, (index) => 0));
  }

  void _updateCountsAfterRemoval(int removedCount) {
    for (int i = 0; i < _pressCount.length; i++) {
      if (_pressCount[i] > removedCount) {
        _pressCount[i]--;
      }
    }
    _nextCount--;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        itemCount: widget.items.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          childAspectRatio: 1 / 1.35,
        ),
        itemBuilder: (context, index) {
          final item = widget.items[index];
          final isSelected = _pressCount[index] > 0;
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
              border: Border.all(
                color: isSelected ? Colors.green : Colors.white,
              ),
            ),
            child: Stack(
              children: [
                Align(
                  child: Column(
                    children: [
                      const SizedBox(height: 5),
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(item.imageUrl),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        item.name,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        item.price,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        item.subject,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                      CustomBookBtn(
                        onPressed: () {
                          setState(() {
                            if (_pressCount[index] == 0) {
                              _pressCount[index] = _nextCount++;
                            } else {
                              int removedCount = _pressCount[index];
                              _pressCount[index] = 0;
                              _updateCountsAfterRemoval(removedCount);
                            }
                          });
                        },
                        text: isSelected ? "booked" : "Book",
                        icon: isSelected
                            ? Icons.check
                            : Icons.calendar_month_outlined,
                        height: 35,
                        width: 115,
                        backgroundColor:
                            isSelected ? Colors.green : Colors.blue,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                if (isSelected)
                  Positioned(
                    right: 15,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: Text(
                        _pressCount[index].toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
