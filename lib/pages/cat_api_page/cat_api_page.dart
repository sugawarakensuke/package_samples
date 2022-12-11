import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class CatApiPage extends StatefulWidget {
  const CatApiPage({Key? key}) : super(key: key);

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (_) => const CatApiPage(),
      settings: const RouteSettings(name: 'cat_api_page'),
    );
  }

  @override
  State<CatApiPage> createState() => _CatApiPageState();
}

class _CatApiPageState extends State<CatApiPage> {
  late Future<Response> data;

  @override
  void initState() {
    data = http.get(Uri.parse('https://aws.random.cat/meow'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RANDOM CAT API')),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(height: 40),
            FutureBuilder(
              future: data,
              builder: (context, AsyncSnapshot<Response?> snapshot) {
                if (snapshot.connectionState != ConnectionState.done) {
                  return Container(
                    height: 300,
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(),
                  );
                } else {
                  final response = snapshot.data;
                  final url = jsonDecode(response!.body)['file'];
                  return Container(height: 300, child: Image.network(url));
                }
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  data = http.get(Uri.parse('https://aws.random.cat/meow'));
                });
              },
              child: Text('ミャー'),
            ),
          ],
        ),
      ),
    );
  }
}
