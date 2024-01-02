import 'package:flutter/material.dart';
import '/widgets/subtitle_text.dart';

class DashboardButtonWidget extends StatelessWidget {
  const DashboardButtonWidget(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.onPressed});

  final String title, imagePath;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 65,
              width: 65,
            ),
            const SizedBox(height: 15),
            SubtitleTextWidget(
              label: title,
              fontSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
