import 'package:flutter/material.dart';
import 'three.dart';

void main() => runApp(const second());

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: Stack(
          children: [
            RadioExample(),
            Positioned(
              top: 385,
              right: 160,
              child: ElevatedButton(
                child: const Text('다음'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => three()),
                  );
                },
              ),
            ),
            Positioned(
              top: 250,
              left: 16,
              right: 16,
              child: TextField(
                decoration: InputDecoration(
                  labelText: '이름',
                  contentPadding: EdgeInsets.symmetric(vertical: 8,
                  ),
                ),
              ),
            )],
        ),
      ),
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

class RadioExample extends StatefulWidget {
  const RadioExample({Key? key}) : super(key: key);

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('남자'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('여자'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}