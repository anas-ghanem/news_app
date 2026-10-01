import 'package:flutter/material.dart';

import 'package:news_app/model/articale_model.dart';
import 'package:news_app/news_sarveses.dart';
import 'package:news_app/post_listview.dart';

class PostListViewBuilder extends StatefulWidget {
  const PostListViewBuilder({super.key, required this.cate});
  final String cate;
  @override
  State<PostListViewBuilder> createState() => _PostListViewBuilderState();
}

class _PostListViewBuilderState extends State<PostListViewBuilder> {
  late Future<List<ArticaleModel>> future;
  @override
  void initState() {
    super.initState();
    future = NewsSarveses().getnews(cate: widget.cate);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticaleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PostListView(artical: snapshot.data!);
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
                child: Center(child: Text("oops there was error")));
          } else {
            return SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
