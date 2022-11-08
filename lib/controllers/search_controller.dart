import 'package:get/get.dart';
import 'package:test2/services/news_service.dart';

import '../models/news.dart';

class SearchController extends GetxController {
  var searchText1 = "".obs;
  var searchText2 = "".obs;
  var isFirstLoading = false.obs;
var isSecondLoading = false.obs;

  RxList<News> firstNewsResults = <News>[].obs ;
  RxList<News> secondNewsResults = <News>[].obs ;

  void search(var newValue, bool isFirstSearch) async{

    NewsService newsService = NewsService() ;

    if (isFirstSearch) {
      isFirstLoading = true.obs;
      searchText1 = RxString(newValue);
      firstNewsResults = RxList<News>(await newsService.fetchNews(searchText1.value)) ;
      isFirstLoading = false.obs;
    } else {
      isSecondLoading = true.obs;
      searchText2 = RxString(newValue);
      secondNewsResults = RxList<News>(await newsService.fetchNews(searchText2.value)) ;
      isSecondLoading = false.obs;

    }
  }
}
