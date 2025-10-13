import 'package:flutter/material.dart';
import 'package:news_app/post_listview_bulder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categ});
  final String categ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categ),),
      body: CustomScrollView(
        slivers: [post_listview_bulder(cate: categ,)],
      ),
    );
  }
}
