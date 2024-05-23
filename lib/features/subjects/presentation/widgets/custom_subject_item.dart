import 'package:flutter/material.dart';
import '../../models/subject_item_model.dart';

class CustomSubjectItem extends StatefulWidget {
  const CustomSubjectItem({
    super.key,
    required this.items,
  });
  final List<SubjectItemModel> items;

  @override
  State<CustomSubjectItem> createState() => _CustomSubjectItemState();
}

class _CustomSubjectItemState extends State<CustomSubjectItem> {
  final Set<int> _selectedItems = {};

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.items.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 5,
        crossAxisCount: 2,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (context, index) {
        final item = widget.items[index];
        final isSelected = _selectedItems.contains(index);
        return GestureDetector(
          onTap: () {
            setState(() {
              if (isSelected) {
                _selectedItems.remove(index);
              } else {
                _selectedItems.add(index);
              }
            });
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isSelected
                  ? Colors.green.withOpacity(0.5)
                  : Colors.transparent,
              border: Border.all(
                color: isSelected ? Colors.green : Colors.grey,
                width: 1,
              ),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(item.imageUrl),
                          fit: BoxFit.fill,
                        ),
                      ),
                      height: 110,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      item.text,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                if (isSelected)
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.5),
                      border: Border.all(
                        color: const Color(0xff679C77),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.done,
                        size: 60,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
