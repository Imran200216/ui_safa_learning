import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:ui_tutorial/widgets/k_chip.dart';
import 'package:ui_tutorial/widgets/k_course_card.dart';
import 'package:ui_tutorial/widgets/k_text.dart';

class CourseLearningScreen extends StatelessWidget {
  const CourseLearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: Container(
        height: 100,
        color: Colors.white,
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                SlideAction(
                  outerColor: Colors.grey.withOpacity(0.2),
                  innerColor: Colors.black,
                  sliderButtonIcon: Icon(
                    Icons.book_outlined,
                    color: Colors.white,
                  ),
                  text: "Swipe to Unlock",
                  textStyle: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  elevation: 0,
                  borderRadius: 70,
                  height: 60,
                  sliderButtonIconSize: 12,
                ),

                // <-- Trailing Rs.200 text
                Positioned(
                  right: 20,
                  child: Text(
                    "Rs.200",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Arrow back
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ),

                    // More Hor
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Principles of Physics
                KText(
                  text: "Principles of Physics",
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  textAlign: TextAlign.start,
                ),

                const SizedBox(height: 10),

                // Images
                SvgPicture.asset(
                  "assets/images/svg/education.svg",
                  height: 260,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),

                const SizedBox(height: 10),

                Row(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 15hr 30min
                    Expanded(
                      child: KChip(
                        text: "15hr 30mins",
                        prefixChipIcon: Icons.alarm,
                        chipBgColor: Colors.grey.withOpacity(0.1),
                      ),
                    ),

                    // 30 Lessons
                    Expanded(
                      child: KChip(
                        text: "30 Lessons",
                        prefixChipIcon: Icons.book_outlined,
                        chipBgColor: Colors.grey.withOpacity(0.1),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Row(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Course Preview
                    KText(
                      text: "Course Preview",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      textAlign: TextAlign.start,
                    ),

                    // 3 Free Videos
                    KChip(
                      text: "3 Free Videos",
                      prefixChipIcon: Icons.video_call,
                      chipBgColor: Colors.green.withOpacity(0.2),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 20,

                  separatorBuilder: (context, index) {
                    return SizedBox(height: 8);
                  },
                  itemBuilder: (context, index) {
                    return KCourseCard(
                      courseTitle: "Introduction",
                      courseDuration: "10mins",
                      isCourseFree: true,
                      onCoursePlayIconTap: () {},
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
