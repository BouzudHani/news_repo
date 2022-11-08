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
    return news.isEmpty
        ? Container()
        : Obx(
            () => ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: news.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Column(
                    children: [
                      Text(
                        news[index].title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        news[index].description,
                      ),
                    ],
                  ),
                );
              },
            ),
          );
  }
}
