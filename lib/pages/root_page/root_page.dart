import 'package:flutter/material.dart';
import 'package:package_samples/pages/argument_page/argument_page.dart';
import 'package:package_samples/pages/cat_api_page/cat_api_page.dart';
import 'package:package_samples/pages/counter_page/counter_page.dart';
import 'package:package_samples/pages/expandable_page/expandable_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('root_page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push<Route<dynamic>>(context, CounterPage.route());
              },
              child: const Text('CounterPage'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push<Route<dynamic>>(context, ArgumentPage.route());
              },
              child: const Text('argumentPage'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push<Route<dynamic>>(context, ExpandablePage.route());
              },
              child: const Text('expandable_page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push<Route<dynamic>>(context, CatApiPage.route());
              },
              child: const Text('cat_api_page'),
            ),
          ],
        ),
      ),
    );
  }
}
