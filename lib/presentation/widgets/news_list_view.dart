import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/news.dart';

class NewsListView extends StatelessWidget {
  RxList<News> news;

  NewsListView({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: news.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Obx(
                () =>
                Column(
                  children: [
                    Text(
                      news[index].title,
                    ),
                    Text(
                      news[index].description,
                    ),
                  ],
                ),
          ),
        );
      },
    )

    ;
  }
}
