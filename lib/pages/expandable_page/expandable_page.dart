import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ExpandablePage extends StatelessWidget {
  const ExpandablePage({Key? key}) : super(key: key);

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (_) => const ExpandablePage(),
      settings: const RouteSettings(name: 'expandable_page'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: const Text('expandable_page')),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: ExpandablePanel(
                  header: const Text('あおげば尊し'),
                  collapsed: const Text('あおげば 尊し わが師の恩 ...'),
                  expanded: const Text(aogebatoutosi),
                ),
              ),
              Card(
                child: ExpandablePanel(
                  header: const Text('げんこつ山のたぬきさん'),
                  collapsed: const Text('げんこつ山のたぬきさん ...'),
                  expanded: const Text(genkotuyamanotanukisann),
                ),
              ),
              Card(
                child: ExpandablePanel(
                  header: const Text('ふるさと'),
                  collapsed: const Text('兎追いしかの山 ...'),
                  expanded: const Text(hurusato),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const aogebatoutosi = '''
あおげば 尊し わが師の恩
教えの庭にも はや幾年
思えば いと疾し この年月
今こそ 別れめ いざさらば

互いにむつみし 日頃の恩
別るる後にも やよ忘るな
身を立て 名をあげ やよ励めよ
今こそ 別れめ いざさらば

朝夕 馴にし まなびの窓
螢のともし火 積む白雪
忘るる 間ぞなき ゆく年月
今こそ 別れめ いざさらば
''';

const genkotuyamanotanukisann = '''
げんこつやまの たぬきさん
おっぱいのんで ねんねして
だっこして おんぶして またあした
''';

const hurusato = '''
兎追いしかの山
小鮒釣りしかの川
夢は今もめぐりて
忘れがたき故郷

如何にいます 父母
恙なしや 友がき
雨に風につけても
思いいずる故郷

こころざしをはたして
いつの日にか帰らん
山はあおき故郷
水は清き故郷
''';
