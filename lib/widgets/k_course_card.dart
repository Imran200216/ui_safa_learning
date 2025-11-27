import 'package:flutter/material.dart';
import 'package:ui_tutorial/widgets/k_text.dart';

class KCourseCard extends StatelessWidget {
  final String courseTitle;
  final String courseDuration;
  final bool isCourseFree;
  final VoidCallback onCoursePlayIconTap;

  const KCourseCard({
    super.key,
    required this.courseTitle,
    required this.courseDuration,
    required this.isCourseFree,
    required this.onCoursePlayIconTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.grey.withOpacity(0.08),
      elevation: 0,
      child: ListTile(
        title: Row(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            KText(
              text: courseTitle,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              textAlign: TextAlign.start,
            ),

            isCourseFree
                ? Chip(
                    backgroundColor: Colors.green.withOpacity(0.2),

                    // Reduce Chip internal padding
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 0),

                    // Reduce label padding
                    labelPadding: EdgeInsets.symmetric(horizontal: 4),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.transparent),
                    ),

                    label: Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 4,
                      children: [
                        Icon(
                          Icons.discount,
                          color: Colors.black,
                          size: 14, // smaller icon
                        ),
                        KText(
                          textAlign: TextAlign.center,
                          text: "Free",
                          fontSize: 12,
                          // smaller text
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  )
                : SizedBox.shrink(),
          ],
        ),
        subtitle: KText(
          text: courseDuration,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Colors.grey,
          textAlign: TextAlign.start,
        ),
        trailing: IconButton(
          onPressed: () {
            onCoursePlayIconTap();
          },
          icon: Icon(Icons.play_arrow, color: Colors.black),
        ),
      ),
    );
  }
}
