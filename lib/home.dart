import 'package:flutter/material.dart';
import 'package:news_app/category_listview.dart';

import 'package:news_app/post_listview_bulder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'ANAS ',
                style: TextStyle(color: Colors.black),
              ),
              Text( 
                ' NEWS',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            const PostListViewBuilder(cate: "general")
          ],
        ));
  }
}

