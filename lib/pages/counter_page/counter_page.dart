import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_samples/controllers/counter_page_controller.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (_) => const CounterPage(),
      settings: const RouteSettings(name: 'counter_page'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('counter_page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer(
              builder: (context, ref, _) {
                final count = ref.watch(counterProvider);
                return Text(
                  '$count',
                  style: Theme.of(context).textTheme.headline4,
                );
              }
            ),
          ],
        ),
      ),
      floatingActionButton: Consumer(builder: (context, ref, _) {
        final counterNotifier = ref.watch(counterProvider.notifier);
        return FloatingActionButton(
          onPressed: () => counterNotifier.update((state) => state = state + 1),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        );
      }),
    );
  }
}
