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
              height: 70,
              width: 70,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SubtitleTextWidget(
                label: title,
                fontSize: 15,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
