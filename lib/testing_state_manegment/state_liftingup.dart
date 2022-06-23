import 'package:flutter/material.dart';
main(){
  runApp(MyTestApp());
}
class MyTestApp extends StatelessWidget {
  final String data='top secret data';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(data),
        ),
        body: Level1(data),
      ),
    );
  }
}
class Level1 extends StatelessWidget {
  final String data;
  Level1(this.data);
 @override
  Widget build(BuildContext context) {
    return Container(
      child: Level2(data),
    );
  }
}
class Level2 extends StatelessWidget {
  final String data;
  Level2(this.data);
 @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(),
          Level3(data)
        ],
      ),
    );
  }
}

class Level3 extends StatelessWidget {
  final String data;
  Level3(this.data);
  @override
  Widget build(BuildContext context) {
    return Text(data);
  }
}


