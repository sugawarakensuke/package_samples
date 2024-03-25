import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ArgumentPage extends HookConsumerWidget {
  const ArgumentPage({Key? key}) : super(key: key);

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (_) => const ArgumentPage(),
      settings: const RouteSettings(name: 'argument_page'),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('argument_page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            unnamedArgumentRequired('あああ');
            unnamedArgumentOptional();
            unnamedArgumentOptional('いいい');
            unnamedArgumentWithInitialValue();
            unnamedArgumentWithInitialValue('ううう');
            //
            namedArgumentRequired(text: 'えええ');
            namedArgumentOptional();
            namedArgumentOptional(text: 'おおお');
            namedArgumentWithInitialValue();
            namedArgumentWithInitialValue(text: 'かかか');
          },
          child: const Text('テスト'),
        ),
      ),
    );
  }

  //名前なし引数（必須）
  void unnamedArgumentRequired(String text) {
    print(text);
  }

  //名前なし引数（オプション）
  void unnamedArgumentOptional([String? text]) {
    print(text);
  }

  //名前なし引数（オプションで初期値あり）
  void unnamedArgumentWithInitialValue([String? text = '初期値']) {
    print(text);
  }

  //名前付き引数（必須）
  void namedArgumentRequired({required String text}) {
    print(text);
  }

  //名前付き引数（オプション）
  void namedArgumentOptional({String? text}) {
    print(text);
  }

  //名前付き引数（オプション。初期値も指定できる）
  void namedArgumentWithInitialValue({String? text = '初期値'}) {
    print(text);
  }

  void sampleMethod(
    String? text1, {
    required String text2,
    String? text3,
  }) {
    //何らかの処理
  }
}
