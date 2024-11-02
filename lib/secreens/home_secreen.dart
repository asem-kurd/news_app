import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';

class HomeSecreen extends StatelessWidget {
  const HomeSecreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent, // transparent -> شفاف
          elevation: 0, // elevation -> الظل
          centerTitle: true, //centerTitle -> توسيط العنوان
          title: RichText(
            text: TextSpan(
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              children: [
                const TextSpan(
                  text: "News",
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: "Cloud",
                  style: TextStyle(color: Colors.yellow[800]),
                ),
              ],
            ),
          ),
        ),
        body:  CategoriesListView(),
      ),
    );
  }
}
