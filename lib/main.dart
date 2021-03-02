import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int itemCount = 10000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: itemCount,
          itemBuilder: (BuildContext context, int index) {
            const colors = [
              Colors.white,
              Colors.orange,
              Colors.teal,
            ];

            return Container(
              width: double.infinity,
              height: 50,
              color: colors[index % colors.length],
              child: Center(
                child: Text("index: $index"),
              ),
            );
          }),
    );
  }
}
