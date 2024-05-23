import 'package:flutter/material.dart';
import 'package:task/features/booking_teachers/presentation/widgets/custom_teacher_item.dart';
import 'package:task/features/booking_teachers/data/teachers_list.dart';
import '../widgets/back_confirm_booking_buttons.dart';
import '../widgets/booking_screen_app_bar.dart';
import '../widgets/search_text_field.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CustomBookingScreenAppBar(),
          const SizedBox(height: 20),
          const SearchTextField(),
          const SizedBox(height: 20),
          CustomTeacherItem(
            items: teachersList,
          ),
          const SizedBox(height: 25),
          const BackAndConfirmTeachersButtons(),
        ],
      ),
    );
  }
}
