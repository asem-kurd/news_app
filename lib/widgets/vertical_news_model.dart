import 'package:flutter/material.dart';

class VerticalNews extends StatelessWidget {
  const VerticalNews(
      {super.key,
      required this.imgPath,
      required this.titleNews,
      required this.descriptionNews});
  final String imgPath;
  final String titleNews;
  final String descriptionNews;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Card(
          child: InkWell(
            onTap: () {},
            child: const Stack(
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
    );
  }
}
