import 'package:flutter/material.dart';
import 'package:news_app/model/articale_model.dart';
import 'package:news_app/post_style.dart';

class PostListView extends StatelessWidget {
  final List<ArticaleModel> artical;
  const PostListView({super.key, required this.artical}); 
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: artical.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(top: 20,left: 3,right: 3),
        child: PostStyle(
          articaleModel: artical[index],
        ),
      );
    }));
  }
}
