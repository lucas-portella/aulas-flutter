import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Aula 1',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor: Color(0xFF003933),
          title: Text('Perfil', style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.arrow_back, color: Colors.white),
            ),
          ],
        ),
        drawer: Drawer(),
        body: Center() child: Column(children: [
          ],)
        ],))
      ),
    );
  }
}
