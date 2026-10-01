import 'package:flutter/material.dart';
import 'package:news_app/category_view.dart';
import 'package:news_app/model/category_model.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(categ: category.categoryName,);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          height: 100,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(category.image), fit: BoxFit.fill)),
          child: Center(
              child: Text(
            category.categoryName,
            style: const TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
