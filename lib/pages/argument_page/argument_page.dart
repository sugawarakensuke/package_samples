import 'package:flutter/material.dart';

class ArgumentPage extends StatelessWidget {
  const ArgumentPage({Key? key}) : super(key: key);

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (_) => const ArgumentPage(),
      settings: const RouteSettings(name: 'argument_page'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('argument_page')),
      body: Container(),
    );
  }
}
