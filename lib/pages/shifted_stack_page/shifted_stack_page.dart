import 'package:flutter/material.dart';

class ShiftedStackPage extends StatelessWidget {
  const ShiftedStackPage({Key? key}) : super(key: key);

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (_) => const ShiftedStackPage(),
      settings: const RouteSettings(name: 'shifted_stack_page'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ずらして重ねる')),
      body: _buildShiftedCoins(),
    );
  }

  Widget _buildShiftedCoins() {
    final items = List.generate(
        3,
        (i) => Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.only(left: 70.0 * i),
              child: Image.asset('assets/coin2.png'),
            ));

    return Stack(children: items.reversed.toList());
  }
}
