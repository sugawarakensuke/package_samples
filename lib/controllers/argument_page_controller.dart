import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

part 'argument_page_controller.freezed.dart';

@freezed
class ArgumentPageState with _$ArgumentPageState {
  const factory ArgumentPageState() = _ArgumentPageState;
}

final argumentPageProvider = StateNotifierProvider.autoDispose<
    ArgumentPageController, ArgumentPageState>((ref) {
  return ArgumentPageController();
});

class ArgumentPageController
    extends StateNotifier<ArgumentPageState> {
  ArgumentPageController() : super(const ArgumentPageState()) {
    _init();
  }

  Future<void> _init() async {}

  void aaa (String text) {
    print('$text');
  }

  void bbb ({String? text}) {
    print(text);
  }
}