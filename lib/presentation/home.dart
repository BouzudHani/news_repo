import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/controllers/search_controller.dart';
import 'package:test2/presentation/widgets/news_list_view.dart';
import 'package:test2/presentation/widgets/search_text_field.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  TextEditingController searchField1Controller = TextEditingController();
  TextEditingController searchField2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SearchController searchController = Get.put(SearchController());

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Top News"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchTextField(
                controller: searchField1Controller,
                onPressed: () {
                  searchController.search(searchField1Controller.text, true);
                },
              ),
              const SizedBox(
                height: 8,
              ),
              SearchTextField(
                controller: searchField2Controller,
                onPressed: () {
                  searchController.search(searchField2Controller.text, false);
                },
              ),
              NewsListView(news: searchController.firstNewsResults),
              const Divider(),
              NewsListView(news: searchController.secondNewsResults),
            ],
          ),
        ),
      ),
    );
  }
}
