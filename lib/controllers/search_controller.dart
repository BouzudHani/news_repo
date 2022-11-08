import 'package:get/get.dart';

import '../models/news.dart';

class SearchController extends GetxController {
  var searchText1 = "".obs;

  var searchText2 = "".obs;

  RxList<News> firstNewsResults = <News>[].obs ;
  RxList<News> secondNewsResults = <News>[].obs ;

  void search(var newValue, bool isFirstSearch) async{

    // NewsService newsService = NewsService() ;
    //
    // if (isFirstSearch) {
    //   searchText1 = newValue;
    //   firstNewsResults = RxList<News>(await newsService.fetchNews(searchText1.value)) ;
    // } else {
    //   searchText2 = newValue;
    //   secondNewsResults = RxList<News>(await newsService.fetchNews(searchText2.value)) ;
    // }
  }
}
