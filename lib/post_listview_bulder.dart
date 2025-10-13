import 'package:flutter/material.dart';

import 'package:news_app/model/articale_model.dart';
import 'package:news_app/news_sarveses.dart';
import 'package:news_app/post_listview.dart';

class post_listview_bulder extends StatefulWidget {
  post_listview_bulder({required this.cate});
  final String cate;
  @override
  State<post_listview_bulder> createState() => _post_listview_bulderState();
}

class _post_listview_bulderState extends State<post_listview_bulder> {
  var future;
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
            return post_listview(artical: snapshot.data!);
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
