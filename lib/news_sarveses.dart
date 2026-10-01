

import 'package:dio/dio.dart';
import 'package:news_app/model/articale_model.dart';



class NewsSarveses {
  final dio = Dio();
  Future<List<ArticaleModel>> getnews({required String cate}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?category=$cate&apiKey=f913df020b8d4d1ea232202540171d33');
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articls = jsondata['articles'];
      List<ArticaleModel> arteclslist = [];
      for (var articl in articls) {
        ArticaleModel articaleModel = ArticaleModel.fromjson(articl);
        arteclslist.add(articaleModel);
      }
      return arteclslist;
    } on Exception catch (e) {
      // ignore: avoid_print
      print(e);
      return [];
    }
  }
}
