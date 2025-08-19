import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exemplo Container',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Exemplo Container"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: Colors.amber[100],
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(50),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Conteúdo",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 20,
          onPressed: () {
            print("ok");
          },
          child: Icon(Icons.add_circle),
        ),
      ),
    );
  }
}
