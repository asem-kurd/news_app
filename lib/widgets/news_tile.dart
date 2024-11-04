import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Image.asset(
            "assets/imgs/6.png",
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "warning: in the working copy of 'android/local.properties', LF will be replaced by CRLF the next time Git touches it",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        const SizedBox(
          height: 1,
        ),
        const Text(
          "warning: in the working copy of 'android/local.properties', LF will be replaced by CRLF the next time Git touches it",
          style: TextStyle(
            fontSize: 12,
            color: Color.fromARGB(255, 94, 92, 92),
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }
}
