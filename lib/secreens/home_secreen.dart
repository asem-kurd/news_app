import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/news_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent, // transparent -> شفاف
          elevation: 0, // elevation -> الظل
          centerTitle: true, // centerTitle -> توسيط العنوان
          title: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: "News",
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: "Cloud",
                  style: TextStyle(color: Colors.yellow),
                ),
              ],
            ),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 30),
              ),
              NewsTileListView(),
            ],
          ),
        ),
      ),
    );
  }
}
