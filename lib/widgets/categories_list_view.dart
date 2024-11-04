import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(imgPath: "assets/imgs/6.png", categoryName: "bisniss"),
    CategoryModel(imgPath: "assets/imgs/2.png", categoryName: "sports"),
    CategoryModel(imgPath: "assets/imgs/3.png", categoryName: "tech"),
    CategoryModel(imgPath: "assets/imgs/4.png", categoryName: "dance"),
    CategoryModel(imgPath: "assets/imgs/5.png", categoryName: "games"),
    CategoryModel(imgPath: "assets/imgs/6.png", categoryName: "world"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
