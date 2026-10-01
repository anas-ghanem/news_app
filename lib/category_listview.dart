import 'package:flutter/material.dart';
import 'package:news_app/category.dart';
import 'package:news_app/model/category_model.dart';

class CategoryListView extends StatelessWidget {
  final List<CategoryModel> categorys = const [
    CategoryModel(categoryName: "sports", image: "assets/sports.jpg"),
    CategoryModel(categoryName: "business", image: "assets/business.jpg"),
    CategoryModel(categoryName: "health", image: "assets/health.jpg"),
    CategoryModel(categoryName: "science", image: "assets/science.jpg"),
    CategoryModel(categoryName: "technology", image: "assets/technology.jpg")
  ];
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorys.length,
          itemBuilder: (context, index) {
            return Category(
              category: categorys[index],
            );
          }),
    );
  }
}
