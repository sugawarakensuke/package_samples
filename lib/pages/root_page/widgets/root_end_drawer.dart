import 'package:flutter/material.dart';
import 'package:package_samples/pages/argument_page/argument_page.dart';
import 'package:package_samples/pages/cat_api_page/cat_api_page.dart';
import 'package:package_samples/pages/counter_page/counter_page.dart';
import 'package:package_samples/pages/expandable_page/expandable_page.dart';

class RootEndDrawer extends StatelessWidget {
  const RootEndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildDrawerHeader(),
          _buildListTile(title: 'カウンター', route: CounterPage.route()),
          _buildListTile(title: '変数サンプル', route: ArgumentPage.route()),
          _buildListTile(title: '折りたたみのUI', route: ExpandablePage.route()),
          _buildListTile(title: 'ランダム猫API', route: CatApiPage.route()),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(child: Text('Flutter Examples'));
  }

  Widget _buildListTile({
    required Route<dynamic> route,
    required String title,
  }) {
    return Builder(builder: (context) {
      return ListTile(
        onTap: () => Navigator.push(context, route),
        title: Text(title),
        leading: Icon(Icons.chevron_right, size: 24),
        iconColor: Colors.black,
        textColor: Colors.black,
        minLeadingWidth: 0,
        horizontalTitleGap: 16,
      );
    });
  }
}
