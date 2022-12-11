import 'package:flutter/material.dart';
import 'package:package_samples/pages/root_page/widgets/root_end_drawer.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('root_page')),
      endDrawer: RootEndDrawer(),
    );
  }
}
