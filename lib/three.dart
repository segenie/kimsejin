import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const three());

class three extends StatelessWidget {
  const three({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '기분좋은시작',
      home: const MyHomePage(title: '오늘의운세'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter = Random().nextInt(3) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('기분좋은시작'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color.fromARGB(246, 246, 168, 209),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width, // 화면의 가로 크기
          height: MediaQuery.of(context).size.height, // 화면의 세로 크기
          child: Image.asset(
            'assets1/$_counter.jpg',
            fit: BoxFit.cover, // 이미지를 화면에 맞추기 위해 cover로 설정
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
