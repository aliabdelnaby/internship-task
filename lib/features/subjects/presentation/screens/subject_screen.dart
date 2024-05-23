import 'package:flutter/material.dart';
import '../../../booking_teachers/presentation/screens/booking_screen.dart';
import '../../../../core/widgets/custom_btn.dart';
import '../widgets/custom_categories.dart';
import '../widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CustomSubjectScreenAppBar(),
          const SizedBox(height: 20),
          const CustomSubjects(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: CustomBtn(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const BookingScreen(),
                  ),
                );
              },
              text: "Next",
              height: 50,
              width: 150,
              backgroundColor: Colors.blue,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
