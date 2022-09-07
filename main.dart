import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'My First App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hello am Anshika', style:TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Image.network('data:image/jpeg;base64,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'),
          ],
        ),
      ),
    );
  }
}