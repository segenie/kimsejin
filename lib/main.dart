import 'package:flutter/material.dart';
import 'second.dart';
void main() => runApp(MaterialApp(
  title:'Flutter Demo',
  theme:ThemeData(
    primarySwatch:Colors.blue,
),
home:MyApp(),
));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('기분좋은시작'),
            backgroundColor: Color.fromARGB(246,246, 168, 209),
          centerTitle: true,
        ),
        body:Stack(
          children:[
        Container(
        decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/111.jpg'),
          fit: BoxFit.cover
      ),
    ),
        ),
        Positioned(
          top: 385,
          right: 160,
            child: ElevatedButton(
              child: const Text('다음'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>
                second()));

              },
            ),

        ),
          ],)
    ),
    );

  }
}