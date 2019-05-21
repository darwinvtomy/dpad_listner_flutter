import 'package:dpad_listner/home_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(new MaterialApp(
    title: 'Flutter Study',
    home: new TvAppWidget(),
  ));
}

class TvAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    print(
        'TvAppWidget screenSize = $screenSize devicePixelRatio = $devicePixelRatio');
    return new MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Focussing'),
    );
  }
}
